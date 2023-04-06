from robot.libraries.BuiltIn import BuiltIn
import time
from selenium import webdriver
import calendar
from datetime import datetime, time, date
from datetime import datetime
from datetime import date
from time import sleep
import os
import time
import xlrd
import traceback
from pywinauto import Desktop, Application
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common import keys
from selenium.webdriver.common.keys import Keys
from pywinauto.keyboard import send_keys
                
class CustomLibrary(object):

        def __init__(self):
                pass
        
        @property
        def _sel_lib(self):
            return BuiltIn().get_library_instance('SeleniumLibrary')

        @property
        def _driver(self):
            return self._sel_lib.driver

#**************************************************************************
#Desciption : 
#This function is used to attache the cefsharp application - Desktop app embidded in chromium Browser
#Author: Shyam
#Date: 16th June 2020
    
        def attach_cef_client(self,cef_client_path,debugger_address):
            try:
                options = webdriver.ChromeOptions()
                options.binary_location = cef_client_path
                options.add_argument("--no-first-run")
                options.add_argument("--dns-prefetch-disable")
                options.add_argument("--no-sandbox")
                options.add_argument("--single-process")
                options.add_experimental_option("debuggerAddress",debugger_address)
                self._sel_lib.create_webdriver('Chrome',chrome_options=options)
                self.wait_until_time(5)
                return True
            except Exception as e:
                print (e)
                return False


#**************************************************************************
#Desciption : 
#This function is used to click on any control using xpath
#Author: Shyam
#Date: 17th June 2020
        
        def javascript_click_by_xpath(self,xpath):
            element = self._driver.find_element_by_xpath(xpath) 
            self._driver.execute_script("arguments[0].click();", element)          

#**************************************************************************
#Desciption : 
#This function is used to Drag and Drop from one location to other
#Author: Hyma
#Date: 22th June 2020
            
        def drag_and_drop_by_xpath(self, locator, target):
            element = self._driver.find_element_by_xpath(locator)
            target = self._driver.find_element_by_xpath(target)
            xto = target.location['x']
            yto = target.location['y']
            self._driver.execute_script("function simulate(f,c,d,e){var b,a=null;for(b in eventMatchers)if(eventMatchers[b].test(c)){a=b;break}if(!a)return!1;document.createEvent?(b=document.createEvent(a),a==\"HTMLEvents\"?b.initEvent(c,!0,!0):b.initMouseEvent(c,!0,!0,document.defaultView,0,d,e,d,e,!1,!1,!1,!1,0,null),f.dispatchEvent(b)):(a=document.createEventObject(),a.detail=0,a.screenX=d,a.screenY=e,a.clientX=d,a.clientY=e,a.ctrlKey=!1,a.altKey=!1,a.shiftKey=!1,a.metaKey=!1,a.button=1,f.fireEvent(\"on\"+c,a));return!0} var eventMatchers={HTMLEvents:/^(?:load|unload|abort|error|select|change|submit|reset|focus|blur|resize|scroll)$/,MouseEvents:/^(?:click|dblclick|mouse(?:down|up|over|move|out))$/}; simulate(arguments[0],\"mousedown\",0,0); simulate(arguments[0],\"mousemove\",arguments[1],arguments[2]); simulate(arguments[0],\"mouseup\",arguments[1],arguments[2]); ",element,xto,yto)

#**************************************************************************
#Desciption : 
#This function is used to Sleep control 
#Author: Hyma
#Date: 22th June 2020
            
        def wait_until_time(self,arg):
                time.sleep(int(arg))



#**************************************************************************
#Desciption : 
#This function is used to Kill SW App
#Author: Hyma
#Date: 23th June 2020
                
        def kill_application(self):
            try:
                    #CefSharp.BrowserSubprocess
                os.system("taskkill /f /im PlatformServer.exe")
                os.system("taskkill /f /im scanworks.ui.exe")
                os.system("taskkill /f /im sw.ui.client.exe")
                os.system("taskkill /f /im chromedriver.exe")
                os.system("taskkill /f /im RuntimeBroker.exe")
                self.wait_until_time(5)
            except Exception as e:
                print (e)

        def kill_ric_application(self):
            try:
                os.system("taskkill /f /im RicProgressApp.exe")
                self.wait_until_time(5)
            except Exception as e:
                print (e)

#**************************************************************************
#Desciption : 
#This function is used to read test data from excel and story in the MAP in the form of key value pair
#Author: Hyma
#Date: 24th June 2020
                
        def get_ms_excel_row_values_into_dictionary_based_on_key(self,filepath,keyName,sheetName=None):
            """Returns the dictionary of values given row in the MS Excel file """
            workbook = xlrd.open_workbook(filepath)
            snames=workbook.sheet_names()
            dictVar={}
            if sheetName==None:
                sheetName=snames[0]      
            if self.validate_the_sheet_in_ms_excel_file(filepath,sheetName)==False:
                return dictVar
            worksheet=workbook.sheet_by_name(sheetName)
            noofrows=worksheet.nrows
            dictVar={}
            headersList=worksheet.row_values(int(0))
            for rowNo in range(1,int(noofrows)):
                rowValues=worksheet.row_values(int(rowNo))
                if str(rowValues[0])!=str(keyName):
                    continue
                for rowIndex in range(0,len(rowValues)):
                    cell_data=rowValues[rowIndex]
                    if(str(cell_data)=="" or str(cell_data)==None):
                        continue                    
                    cell_data=self.get_unique_test_data(cell_data)
                
                    dictVar[str(headersList[rowIndex])]=str(cell_data)
            return dictVar

#**************************************************************************
#Desciption : 
#This function is used to read test data from excel and story in the MAP in the form of key value pair
#Author: Hyma
#Date: 24th June 2020

        def get_all_ms_excel_row_values_into_dictionary(self,filepath,sheetName=None):
           """Returns the dictionary of values all row in the MS Excel file """
           workbook = xlrd.open_workbook(filepath)
           snames=workbook.sheet_names()
           all_row_dict={}
           if sheetName==None:
               sheetName=snames[0]      
           if self.validate_the_sheet_in_ms_excel_file(filepath,sheetName)==False:
               return all_row_dict
           worksheet=workbook.sheet_by_name(sheetName)
           noofrows=worksheet.nrows
           headersList=worksheet.row_values(int(0))
           for rowNo in range(1,int(noofrows)):
               each_row_dict={}
               rowValues=worksheet.row_values(int(rowNo))
               for rowIndex in range(0,len(rowValues)):
                   cell_data=rowValues[rowIndex]
                   if(str(cell_data)=="" or str(cell_data)==None):
                       continue
                   cell_data=self.get_unique_test_data(cell_data)
                   each_row_dict[str(headersList[rowIndex])]=str(cell_data)
               all_row_dict[str(rowValues[0])]=each_row_dict
           return all_row_dict
        
#**************************************************************************
#Desciption : 
#This function is used to read test data from excel and story in the MAP in the form of key value pair
#Author: Shyam
#Date: 07th July 2020
            
        def get_all_ms_excel_matching_row_values_into_dictionary_based_on_key(self,filepath,keyName,sheetName=None):
            """Returns the dictionary of matching row values from the MS Excel file based on key"""
            workbook = xlrd.open_workbook(filepath)
            snames=workbook.sheet_names()
            all_row_dict={}
            if sheetName==None:
                sheetName=snames[0]      
            if self.validate_the_sheet_in_ms_excel_file(filepath,sheetName)==False:
                return all_row_dict
            worksheet=workbook.sheet_by_name(sheetName)
            noofrows=worksheet.nrows
            headersList=worksheet.row_values(int(0))
            indexValue=1
            for rowNo in range(1,int(noofrows)):
                rowValues=worksheet.row_values(int(rowNo))
                if str(rowValues[0])!=str(keyName):
                    continue
                each_row_dict={}
                for rowIndex in range(0,len(rowValues)):
                    cell_data=rowValues[rowIndex]
                    if(str(cell_data)=="" or str(cell_data)==None):
                        continue
                    cell_data=self.get_unique_test_data(cell_data)
                    each_row_dict[str(headersList[rowIndex])]=str(cell_data)
                all_row_dict[str(indexValue)]=each_row_dict
                indexValue+=1
            return all_row_dict
        
#**************************************************************************
#Desciption : 
#This function is used to write test data from excel and story in the MAP in the form of key value pair
#Author: Hyma
#Date: 08th July 2020
            
            
        def write_data_in_ms_excel_matching_row(self,filepath,row_number,value,sheetName=None):
          """write the details in excel """
          workbook = xlrd.open_workbook(filepath)
          snames=workbook.sheet_names()
          try:
           if sheetName==None:
               sheetName=snames[0]      
           if self.validate_the_sheet_in_ms_excel_file(filepath,sheetName)==False:
               return all_row_dict
           worksheet=workbook.sheet_by_name(sheetName)
           worksheet.write(row_number,6,value)
           workbook.save(filepath)
           return True
          except:
              return False
              
#**************************************************************************
#Desciption : 
#This function is used to Validae sheet name in the excel workbook and returen the data
#Author: Hyma
#Date: 08th July 2020
        
        def validate_the_sheet_in_ms_excel_file(self,filepath,sheetName):
            """Returns the True if the specified work sheets exist in the specifed MS Excel file else False"""
            workbook = xlrd.open_workbook(filepath)
            snames=workbook.sheet_names()
            sStatus=False        
            if sheetName==None:
                return True
            else:
                for sname in snames:
                    if sname.lower()==sheetName.lower():
                        wsname=sname
                        sStatus=True
                        break
                if sStatus==False:
                    print ("Error: The specified sheet: "+str(sheetName)+" doesn't exist in the specified file: " +str(filepath))
            return sStatus

#**************************************************************************
#Desciption : 
#This function is used to get UNIQUE Test data - it appends 6 ramdom digits to any string
#Author: Shya
#Date: 09th July 2020
        def get_unique_test_data(self,testdata):
            """Returns the unique if data contains unique word """
            faker = BuiltIn().get_library_instance('FakerLibrary')
            unique_string=faker.random_number(6,True)
            unique_string=str(unique_string)
            if "UNIQUE" in testdata:
                    testdata=testdata.replace("UNIQUE",unique_string)
            elif "Unique" in testdata:
                    testdata=testdata.replace("Unique",unique_string)
            elif "unique" in testdata: 
                    testdata=testdata.replace("unique",unique_string)
            else:
                testdata=testdata
            return testdata

#**************************************************************************
#Desciption : 
#This function is used to to read SW nod file
#Author: Hyma
#Date: 08th July 2020
        
        def read_nod_file(self,filepath) :
                file_name = open(filepath, 'r')
                flag = False
                file_data_dic = {}
                for line in file_name:
                    if not line.isspace():
                        if "PART" in line and flag == False:
                                flag = True
                                continue
                        if "CONNECTIONS" in line:
                                break
                        if flag == True :
                                key = line[:4].strip()
                                value = line[41:].strip()
                                file_data_dic[key] = value
                return file_data_dic

#**************************************************************************
#Desciption : 
#This function is used to select all he projects of SW from UI - select all check boxes
#Author: Hyma
#Date: 02th July 2020

        def select_all_projects(self,xpath,key_type):
          actions = ActionChains(self._driver)
          self._driver.implicitly_wait(10)
          element = self._driver.find_element_by_xpath(xpath)
          if key_type == "SHIFT":
             actions.key_down(keys.Keys.SHIFT)
             actions.click(element)
             actions.key_up(keys.Keys.SHIFT)
             actions.perform()
          if key_type == "CONTROL":
             actions.key_down(keys.Keys.CONTROL)
             actions.click(element)
             actions.key_up(keys.Keys.CONTROL)
             actions.perform()   


#**************************************************************************
#Desciption : 
#This function is used to Sort the Designs in ascending order
#Author: Hyma
#Date: 12th July 2020
             
        def sortingDesignsInAscending(self,design_list):
            try:
                design_list.sort()
                return design_list
            except:
                raise Exception("Exception occured while sorting designs list in Ascending order")

#**************************************************************************
#Desciption : 
#This function is used to Sort the Designs in discending order
#Author: Hyma
#Date: 12th July 2020
        
        def sortingDesignsInDescending(self,design_list):
            try:
                design_list.sort(reverse=True)
                return design_list
            except:
                raise Exception("Exception occured while sorting designs in descending order")
        
#**************************************************************************
#Desciption : 
#This function is used to count the folders
#Author: Hyma
#Date: 12th July 2020
        
        def get_folder_count(self,path):
            try:
                my_list = os.listdir(path)
                return len(my_list)
            except:
                raise Exception("Exception occured in directory path")

#**************************************************************************
#Desciption : 
#This function is used to kill Notepad ++ App
#Author:Shyam
#Date: 08th Aug 2020
        
        def kill_app(self):
            try:
                os.system("taskkill /f /im notepad++.exe")
                self.wait_until_time(5)
            except Exception as e:
                print (e)


#**************************************************************************
#Desciption : 
#This function is used to Click uparrow 
#Author:Shyam
#Date: 09th Aug 2020
                
        def clickUpArrow(self,xpath,key_type):
          actions = ActionChains(self._driver)
          self._driver.implicitly_wait(10)
          element = self._driver.find_element_by_xpath(xpath)
          if key_type == "UP":
                  element.send_keys(Keys.ARROW_UP)
          if key_type == "Down":
                  element.send_keys(Keys.ARROW_DOWN)

#**************************************************************************
#Desciption : 
#This function is used to press key using Pywinauto
#Author:Shyam
#Date: 10th Sep 2020
                  
        def press_keyboard_key_by_pywinauto(self, key_name):
            send_keys(key_name)
                

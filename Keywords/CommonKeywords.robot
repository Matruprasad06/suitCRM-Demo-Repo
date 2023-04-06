*** Settings ***
Resource          ../Global/Super.robot

*** Keywords ***
Launch The App
    [Arguments]    ${url}    ${browser_name}
    Run Keyword If    '${browser_name}'=='Chrome' or '${browser_name}'=='chrome' or '${browser_name}'=='gc'    SeleniumLibrary.Open Browser    ${url}    Chrome
    Run Keyword If    '${browser_name}'=='Firefox' or '${browser_name}'=='firefox' or '${browser_name}'=='ff'    SeleniumLibrary.Open Browser    ${url}    Firefox
    Maximize Browser Window

Dynamic Variable
    [Arguments]    ${locator}    ${value}
    ${xpath}    ReplaceString    ${locator}    replaceText    ${value}
    [Return]    ${xpath}

NavigateMenu
    [Arguments]    ${menu}
    ${homepage.leave.new}    Dynamic Variable    ${homepage.leave}    ${menu}
    SeleniumLibrary.Wait Until Element Is Visible    ${homepage.leave.new}    ${LONGWAITS}    ${menu} Not visible after waiting ${LONGWAITS}
    SeleniumLibrary.Click Element    ${homepage.leave.new}

ReadTestdataFromExcel
    [Arguments]    ${testcasesid}    ${sheetname}
    ${testdata}    CustomLibrary.Get Ms Excel Row Values Into Dictionary Based On Key    ${TESTDATA_FOLDER}\\OrangeHRM.xls    ${testcasesid}    ${sheetname}
    Set Global Variable    ${testdata}

Login to App
    [Arguments]    ${username}    ${password}
    Launch The App    ${URL}    Chrome
    Wait Until Element Is Visible    ${Elements.ohrms.loginpanel}    ${MEDIUMWAITS}
    SeleniumLibrary.Input Text    ${Textfields.ohrm.loginpage.username}    ${username}
    SeleniumLibrary.Input Text    ${Textfields.ohrm.loginpage.password}    ${password}
    SeleniumLibrary.Click Element    ${Buttons.ohrm.loginbutton}
    Comment    Page Should Contain    Invalid credentials

name and password
    Wait Until Element Is Visible    ${Elements.ohrms.loginpanel}    ${MEDIUMWAITS}
    Comment
    Javascript Click By Xpath    ${Textfields.ohrm.loginpage.username}
    SeleniumLibrary.Input Text    ${Textfields.ohrm.loginpage.username}    Admin
    Javascript Click By Xpath    ${Textfields.ohrm.loginpage.password}
    SeleniumLibrary.Input Password    ${Textfields.ohrm.loginpage.password}    admin123
    SeleniumLibrary.Click Element    ${Buttons.ohrm.loginbutton}

Verifying Error messages
    Page Should Contain    Invalid credentials

Invalid Data
    Launch The App    ${URL}    Chrome
    SeleniumLibrary.Input Text    ${Textfields.ohrm.loginpage.username}    admin
    SeleniumLibrary.Input Text    ${Textfields.ohrm.loginpage.password}    Admin123
    SeleniumLibrary.Click Element    ${Buttons.ohrm.loginbutton}
    Verifying Error messages

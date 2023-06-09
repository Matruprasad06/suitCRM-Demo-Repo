*** Settings ***
Library           SeleniumLibrary
Library           ExcelLibrary
Library           Collections
Library           DateTime
Library           Screenshot
Library           OperatingSystem
Library           String
Library           Dialogs
Library           ../Library/CustomLibrary.py
Resource          Common.robot
Library           AutoItLibrary
Library           FakerLibrary
Resource          ../ObjectReposistory/UI/Buttons.robot
Resource          ../ObjectReposistory/UI/Checkbox.robot
Resource          ../ObjectReposistory/UI/Elements.robot
Resource          ../ObjectReposistory/UI/Dropdowns.robot
Resource          ../ObjectReposistory/UI/Textfields.robot
Resource          ../Keywords/CommonKeywords.robot
Resource          ../Keywords/LeaveKeyword.robot
Resource          ../Keywords/LeaveKeyword.robot
Resource          ../Keywords/PerformaceKeyword.robot
Resource          ../Keywords/DependencytestKeyword.robot

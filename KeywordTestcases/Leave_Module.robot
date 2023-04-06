*** Settings ***
Resource          ../Global/Super.robot
Library           DependencyLibrary

*** Test Cases ***
TC_01Verify is user is able to open leave module
    [Setup]    ReadTestdataFromExcel    TC_002    Orangehrm
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on Leavemodule
    [Teardown]    Close Browser

TC_02Verify is user able to view submodules of "entitlement"
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Entitlement
    [Teardown]    Close Browser

TC_03Verify is user able to open add entitlement page
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Entitlement
    Click on Addentitlement

TC_04Verify user is able to access Entitlement and able to access Employee Entitlement
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Entitlement
    Click on EmployeeEntitlements

TC_05Verify user is able to access MyEntitlements sub module present under Entitlement Module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Entitlement
    Click on MyEntitlements
    [Teardown]

TC_06Verify user is able to access Apply module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on LeaveApply

TC_07Verify user is able to access Myleave module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Myleave

TC_08Vrify user is able to access Leavelist module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on LeaveList

TC_09Verify user is able to access AssignLeave
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    NAVIGATE Left
    Click on AssignLeave

TC_10Veify user is able to access Reports
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Reports

TC_11Verify user is able to apply for leave
    [Setup]    ReadTestdataFromExcel    TC_134    Leave
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on Leavemodule
    Click on LeaveApply
    Apply Leave    ${testdata}[fromdate]    ${testdata}[todate]

TC_12Verify user is able to access Leave Entitlements and Usage Report
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Reports
    Leave Entitlementd and Usage Report

TC_13Verify user is able to access My Leave Entitlements and Usage Reports under Reports Module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Reports
    My Leave Entitlement and Usage Report

TC_14Verify user is able to access Configure Module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure

TC_15Verify user is able to access Leave Period under Configure Module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Leave Period

TC_16Verify user is able to access Leave Types under the Configure Module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Leave Types

TC_17Verify user is able to access Work week Present under the Configre Module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Work Week

TC_18Verify user is able to access Holidays Present under Configure Module
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Holidays

TC_19Verify user is able to generates Leave and Usage Report
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Reports
    My Leave Entitlement and Usage Report
    Generate Button

TC_20Verify user is able to generates My Leave Entitlements and Usage Report
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Reports
    My Leave Entitlement and Usage Report
    Generate MyLeave Entitlements

TC_21Verify user is able to save Leave Period by Entering details.
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Leave Period
    Save Leave Period

TC_22Verify user is able to access add button in Leave types submodule
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Leave Types
    ADD LeaveType

TC_23Verify user is able to Add data in Leave type submodule
    [Setup]    ReadTestdataFromExcel    TC_121    Leave
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on Leavemodule
    Configure
    Leave Types
    ADD LeaveType
    Add Data LeaveType    ${testdata}[Name]

TC_24Verify usr is able to delete Leavetype
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Leave Types
    Delete LeaveType

TC_25Verify user is able to save WorkWeek
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Work Week
    SAVE WorkWeek
    [Teardown]    Close Browser

TC_26Verifyuser isable toAdd Holiday
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Holidays
    SAVE Holiday

TC_27Verify user is able to Search Holiday
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Holidays
    SEARCH Holiday

TC_28Verify user is able to Search for Leavelist
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Comment    Click on LeaveList
    SEARCH LeaveList

TC_29Verify user is able to ApproveLeave
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    APPROVE Leavelist

TC_30Verify user is able to select date from dropdown
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    DATE LeaveList

TC_31Verify user is able to access Employee Entitlements
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Entitlement
    EMPLOYEE Entitlements

TC_32Verify user is able to Search Leave Entitlement
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Click on Entitlement
    EMPLOYEE Entitlements
    SEARCH Leave Entitlements

TC_33Verify user is able to add Leave Entitlement
    [Setup]    ReadTestdataFromExcel    TC_064    Leave
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on Leavemodule
    Click on Entitlement
    Click on Addentitlement
    ADD Leave Entitlements

TC_34Verify user is able to navigate menu from left to right
    [Setup]    ReadTestdataFromExcel    TC_064    Leave
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on Leavemodule
    NAVIGATE Left

TC_35Verify user is able to navigate back
    [Setup]    ReadTestdataFromExcel    TC_064    Leave
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on Leavemodule
    NAVIGATE Left
    sleep    3s
    NAVIGATE Right

TC_36Verify wheather Hide button is working
    [Setup]    ReadTestdataFromExcel    TC_064    Leave
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on Leavemodule
    Configure
    Holidays
    HIDE Button

TC_37Verify user is able to acceess Reset in LeavePeriod
    [Setup]    ReadTestdataFromExcel    TC_064    Leave
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on Leavemodule
    Configure
    Leave Period
    RESET LeavePeriod

TC_38Verify user is able to access cancel in Leavetype
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password
    Click on Leavemodule
    Configure
    Leave Types
    ADD LeaveType
    CANCEL LeaveType

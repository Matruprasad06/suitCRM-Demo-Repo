*** Settings ***
Resource          ../Global/Super.robot

*** Keywords ***
Click on Leavemodule
    Comment    Wait Until Element Is Visible    ${Elements.ohrms.viewlist}    ${MEDIUMWAITS}
    SeleniumLibrary.Click Element    ${Elements.ohrms.Leavemodule}

Click on Entitlement
    Javascript Click By Xpath    ${Elements.ohrms.leave-Entitlement}

Click on Addentitlement
    Javascript Click By Xpath    ${dropdowns.ohrms.leave.Entitlementlist}

Click on EmployeeEntitlements
    Javascript Click By Xpath    ${dropdowns.ohrms.leave.entitlements.EmployeeEntitlements}

Click on MyEntitlements
    Javascript Click By Xpath    ${dropdowns.ohrms.leave.entitlements.MyEntitlements}

Click on LeaveApply
    Javascript Click By Xpath    ${Elements.ohrms.leave-Apply}

Click on Myleave
    Javascript Click By Xpath    ${Elements.ohrms.leave.Myleave}

Click on LeaveList
    Javascript Click By Xpath    //span[.='More ']
    Javascript Click By Xpath    ${Elements.ohrms.leave.Leavelist}

Click on AssignLeave
    Comment    SeleniumLibrary.Click Element    //i[@class="oxd-icon bi-three-dots-vertical"]
    Comment    SeleniumLibrary.Click Element    //*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[6]/span
    Comment    Comment    Comment    Comment    SeleniumLibrary.Click Element    //a[text()='Assign Leave ']
    sleep    3s
    Javascript Click By Xpath    //a[.='Assign Leave ']

Click on Reports
    Comment    Javascript Click By Xpath    //button[@type="button"]
    Javascript Click By Xpath    ${Elements.ohrms.leave.Reports}

Apply Leave
    [Arguments]    ${fromdate}    ${todate}
    Javascript Click By Xpath    //i[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"]
    Comment    sleep    2
    Comment    Click Element    //div[.='CAN - Bereavement']    0
    Click Element    //div[@class="oxd-select-wrapper"]
    SeleniumLibrary.Click Element    ${dropdowns.ohrms.applileave.calender}
    Input Text    ${dropdowns.ohrms.applyleave.fromdate}    ${fromdate}
    Comment    Click Element    ${dropdowns.ohrms.applyleave.calendericon}
    Comment    SeleniumLibrary.Click Element    //i[@class="oxd-icon bi-calendar oxd-date-input-icon"]
    Input Text    ${dropdowns.ohrms.applyleave.todate}    ${todate}
    Select From List By Index    ${dropdowns.ohrms.applyleave.Partialday}    1
    Select From List By Index    ${dropdowns.ohrms.applyleave.Duration}    1
    Click Element    ${Buttons.ohrms.applyleave.Apply}

Leave Entitlementd and Usage Report
    Javascript Click By Xpath    ${dropdowns.ohrms.reports.Leaveentitlementsusagereports}

My Leave Entitlement and Usage Report
    Javascript Click By Xpath    ${dropdowns.ohrms.reports.Myleaveentitlementsusagereport}

Configure
    Javascript Click By Xpath    ${Elements.ohrms.Configure}

Leave Period
    Javascript Click By Xpath    ${dropdowns.ohrms.configure.LeavePeriod}

Leave Types
    Javascript Click By Xpath    ${dropdowns.ohrms.configure.LeaveTypes}

Work Week
    Javascript Click By Xpath    ${dropdowns.ohrms.configure.WorkWeek}

Holidays
    Javascript Click By Xpath    ${dropdowns.ohrms.configure.Holidays}

Generate Button
    Javascript Click By Xpath    ${Elements.ohrms.applyleave.Generate}

Generate MyLeave Entitlements
    Javascript Click By Xpath    ${dropdowns.ohrms.leaveperiodicon}
    Comment    Select From List By Index    ${dropdowns.ohrms.leaveperiod}    1
    Javascript Click By Xpath    ${Buttons.ohrms.leaveperiod.generate}

Save Leave Period
    Comment    Javascript Click By Xpath    ${dropdowns.ohrms.configure.leaveperiod.statmonthicon}
    Comment    Select From List By label    ${dropdowns.ohrms.configure.leaveperiod.selectmonth}    February
    Comment    Javascript Click By Xpath    ${dropdowns.ohrms.configure.leaveperiod.startdateicon}
    Comment    Select From List By Index    ${dropdowns.ohrms.configure.leaveperiod.selectdata}    02
    Javascript Click By Xpath    ${Buttons.ohrms.leaveperiod.save}

ADD LeaveType
    Javascript Click By Xpath    ${Buttons.ohrms.leavetype.Add}

Add Data LeaveType
    [Arguments]    ${Name}
    Javascript Click By Xpath    ${Textfields.ohrm.leavetype.Name}
    SeleniumLibrary.Input Text    //input[@class="oxd-input oxd-input--active"]    ${Name}
    Javascript Click By Xpath    ${Buttons.ohrms.leavetype.Save}

Delete LeaveType
    Comment    Javascript Click By Xpath    //div[@class="data"]
    Select Checkbox    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div[3]/div/div/div[3]/div/div/div/div[1]/div/div/div[2]
    Javascript Click By Xpath    ${Buttons.ohrms.leavetype.Delete}
    Javascript Click By Xpath    ${Buttons.ohrms.leavetype.Delete.Popup}

SAVE WorkWeek
    Wait Until Element Is Visible    //div[@class="orangehrm-card-container"]    ${MEDIUMWAITS}
    SeleniumLibrary.Click Element    ${Buttons.ohrms.configure.workweek.Save}

SAVE Holiday
    SeleniumLibrary.Click Element    ${Buttons.ohrms.holiday.Add}
    Wait Until Element Is Visible    //div[@class="orangehrm-card-container"]    ${MEDIUMWAITS}
    Comment    Javascript Click By Xpath    //div[@class="oxd-input-group__label-wrapper"]
    Comment    sleep    3s
    Javascript Click By Xpath    ${Textfields.ohrms.addholiday.Name}
    Input Text    ${Textfields.ohrms.addholiday.Name}    Independence day(India)
    Input Text    ${Textfield.ohrms.addholiday.Date}    2022-08-15
    SeleniumLibrary.Click Element    ${Buttons.ohrms.addholiday.Save}

SEARCH Holiday
    SeleniumLibrary.Click Element    ${Buttons.ohrms.addholiday.Save}

SEARCH LeaveList
    Wait Until Element Is Visible    //div[@class="oxd-layout-context"]    ${MEDIUMWAITS}
    Javascript Click By Xpath    ${Buttons.ohrms.leavelist.Search}

APPROVE Leavelist
    Wait Until Element Is Visible    //div[@class="orangehrm-container"]
    Javascript Click By Xpath    //span[@class="oxd-text oxd-text--span"]
    Javascript Click By Xpath    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/div/div[4]/div/div/div[2]/div/div/button[1]

DATE LeaveList
    Select Checkbox    //div[.='Date']

EMPLOYEE Entitlements
    Javascript Click By Xpath    ${dropdowns.ohrms.entitlements.Employeeentitlement}

SEARCH Leave Entitlements
    SeleniumLibrary.Click Element    ${Textfield.ohrms.entitlement.Employeename}
    SeleniumLibrary.Input Text    ${Textfield.ohrms.entitlement.Employeename}    Peter Mac Anderson
    sleep    3s
    Javascript Click By Xpath    ${Buttons.ohrms.entitlements.Search}

ADD Leave Entitlements
    SeleniumLibrary.Click Element    ${Textfield.ohrms.entitlement.addentitlement.Employeename}
    SeleniumLibrary.Input Text    ${Textfield.ohrms.entitlement.addentitlement.Employeename}    Peter Mac Anderson
    Javascript Click By Xpath    ${dropdowns.ohrms.leave.addleaveentitlement.leavetype}
    Select From List By Index    ${dropdowns.ohrms.leave.addleaveentitlement.leavetype}    0
    Javascript Click By Xpath    ${dropdowns.ohrms.leave.entitlement.addentitlement.Entitlementfieldname}
    SeleniumLibrary.Input Text    ${dropdowns.ohrms.leave.entitlement.addentitlement.Entitlementfieldname}    2.0
    Javascript Click By Xpath    ${Buttons.ohrms.addentitlement.Save}

NAVIGATE Leave
    Javascript Click By Xpath    ${Buttons.navigate}
    sleep    5s
    Javascript Click By Xpath    ${Buttons.navigate.Right}

NAVIGATE Left
    Javascript Click By Xpath    ${Buttons.navigate}

NAVIGATE Right
    Javascript Click By Xpath    ${Buttons.navigate.Right}

HIDE Button
    Javascript Click By Xpath    //button[@class="oxd-icon-button"]

RESET LeavePeriod
    Javascript Click By Xpath    ${Buttons.ohrms.leaveperiod.reset}

CANCEL LeaveType
    Javascript Click By Xpath    ${Buttons.ohrms.leavetype.Cancel}

DOTS Leave
    Javascript Click By Xpath    ${Elements.ohrms.leave.Dots}

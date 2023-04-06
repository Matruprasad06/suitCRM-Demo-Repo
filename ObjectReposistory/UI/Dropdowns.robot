*** Settings ***
Resource          ../../Global/Super.robot

*** Variables ***
${dropdowns.ohrms.leave.Entitlementlist}    //a[.='Add Entitlements']
${dropdowns.ohrms.leave.entitlements.EmployeeEntitlements}    //a[.='Employee Entitlements']
${dropdowns.ohrms.leave.entitlements.MyEntitlements}    //a[.='My Entitlements']
${dropdowns.ohrms.applyleave.Leavetypefield}    //div[@class="oxd-select-text-input"]
${dropdowns.ohrms.applyleave.fromdate}    //input[@placeholder="yyyy-mm-dd"]
${dropdowns.ohrms.applyleave.todate}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/div/div/input
${dropdowns.ohrms.applyleave.Partialday}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[1]/div/div[2]/div/div/div[1]
${dropdowns.ohrms.applyleave.Duration}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[2]/div/div[2]/div/div/div[1]
${dropdowns.ohrms.reports.Leaveentitlementsusagereports}    //a[.='Leave Entitlements and Usage Report']
${dropdowns.ohrms.reports.Myleaveentitlementsusagereport}    //a[.='My Leave Entitlements and Usage Report']
${dropdowns.ohrms.configure.LeavePeriod}    //a[.='Leave Period']
${dropdowns.ohrms.configure.LeaveTypes}    //a[.='Leave Types']
${dropdowns.ohrms.configure.WorkWeek}    //a[.='Work Week']
${dropdowns.ohrms.configure.Holidays}    //a[.='Holidays']
${dropdowns.ohrms.applileave.calender}    //i[@class="oxd-icon bi-calendar oxd-date-input-icon"][1]
${dropdowns.ohrms.applyleave.calendericon}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/div/div/i
${dropdowns.ohrms.leaveperiod}    //div[@class="oxd-select-text-input"]
${dropdowns.ohrms.leaveperiodicon}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div/div/div[2]/div/div/div[2]/i
${dropdowns.ohrms.configure.leaveperiod.statmonthicon}    //i[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"]
${dropdowns.ohrms.configure.leaveperiod.startdateicon}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/div[2]/i
${dropdowns.ohrms.configure.leaveperiod.selectmonth}    //div[@tabindex="0"]
${dropdowns.ohrms.configure.leaveperiod.selectdata}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/div[1]
${dropdowns.ohrms.entitlements.Employeeentitlement}    //a[.='Employee Entitlements']
${dropdowns.ohrms.leave.addleaveentitlement.leavetype}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[1]/div/div[2]/div/div/div[2]/i
${dropdowns.ohrms.leave.entitlement.addentitlement.Leavetype}    //div[text()='CAN - Bereavement']
${dropdowns.ohrms.leave.entitlement.addentitlement.Entitlementfieldname}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[3]/div/div[2]/input
${dropdowns.performance.kpi.jobtitle}    //i[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"]
${dropdown.performance.selectjob}    //div[@class="oxd-select-text-input"]
${dropdowns.performance.kpi.titlejob}    //i[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"]
${dropdowns.performance.kpi.job.Roles}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/div[1]
${dropdowns.performance.kpi.jobtitle.field}    //i[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"]
${dropdowns.performance.configure.Trackers}    //a[.='Trackers']
${dropdowns.performance.MyReviews}    //a[.='My Reviews']
${dropdowns.performance.manageReview.EmployeeReviews}    //a[.='Employee Reviews']
${dropdowns.performance.MyTrackers}    //a[.='My Trackers']
${dropdowns.performance.employeeperformancetrackers.Include}    //i[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"]

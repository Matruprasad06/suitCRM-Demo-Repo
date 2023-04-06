*** Settings ***
Resource          ../../Global/Super.robot

*** Variables ***
${Elements.ohrms.loginpanel}    //*[@id="app"]/div[1]/div/div[1]/div/div[2]
${Elements.ohrms.Leavemodule}    //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[3]/a
${Elements.ohrms.viewlist}    //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul
${Elements.ohrms.leave-Entitlement}    //*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[3]/span
${Elements.ohrms.leave-Apply}    //a[.='Apply']
${Elements.ohrms.leave.Myleave}    //a[.='My Leave']
${Elements.ohrms.leave.Leavelist}    //a[.='Leave List ']
${Elements.ohrms.leave.AssignLeave}    //a[.='Assign Leave ']
${Elements.ohrms.leave.Reports}    //*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[4]/span
${Elements.ohrms.Configure}    //span[.='Configure ']
${Elements.ohrms.applyleave.Generate}    //button[@type="submit"]
${Elements.ohrms.leave.Dots}    //i[@class="oxd-icon bi-three-dots-vertical"]
${Elements.ohrms.performance}    //span[.='Performance']
${Elements.ohrms.performance.Configure}    //span[.='Configure ']
${Elements.ohrms.performance.KPI}    //a[.='KPIs']
${Elements.performance.ManageReviews}    //span[.='Manage Reviews ']
${Elements.performance.ManageReviewsOption}    //a[.='Manage Reviews']
${Elements.performance.EmployeeTrackers}    //a[.='Employee Trackers ']

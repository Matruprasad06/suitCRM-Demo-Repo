*** Settings ***
Resource          ../../Global/Super.robot

*** Variables ***
${Textfields.ohrm.loginpage.username}    //input[@placeholder="Username"]
${Textfields.ohrm.loginpage.password}    //input[@placeholder="Password"]
${Textfields.ohrm.leavetype.Name}    //div[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/input
${Textfields.ohrms.addholiday.Name}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]
${Textfield.ohrms.addholiday.Date}    //input[@placeholder="yyyy-mm-dd"]
${Textfield.ohrms.entitlement.Employeename}    //input[@placeholder="Type for hints..."]
${Textfield.ohrms.entitlement.addentitlement.Employeename}    //input[@placeholder="Type for hints..."]
${Textfields.performance.kpi.Field}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/input
${Textfields.performance.trackers.Employeename}    //input[@placeholder="Type for hints..."]
${Textfields.performance.trackers.TrackersName}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div/div/div[2]/input
${Textfields.performance.trackers.Ename}    //input[@placeholder="Type for hints..."]
${Textfields.performance.trackers.Reviewer}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/div/div[1]/input
${Textfields.performance.manageperformanceReview.Employeename}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div[1]/div/div[2]/div/div/input
${Textfields.performance.managereview.addreview.Employeename}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div/div/div[2]/div/div/input
${Textfields.performance.managereview.addreview.Supervisorname}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div/div/div[2]/div/div/input
${Buttons.performance.managereview.addreview.Reviewstartdate}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[1]/div/div[2]/div/div/input
${Buttons.performance.managereview.addreview.Reviewenddate}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[2]/div/div[2]/div/div/input
${Buttons.performance.managereview.addreview.Duedate}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[3]/div/div[2]/div/div/input
${Textfields.performance.managereviews.employeereviews.Employeename}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div[1]/div/div[2]/div/div/input
${Textfields.performance.addtrackerlog.Log}    //input[@placeholder="Type here"]
${Textfields.performance.addtrackerlog.commentsection}    //textarea[@class="oxd-textarea oxd-textarea--active oxd-textarea--resize-vertical"]
${Textfields.performance.employeeperformancetrackers.Ename}    //input[@placeholder="Type for hints..."]

*** Settings ***
Resource          ../Global/Super.robot

*** Keywords ***
Click on PerformanceModule
    Javascript Click By Xpath    ${Elements.ohrms.performance}

CONFIGURE Performance
    Javascript Click By Xpath    ${Elements.ohrms.performance.Configure}

KPI Performance
    SeleniumLibrary.Click Element    ${Elements.ohrms.performance.KPI}

JOBTitle KPI
    SeleniumLibrary.Click Element    ${dropdowns.performance.kpi.jobtitle}

Select Job KPI
    Comment    Javascript Click By Xpath    ${dropdowns.performance.kpi.jobtitle}
    Comment    Wait Until Element Is Visible    ${dropdowns.performance.kpi.jobtitle}
    Comment    Javascript Click By Xpath    ${dropdowns.performance.kpi.jobtitle}
    Select From List By Label    ${dropdown.performance.selectjob}    IT Manager

SEARCH KPI
    SeleniumLibrary.Click Button    ${Buttons.performance.Search}

ADD KPI
    SeleniumLibrary.Click Button    ${Button.performance.KPI.Add}

SAVE KPI
    Javascript Click By Xpath    ${Buttons.performance.kpi.add.Save}

VALID ADD
    SeleniumLibrary.Click Element    ${Textfields.performance.kpi.Field}
    SeleniumLibrary.Input Text    ${Textfields.performance.kpi.Field}    delivery manager
    SeleniumLibrary.Click Element    ${dropdowns.performance.kpi.jobtitle.field}
    Select From List By Index    ${dropdowns.performance.kpi.jobtitle.field}    0
    SeleniumLibrary.Click Button    ${Buttons.performance.kpi.add.Save}

CANCEL KPI
    Wait Until Element Is Visible    //div[@class="orangehrm-background-container"]
    SeleniumLibrary.Click Element    ${Buttons.performance.kpi.Cancel}

RESET KPI
    SeleniumLibrary.Click Element    ${Buttons.performance.kpi.Reset}

DELETE KPI
    Select Checkbox    //span[@class="oxd-text oxd-text--span"]
    Javascript Click By Xpath    //div[.='Assess information to develop strategies']
    Javascript Click By Xpath    //button[@class="oxd-button oxd-button--medium oxd-button--label-danger orangehrm-horizontal-margin"]

TRACKERS KPI
    Javascript Click By Xpath    ${dropdowns.performance.configure.Trackers}

SEARCH Tracker
    Wait Until Element Is Visible    //div[@class="orangehrm-background-container"]    ${SHOTWAITS}
    SeleniumLibrary.Click Element    ${Textfields.performance.trackers.Employeename}
    SeleniumLibrary.Input Text    ${Textfields.performance.trackers.Employeename}    Kevin \ Mathews
    sleep    3s
    SeleniumLibrary.Click Button    ${Buttons.performance.trackers.Search}

RESET Tracker
    Wait Until Element Is Visible    //div[@class="orangehrm-background-container"]    ${SHOTWAITS}
    SeleniumLibrary.Click Element    ${Textfields.performance.trackers.Employeename}
    SeleniumLibrary.Input Text    ${Textfields.performance.trackers.Employeename}    Linda Jane Anderson
    Comment    sleep    3s
    Comment    SeleniumLibrary.Click Button    ${Buttons.performance.trackers.Search}
    Javascript Click By Xpath    //button[@class="oxd-button oxd-button--medium oxd-button--ghost"]

ADD Trackers
    SeleniumLibrary.Click Button    ${Buttons.performance.trackers.Add}

CANCEL Trackers
    Javascript Click By Xpath    ${Buttons.performance.trackers.Cancel}

ADD VALID DATA Tracker
    SeleniumLibrary.Click Element    ${Textfields.performance.trackers.TrackersName}
    Input Text    ${Textfields.performance.trackers.TrackersName}    danial
    sleep    2s
    SeleniumLibrary.Click Element    ${Textfields.performance.trackers.Ename}
    Input Text    ${Textfields.performance.trackers.Ename}    Charlie Carter
    sleep    2s
    SeleniumLibrary.Click Element    ${Textfields.performance.trackers.Reviewer}
    Input Text    ${Textfields.performance.trackers.Reviewer}    Goutam Ganesh
    sleep    2s
    SeleniumLibrary.Click Element    ${Buttons.performance.trackers.Save}

ADD NULL DATA
    SeleniumLibrary.Click Element    ${Textfields.performance.trackers.TrackersName}
    Comment    Input Text    ${Textfields.performance.trackers.TrackersName}
    sleep    2s
    SeleniumLibrary.Click Element    ${Textfields.performance.trackers.Ename}
    Comment    Input Text    ${Textfields.performance.trackers.Ename}
    sleep    2s
    SeleniumLibrary.Click Element    ${Textfields.performance.trackers.Reviewer}
    Comment    Input Text    ${Textfields.performance.trackers.Reviewer}
    sleep    2s
    SeleniumLibrary.Click Element    ${Buttons.performance.trackers.Save}

DELETE Trackers
    Select Checkbox    ${Checkbox.performance.trackers.Employeebox}
    Select Checkbox    ${Checkbox.performance.Employeename}
    SeleniumLibrary.Click Element    ${Checkbox.performance.trackers.Delete}
    SeleniumLibrary.Click Element    ${Checkbox.performance.trackers.delete.popup}

MANAGE REVIEWS Performance
    Javascript Click By Xpath    ${Elements.performance.ManageReviews}

Click on ManageReviews Option
    Wait Until Element Is Visible    //ul[@class="oxd-dropdown-menu"]
    Javascript Click By Xpath    ${Elements.performance.ManageReviewsOption}

ADD VALID DATA MangeReview
    SeleniumLibrary.Click Element    ${Textfields.performance.manageperformanceReview.Employeename}
    sleep    2s
    Input Text    ${Textfields.performance.manageperformanceReview.Employeename}    Charlie \ Carter
    Comment    sleep    2s
    SeleniumLibrary.Click Element    ${Buttons.performance.managereview.Search}

ADD ManageReview
    Javascript Click By Xpath    ${Buttons.performance.managereview.Add}

RESET ManageReview
    SeleniumLibrary.Click Element    ${Textfields.performance.manageperformanceReview.Employeename}
    sleep    2s
    Input Text    ${Textfields.performance.manageperformanceReview.Employeename}    Paul \ Collings
    sleep    2s
    Comment    SeleniumLibrary.Click Element    ${Buttons.performance.managereview.Search}
    Javascript Click By Xpath    ${Buttons.performance.managereview.Reset}

MY REVIEWS Performance
    Wait Until Element Is Visible    //ul[@role="menu"]
    Javascript Click By Xpath    ${dropdowns.performance.MyReviews}

EVALUATE MyReview
    Sleep    3s
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div[3]
    Comment    Javascript Click By Xpath    ${Buttons.performance.myreview.Evaluate}
    sleep    2s
    Javascript Click By Xpath    //button[.=' Evaluate ']

CANCEL ManageReview
    Javascript Click By Xpath    ${Buttons.performance.managereview.Cancel}

ADD DATA MyReview
    SeleniumLibrary.Click Element    ${Textfields.performance.managereview.addreview.Employeename}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.managereview.addreview.Employeename}    Peter Mac Anderson
    sleep    2s
    SeleniumLibrary.Click Element    ${Textfields.performance.managereview.addreview.Supervisorname}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.managereview.addreview.Supervisorname}    John \ Smith
    sleep    2s
    SeleniumLibrary.Click Element    ${Buttons.performance.managereview.addreview.Reviewstartdate}
    SeleniumLibrary.Input Text    ${Buttons.performance.managereview.addreview.Reviewstartdate}    2022-09-01
    SeleniumLibrary.Click Element    ${Buttons.performance.managereview.addreview.Reviewenddate}
    SeleniumLibrary.Input Text    ${Buttons.performance.managereview.addreview.Reviewenddate}    2022-09-21
    SeleniumLibrary.Click Element    ${Buttons.performance.managereview.addreview.Duedate}
    SeleniumLibrary.Input Text    ${Buttons.performance.managereview.addreview.Duedate}    2022-09-30
    Click Element    ${Buttons.performance.managereview.addreview.Duedate}
    SeleniumLibrary.Click Element    //button[.=' Save ']

ACTIVE REVIEW ManageReview
    SeleniumLibrary.Click Element    ${Textfields.performance.managereview.addreview.Employeename}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.managereview.addreview.Employeename}    Peter Mac Anderson
    sleep    2s
    SeleniumLibrary.Click Element    ${Textfields.performance.managereview.addreview.Supervisorname}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.managereview.addreview.Supervisorname}    John \ Smith
    sleep    2s
    SeleniumLibrary.Click Element    ${Buttons.performance.managereview.addreview.Reviewstartdate}
    SeleniumLibrary.Input Text    ${Buttons.performance.managereview.addreview.Reviewstartdate}    2022-09-01
    SeleniumLibrary.Click Element    ${Buttons.performance.managereview.addreview.Reviewenddate}
    SeleniumLibrary.Input Text    ${Buttons.performance.managereview.addreview.Reviewenddate}    2022-09-21
    SeleniumLibrary.Click Element    ${Buttons.performance.managereview.addreview.Duedate}
    SeleniumLibrary.Input Text    ${Buttons.performance.managereview.addreview.Duedate}    2022-09-30
    Click Element    ${Buttons.performance.managereview.addreview.Duedate}
    Comment    SeleniumLibrary.Click Element    //button[.=' Save ']
    Javascript Click By Xpath    ${Buttons.performance.manageRevie.Active}

EMPLOYEE REVIEWS Performance
    Javascript Click By Xpath    ${dropdowns.performance.manageReview.EmployeeReviews}

SEARCH EmployeeReview
    SeleniumLibrary.Click Element    ${Textfields.performance.managereviews.employeereviews.Employeename}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.managereviews.employeereviews.Employeename}    Paul Collings
    Javascript Click By Xpath    ${Buttons.performance.managereview.employeereview.Search}

RESET EmployeeReviews
    SeleniumLibrary.Click Element    ${Textfields.performance.managereviews.employeereviews.Employeename}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.managereviews.employeereviews.Employeename}    Paul Collings
    sleep    2s
    Javascript Click By Xpath    ${Buttons.performance.managereview.employeereviews.Reset}

MY TRACKERS Performance
    SeleniumLibrary.Click Element    ${dropdowns.performance.MyTrackers}

VIEW MyTrackers
    Wait Until Element Is Visible    //div[@row-decorator="oxd-table-decorator-card"]    ${MEDIUMWAITS}
    sleep    2s
    SeleniumLibrary.Click Element    ${Buttons.performance.mytrackers.View}

EMPLOYEE TRACKERS
    sleep    2s
    Comment    Javascript Click By Xpath    ${Elements.performance.EmployeeTrackers}
    Comment    Javascript Click By Xpath    //a[@class="oxd-topbar-body-nav-tab-link --more"]
    Javascript Click By Xpath    //*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[4]/a

ADDLOG MyTracker
    sleep    2s
    Javascript Click By Xpath    ${Buttons.performance.mytrackers.Addlog}

VALID DATA AddLog
    SeleniumLibrary.Click Element    ${Textfields.performance.addtrackerlog.Log}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.addtrackerlog.Log}    Log for paul
    Javascript Click By Xpath    ${Checkbox.performance.addtrackerlog.Positive}
    sleep    2s
    SeleniumLibrary.Click Element    //textarea[@placeholder="Type here"]
    Comment    sleep    2s
    SeleniumLibrary.Input Text    //textarea[@placeholder="Type here"]    we can track employees details
    sleep    2s
    Javascript Click By Xpath    ${Buttons.performance.addtrackerlog.Save}

NULL DATA AddLog
    SeleniumLibrary.Click Element    ${Textfields.performance.addtrackerlog.Log}
    Comment    sleep    2s
    Comment    SeleniumLibrary.Input Text    ${Textfields.performance.addtrackerlog.Log}
    Javascript Click By Xpath    ${Checkbox.performance.addtrackerlog.Positive}
    Comment    sleep    2s
    SeleniumLibrary.Click Element    //textarea[@placeholder="Type here"]
    Comment    sleep    2s
    Comment    SeleniumLibrary.Input Text    //textarea[@placeholder="Type here"]
    Comment    sleep    2s
    Javascript Click By Xpath    ${Buttons.performance.addtrackerlog.Save}

SEARCH EmployeePerformanceTrackers
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]    ${SHOTWAITS}
    SeleniumLibrary.Click Element    ${Textfields.performance.employeeperformancetrackers.Ename}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.employeeperformancetrackers.Ename}    Kevin \
    sleep    2s
    input text    ${Textfields.performance.employeeperformancetrackers.Ename}    Mathews
    sleep    2s
    Javascript Click By Xpath    ${Buttons.performance.employeeperformancetrackers.Search}

RESET EmployeeperformanceTrackers
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]    ${SHOTWAITS}
    SeleniumLibrary.Click Element    ${Textfields.performance.employeeperformancetrackers.Ename}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.employeeperformancetrackers.Ename}    Kevin \
    sleep    2s
    input text    ${Textfields.performance.employeeperformancetrackers.Ename}    Mathews
    sleep    2s
    Comment    Javascript Click By Xpath    ${Buttons.performance.employeeperformancetrackers.Search}
    Javascript Click By Xpath    //button[@type="reset"]

NULL DATA EmployeeTracker
    Javascript Click By Xpath    ${Buttons.performance.employeeperformancetrackers.Search}

ENAME TEXTFIELD EmployeeTracker
    SeleniumLibrary.Click Element    ${Textfields.performance.employeeperformancetrackers.Ename}
    SeleniumLibrary.Input Text    ${Textfields.performance.employeeperformancetrackers.Ename}    Lisa \ Andrews

DROPDOWNS EmployeeperformanceTrackers
    Javascript Click By Xpath    ${dropdowns.performance.employeeperformancetrackers.Include}
    Javascript Click By Xpath    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[1]

VIEW \ EmployeeperformanceTracker
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/div/div[3]/div
    Javascript Click By Xpath    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/div/div[3]/div/div/div[1]/div[2]/div/div/button

CANCEL AddLog
    SeleniumLibrary.Click Element    ${Textfields.performance.addtrackerlog.Log}
    sleep    2s
    SeleniumLibrary.Input Text    ${Textfields.performance.addtrackerlog.Log}    Log for paul
    Javascript Click By Xpath    ${Checkbox.performance.addtrackerlog.Positive}
    sleep    2s
    SeleniumLibrary.Click Element    //textarea[@placeholder="Type here"]
    Comment    sleep    2s
    SeleniumLibrary.Input Text    //textarea[@placeholder="Type here"]    we can track employees details
    sleep    2s
    Comment    Javascript Click By Xpath    ${Buttons.performance.addtrackerlog.Save}
    Javascript Click By Xpath    ${Buttons.performance.Addlog.Cancel}

*** Settings ***
Resource          ../Global/Super.robot
Library           DependencyLibrary

*** Test Cases ***
TC_01Verify user is able to access Performance Module
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule

TC_02Verify that the configure button with the dropdown is enabled.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance

TC_03Verify the KPI button is enabled.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    KPI Performance

TC_04Verify the job title dropdown.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    KPI Performance
    JOBTitle KPI

TC_05Verify user is able to select jobtitle from dropdown.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    KPI Performance
    JOBTitle KPI
    Select Job KPI

TC_06Verify the search button.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    KPI Performance
    SEARCH KPI

TC_07Verify the Add button in KPI Module.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    KPI Performance
    ADD KPI

TC_08Verify the add button by giving the Null data.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    KPI Performance
    ADD KPI
    SAVE KPI

TC_09Verify the add button by giving the valid data.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    KPI Performance
    ADD KPI
    VALID ADD

TC_010Verify user is able to access cancel buttton from KPI.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    KPI Performance
    ADD KPI
    CANCEL KPI

TC_11Verify user is able to Reset in KPI Module
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    KPI Performance
    JOBTitle KPI
    RESET KPI

TC_12Verify user is able to delete KPI.

TC_13Verify user is able to access Trackers Module
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    TRACKERS KPI

TC_14Verify user is able to search Employee in tracker Module
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    TRACKERS KPI
    SEARCH Tracker

TC_15Verify user is able to reset Employeename
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    TRACKERS KPI
    RESET Tracker

TC_16Verify the add button in trackers is enabled.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    TRACKERS KPI
    ADD Trackers

TC_17Verify the cancel button in add button of trackers.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    TRACKERS KPI
    ADD Trackers
    CANCEL Trackers

TC_18Verify the add button of trackers by giving valid data.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    TRACKERS KPI
    ADD Trackers
    ADD VALID DATA Tracker

TC_19Verify the add button of tracker by giving the Null data.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    TRACKERS KPI
    ADD Trackers
    Comment    ADD VALID DATA Tracker
    ADD NULL DATA

TC_20Verify the delete button in trackers.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    CONFIGURE Performance
    TRACKERS KPI
    DELETE Trackers

TC_21Verify the manage reviews button with the dropdown is enabled.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance

TC_22Verify user is able to access ManageReviews option
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    Click on ManageReviews Option

TC_23Verify the manage reviews button by giving the valid data
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    Click on ManageReviews Option
    ADD VALID DATA MangeReview

TC_24Verify the user is able to access Add button in ManageReview Module
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    Click on ManageReviews Option
    ADD ManageReview

TC_24Verify the user is able Reset data in ManageReview Module
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    Click on ManageReviews Option
    Comment    ADD VALID DATA MangeReview
    RESET ManageReview

TC_25Verify user is able to access MyReviews
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    MY REVIEWS Performance

TC_26Verify user is able to access Evaluate button in MyReview button.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    MY REVIEWS Performance
    EVALUATE MyReview

TC_27Verify user able to cancel ManageReview.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    Click on ManageReviews Option
    ADD ManageReview
    CANCEL ManageReview

TC_28Verify user is able to Add valid data in ManageReview.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    Click on ManageReviews Option
    ADD ManageReview
    ADD DATA MyReview

TC_29Verify user is able to Active valid data in manageReview Module.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    Click on ManageReviews Option
    ADD ManageReview
    Comment    ADD DATA MyReview
    ACTIVE REVIEW ManageReview

TC_30Verify user is able to access EmployeeReviews Module.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    EMPLOYEE REVIEWS Performance

TC_31Verify user is able to search Employee in EmployeeReview Module.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    EMPLOYEE REVIEWS Performance
    SEARCH EmployeeReview

TC_32Verify user is able to Reset Data in EmployeeReviews Module.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MANAGE REVIEWS Performance
    EMPLOYEE REVIEWS Performance
    Comment    SEARCH EmployeeReview
    RESET EmployeeReviews

TC_33Verify user is able to access Mytrackers.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MY TRACKERS Performance

TC_34Verify user is able to View MyTrackers.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MY TRACKERS Performance
    VIEW MyTrackers

TC_35Verify user is able to access EmployeeTrackers Module.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    EMPLOYEE TRACKERS

TC_36Verify user is able to access AddLog button in Mytrackers.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MY TRACKERS Performance
    VIEW MyTrackers
    ADDLOG MyTracker

TC_37Verify user is able to Addlog by giving valid data.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MY TRACKERS Performance
    VIEW MyTrackers
    ADDLOG MyTracker
    VALID DATA AddLog

TC_38Verify user is able to AddLog by giving null data.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MY TRACKERS Performance
    VIEW MyTrackers
    ADDLOG MyTracker
    NULL DATA AddLog

TC_39Verify user is able to Search perticular Employee in EmployeeperformanceTracker
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    EMPLOYEE TRACKERS
    SEARCH EmployeePerformanceTrackers

TC_40Verify user is able to Reset data in EmployeeperformaceTracker
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    EMPLOYEE TRACKERS
    RESET EmployeeperformanceTrackers

TC_41Verify the Null data in Employee Tracker
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    EMPLOYEE TRACKERS
    NULL DATA EmployeeTracker

TC_42Verify the Employeename text field in Employeeperformance tracker
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    EMPLOYEE TRACKERS
    ENAME TEXTFIELD EmployeeTracker

TC_43Verify user is able to access dropdowns in EmployeeperformanceTracker.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    EMPLOYEE TRACKERS
    DROPDOWNS EmployeeperformanceTrackers

TC_44Verify user is able to view Employee details in EmployeeperformanceTracker
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    EMPLOYEE TRACKERS
    VIEW \ EmployeeperformanceTracker

TC_45Verify user is able to cancel Addlog in Trackerslog Module.
    [Setup]    ReadTestdataFromExcel    TC    Performance
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]
    Click on PerformanceModule
    MY TRACKERS Performance
    VIEW MyTrackers
    ADDLOG MyTracker
    Comment    VALID DATA AddLog
    CANCEL AddLog

TC_0B
    [Setup]    ReadTestdataFromExcel    TC    Performance
    ${status}    Keyword A
    IF    { Pass    "${status}"="True"    }
    ELSE    fail
    End

sample Test case
    DependencyLibrary.Depends On Test    TC_01Verify user is able to access Performance Module

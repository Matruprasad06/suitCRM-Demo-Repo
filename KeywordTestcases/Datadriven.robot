*** Settings ***
Test Template     Login to ohrm
Resource          ../Global/Super.robot
Library           DataDriver    file=${EXECDIR}//TestData//OrangeHRM.xls    sheet_name=ohrm_app

*** Test Cases ***
${test_case_name}

*** Keywords ***
Login to ohrm
    [Arguments]    ${testno}
    ${test_data}    ReadTestdataFromExcel    ${testno}    ohrms
    Login to App    ${testdata}\[Username]    ${testdata}\[Password]
    Verifying Error messages

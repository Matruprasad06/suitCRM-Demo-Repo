*** Settings ***
Resource          ../Global/Super.robot

*** Test Cases ***
TC_01
    [Setup]    ReadTestdataFromExcel    TC    ohrms
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${testdata}[Username]    ${testdata}[Password]

TC_02
    Launch The App    ${URL}    ${BROWSERNAME}
    name and password

TC_03 invalid Crendential
    Launch The App    ${URL}    ${BROWSERNAME}
    Invalid Data

TC_04
    Launch The App    ${URL}    ${BROWSERNAME}
    Login to App    ${ohrm_app}[Username]    ${ohrm_app}[Password]
    Verifying Error messages

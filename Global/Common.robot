*** Settings ***
Resource          Super.robot

*** Variables ***
${TESTDATA_FOLDER}    ${EXECDIR}\\TestData
${URL}            https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSERNAME}    Chrome
${LONGWAITS}      20s
${MEDIUMWAITS}    10s
${SHOTWAITS}      5s

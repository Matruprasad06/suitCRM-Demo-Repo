*** Settings ***
Resource          ../Global/Super.robot

*** Keywords ***
PassingTest

Depends on test
    PassingTest

Keyword A
    Launch The App    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome

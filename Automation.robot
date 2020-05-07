*** Settings ***
Documentation     Sample robot framework testing file for ui automation by teststack-white
Library           WhiteLibrary

*** Test Cases ***  

Test Calculate
    [Setup]       Launch Application      UIAutomationTest
    [Teardown]    Close Application
    Attach Window           id:mainWindow
    Input Text To Textbox   id:txtA  5
    Input Text To Textbox   id:txtB  5
    Click Button            id:btnCalc
    Verify Text In Textbox  id:tbResult  10
    
Test Force To Fail
    Fail  You should not pass

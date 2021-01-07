@echo off 
GOTO:MAIN

:testing
  robot -x xunit.xml -d result Automation.robot
EXIT /b %ERRORLEVEL%

:install
    CALL python -m pip install --upgrade pip
    CALL pip install wheel
    CALL pip install robotframework
    CALL pip install robotframework-whitelibrary
EXIT /B %ERRORLEVEL%

:MAIN
IF NOT "%~1" == "" call:%1
@echo off
GOTO:MAIN

:dependency
    call python -m pip install --upgrade pip setuptools wheel
    call pip install -r requirements.txt
EXIT /B %ERRORLEVEL%

:test
    call robot -x xunit-result.xml -d result --nostatusrc Automation.robot
EXIT /B %result%

:MAIN
IF NOT "%~1" == "" call:%1

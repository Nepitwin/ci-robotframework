@echo off
GOTO:MAIN

:dependency
    call python --version
    call python -m pip install --upgrade pip
    call python -m pip install setuptools wheel
    call pip install -r requirements.txt
EXIT /B %ERRORLEVEL%

:test
    IF "%APPVEYOR_JOB_NAME%"=="" (call python -m robot -x xunit-result.xml -d result --nostatusrc Automation.robot) else (call python -m robot -x xunit-result.xml -d result --name "%APPVEYOR_JOB_NAME%" --nostatusrc Automation.robot)
EXIT /B %result%

:MAIN
IF NOT "%~1" == "" call:%1

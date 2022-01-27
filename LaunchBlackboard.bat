@echo off
rem "rem at the beginning of a line means 'comment'"

rem set displays to "duplicate"
start DisplaySwitch.exe /clone

for /f %%i in ('powershell ^(get-date^).DayOfWeek') do set dow=%%i
rem echo %dow%
rem pause
if %dow% == Tuesday goto TuesdayLink
if %dow% == Thursday goto ThursdayLink
exit

:TuesdayLink
rem Tuesday link
start chrome https://us.bbcollab.com/guest/b17ff11bab2d418e90903a7813047082
goto CommonExit

:ThursdayLink
rem Thursday link
start chrome https://us.bbcollab.com/guest/2bcfd1b06dea4e66810d761e09ea5492
goto CommonExit

:CommonExit
exit
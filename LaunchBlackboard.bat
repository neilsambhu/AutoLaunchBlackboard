rem @echo off
for /f %%i in ('powershell ^(get-date^).DayOfWeek') do set dow=%%i
rem echo %dow%
rem pause
if %dow% == Tuesday goto TuesdayLink
if %dow% == Thursday goto ThursdayLink
exit

:TuesdayLink
rem Tuesday link
start chrome https://us.bbcollab.com/collab/ui/session/join/4f56fdfe5c6f4596a48364241e97d15f
goto CommonExit

:ThursdayLink
rem Thursday link
start chrome https://us.bbcollab.com/collab/ui/session/join/94c70cc6b2f34634b78fde58e30d2f63
goto CommonExit

:CommonExit
pause
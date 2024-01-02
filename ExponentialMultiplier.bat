@echo off
title Exponential Multiplier By ♠Tactics♠
:start
echo --------------------------------------------------------------
echo ^|How many times do you want to exponentialy multiply? (2-5)^| 
echo ^|Type 'why' to learn why its only a max of 5                 ^|
echo --------------------------------------------------------------
set/p killnum=
if /i "%killnum%"=="why" goto explain
if %killnum% lss 2 (
    echo Error: Please enter a number greater than or equal to 2.
    goto start
)
if %killnum% gtr 5 (
    echo Error: Please enter a number less than or equal to 5.
    goto start
)
SET /A loopcount=1
SET /A num=2
:a
cls
echo %num%
SET /A num = %num% * %num%
SET /A loopcount = %loopcount% + 1
title Times Exponentialy Mulitplied:%loopcount%
if "%loopcount%"=="%killnum%" goto exit
GOTO a
:exit
echo I successfully Exponentialy Mulitplied %killnum% times and the result is %num% 
pause
goto start
echo ♠Tactics♠
exit
:explain
echo Cmd can only do 32bit math
echo sadly 32768 * 32768 is not 32 bit math...
echo otherwise this code is a great solution to finding exponential multiples.
pause
goto start

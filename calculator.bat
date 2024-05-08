@echo off
title Bat Calculator
:start
echo Equation:
set /p num1=Enter first number:
cls
echo Equation: %num1%
set /p word1=Enter: *,-,+ or :
if /I %word1%==* goto good
if /I %word1%==- goto good
if /I %word1%==+ goto good
if /I %word1%==: goto good
::Неправильный ввод
cls
echo Invalid choice!
goto start
:good
cls
echo Equation: %num1%%word1%
set /p num2=Enter second number:
cls
set /a num3=%num1%%word1%%num2%
echo Equation: %num1%%word1%%num2%=%num3%
pause
:next
cls
echo Equation: %num3%
set /p word1=Enter: *,-,+ or :
if /I %word1%==* goto good1
if /I %word1%==- goto good1
if /I %word1%==+ goto good1
if /I %word1%==: goto good1
::Неправильный ввод
cls
echo Invalid choice!
goto next
:good1
cls
echo Equation: %num3%%word1%
set /p num2=Enter second number:
cls
set /a num4=%num3%%word1%%num2%
echo Equation: %num3%%word1%%num2%=%num4%
pause
set num3=%num4%
goto next
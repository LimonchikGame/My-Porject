@echo off
echo _______________________________________
echo .
echo Welcome to Orion Magic!
echo Write "commands" to choose command.
echo .
echo _______________________________________
echo .
:MSDOS
set /p cmd=">"
if "%cmd%"=="commands" (echo commands - all commands&&echo random - random number&&echo shutdown - exit&&echo time - real time&&echo game - play a game&&echo calculator - open calculator)
if "%cmd%"=="random" (echo %random%)
if "%cmd%"=="shutdown" (exit)
if "%cmd%"=="time" (start time.bat)
if "%cmd%"=="game" (start snake.bat)
if "%cmd%"=="calculator" (start calculator.bat)
goto MSDOS
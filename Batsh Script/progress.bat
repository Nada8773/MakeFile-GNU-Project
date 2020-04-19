@ECHO OFF
Set Progress_File="progress.txt"

setlocal enabledelayedexpansion

set Value=1
set GetValue=0

REM Check if file exist
IF NOT EXIST %Progress_File% (
REM create file and write the value ‘1’ 
ECHO %Value% > %Progress_File%
) else (
REM Read Value from the file
set /p GetValue=<%Progress_File%
REM increament the value 
set /a GetValue=!GetValue!+1
REM insert value into the file
ECHO !GetValue! > %Progress_File%
)
@echo:
REM @echo "Progress is Finished"
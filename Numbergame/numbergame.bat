@echo off
Title test
Title Downloading game files
set /a leaderboard=0
set /a guess=0
set /a streak=0
set diff=0
set loss=0
set achievement1=0
set nice=0
color 0a
cd %UserProfile%\Documents
IF EXIST %UserProfile%\Documents\seinfield.jpg GOTO s2
bitsadmin.exe /transfer "Seinfeld One" https://i.imgur.com/WZqfL8t.jpg %UserProfile%\Documents\seinfield.jpg
:s2
IF EXIST %UserProfile%\Documents\seinfield2.jpg GOTO s3
bitsadmin.exe /transfer "Seinfeld Two" https://i.imgur.com/zClGWxl.jpg %UserProfile%\Documents\seinfield2.jpg
:s3
IF EXIST %UserProfile%\Documents\seinfield3.jpg GOTO t1
bitsadmin.exe /transfer "Seinfeld Three" https://i.imgur.com/tVJDKnF.jpg %UserProfile%\Documents\seinfield3.jpg
:t1
IF EXIST %UserProfile%\Documents\trophy.txt GOTO skip
bitsadmin.exe /transfer "Trophy" https://pastebin.com/raw/hbP6Wn2Z %UserProfile%\Documents\trophy.txt
:skip
Title Leah's number game!

:star
IF %streak% EQU 3 GOTO streak3
IF %loss% EQU 3 GOTO loss3
IF %loss% EQU 7 GOTO loss7
IF %loss% EQU 15 GOTO loss15
IF %loss% EQU 30 GOTO loss30
IF %nice% EQU 1 GOTO start
IF %leaderboard% EQU 69 GOTO nice

:start
set /a guesses=5
cls
echo Your current score is %leaderboard%.
echo Your current streak is %streak%.
echo Your current loss count is %loss%.
echo.
echo.
CHOICE /C 12345 /M "Please select a difficulty."
IF %ERRORLEVEL% EQU 1 SET diff=ten
IF %ERRORLEVEL% EQU 1 GOTO one
IF %ERRORLEVEL% EQU 2 SET diff=fifteen
IF %ERRORLEVEL% EQU 2 GOTO two
IF %ERRORLEVEL% EQU 3 SET diff=twenty
IF %ERRORLEVEL% EQU 3 GOTO three
IF %ERRORLEVEL% EQU 4 SET diff=twenty-five
IF %ERRORLEVEL% EQU 4 GOTO four
IF %ERRORLEVEL% EQU 5 SET diff=thirty
IF %ERRORLEVEL% EQU 5 GOTO five


:one
SET /a number=%random% %%10 +1
set /a score=1
GOTO question

:two
SET /a number=%random% %%15 +1
set /a score=2
GOTO question

:three
SET /a number=%random% %%20 +1
set /a score=3
GOTO question

:four
SET /a number=%random% %%25 +1
set /a score=4
GOTO question

:five
SET /a number=%random% %%30 +1
set /a score=5
GOTO question

:question
echo Please guess a number between one and %diff%.
if %guesses% GTR 1 echo You have %guesses% attempts left.
if %guesses% EQU 1 echo You have %guesses% attempt left.
if %guesses% EQU 0 goto false
set /a guesses=%guesses%-1
SET /P guess=
if %guess% EQU help echo *Psst, hey, the answer is %number%*
if %guess% EQU help goto question
if %guess% EQU quit goto quit
if %guess% EQU highscore set /a leaderboard=68
if %guess% EQU highscore goto star
if %guess% EQU ghost goto ghostbusters
if %guess% GTR %number% goto larger
if %guess% LSS %number% goto smaller
if %guess% EQU %number% GOTO correct
if NOT %guess% EQU %number% GOTO false

:larger
echo Your guess is larger than the correct number!
goto question

:smaller
echo Your guess is smaller than the correct number!
goto question

:correct
echo You win!
color A2
color 0a
color A2
color 0a
color A2
color 0a
SET /a leaderboard=%leaderboard%+%score%
set /a streak=%streak% +1
pause
goto star

:false
echo You lose...
color 4c
color 0a
color 4c
color 0a
color 4c
color 0a
set /a streak = 0
set /a loss=%loss%+1
set 3streak=0
pause
goto star

:streak3
cls
ECHO         Achievement Unlocked!
echo.
type "%UserProfile%\OneDrive\numbergame\Leah's Projects\trophy.txt"
echo.
echo         Third Time's the Charm!
echo.
set Achievement1=1
pause
GOTO start

:nice
cls
echo                Achievement Unlocked!
echo.
type "%UserProfile%\OneDrive\numbergame\Leah's Projects\69.txt"
echo.
echo.
echo                       69, Nice
echo.
pause
cls
set nice=1
goto start

:ghostbusters
cls 
ECHO                   Achievement Unlocked!
echo.
type "%UserProfile%\OneDrive\numbergame\Leah's Projects\ghostbusters.txt"
echo.
echo                    Who ya gonna call?
echo.
pause
cls
goto start

:loss3
cls
ECHO         Achievement Unlocked!
echo.
type "%UserProfile%\OneDrive\numbergame\Leah's Projects\RNG.txt"
echo.
echo         RNG's a Bitch!
echo.
set Achievement1=1
pause
GOTO start

:loss7
echo Function Set-WallPaper($Value) > ps.ps1
echo { >>ps.ps1
echo Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value >>ps.ps1
echo rundll32.exe user32.dll, UpdatePerUserSystemParameters >>ps.ps1
echo } >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield.jpg" >>ps.ps1
timeout 2
Powershell.exe -executionpolicy remotesigned -File  %UserProfile%\Documents\ps.ps1
GOTO start

:loss15
echo Function Set-WallPaper($Value) > ps1.ps1
echo { >>ps1.ps1
echo Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value >>ps1.ps1
echo rundll32.exe user32.dll, UpdatePerUserSystemParameters >>ps1.ps1
echo } >>ps1.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield2.jpg" >>ps1.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield2.jpg" >>ps1.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield2.jpg" >>ps1.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield2.jpg" >>ps1.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield2.jpg" >>ps1.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield2.jpg" >>ps1.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield2.jpg" >>ps1.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield2.jpg" >>ps1.ps1
timeout 2
Powershell.exe -executionpolicy remotesigned -File  %UserProfile%\Documents\ps1.ps1
GOTO start

:loss30
echo Function Set-WallPaper($Value) > ps2.ps1
echo { >>ps2.ps1
echo Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value >>ps2.ps1
echo rundll32.exe user32.dll, UpdatePerUserSystemParameters >>ps2.ps1
echo } >>ps2.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield3.jpg" >>ps2.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield3.jpg" >>ps2.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield3.jpg" >>ps2.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield3.jpg" >>ps2.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield3.jpg" >>ps2.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield3.jpg" >>ps2.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield3.jpg" >>ps2.ps1
echo Set-WallPaper -value "%UserProfile%\Documents\seinfield3.jpg" >>ps2.ps1
timeout 2
Powershell.exe -executionpolicy remotesigned -File  %UserProfile%\Documents\ps2.ps1
GOTO start

:quit
cls 
echo.
CHOICE /M "Are you sure you want to quit?"
IF %ERRORLEVEL% EQU 1 exit
IF %ERRORLEVEL% EQU 2 goto star
goto start
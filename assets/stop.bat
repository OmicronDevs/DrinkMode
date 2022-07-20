@echo off
mode 102, 9
title * DrinkMode Taskkiller *
taskkill /im wscript.exe /f
cls
set hrs=%time:~0,2%
set mns=%time:~3,2%
set scs=%time:~6,2%
set mls=%time:~9,2%
set nmt=%time:~0,8%
echo.
Call :Color 03 "                                          Drink"
call :Color 06 "Mode"
echo.
echo.
Call :Color 04 "                          DrinkMode Has Been Sucessfully Terminated"
echo.
echo.
Call :Color 03 "                              Current Version/Branch: "
Call :Color 13 "Pre-Release"
Call :Color 03 "."
echo.
echo.

goto main

:Color
SetLocal EnableExtensions EnableDelayedExpansion
Set "Text=%~2"
If Not Defined Text (Set Text=^")
Subst `: "!Temp!" >Nul &`: &Cd \
If Not Exist `.7 (
Echo(|(Pause >Nul &Findstr "^" >`)
Set /P "=." >>` <Nul
For /F "delims=;" %%# In (
'"Prompt $H;&For %%_ In (_) Do Rem"') Do (
Set /P "=%%#%%#%%#" <Nul >`.3
Set /P "=%%#%%#%%#%%#%%#" <Nul >`.5
Set /P "=%%#%%#%%#%%#%%#%%#%%#" <Nul >`.7))
Set /P "LF=" <` &Set "LF=!LF:~0,1!"
For %%# in ("!LF!") Do For %%_ In (
\ / :) Do Set "Text=!Text:%%_=%%~#%%_%%~#!"
For /F delims^=^ eol^= %%# in ("!Text!") Do (
If #==#! SetLocal DisableDelayedExpansion
If \==%%# (Findstr /A:%~1 . \` Nul
Type `.3) Else If /==%%# (Findstr /A:%~1 . /.\` Nul
Type `.5) Else (Echo %%#\..\`>`.dat
Findstr /F:`.dat /A:%~1 .
Type `.7))
If "\n"=="%~3" (Echo()
Goto :Eof

:main
pause
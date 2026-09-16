@echo off
setlocal EnableExtensions EnableDelayedExpansion
title SA-AW FPS compile
color 0A
cd /d "%~dp0"

echo Finds gta_sa.exe + sanny.exe and compiles the four CLEO scripts.
echo.

set "GTA="
if exist "%~dp0GTA_DIR.txt" set /p GTA=<"%~dp0GTA_DIR.txt"
if defined GTA if not exist "%GTA%\gta_sa.exe" set "GTA="

if not defined GTA (
  for %%P in (
    "C:\Program Files (x86)\Rockstar Games\GTA San Andreas"
    "C:\Program Files\Rockstar Games\GTA San Andreas"
    "C:\GTA San Andreas"
    "D:\GTA San Andreas"
    "E:\GTA San Andreas"
    "C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto San Andreas"
  ) do (
    if exist "%%~P\gta_sa.exe" if not defined GTA set "GTA=%%~P"
  )
)

if not defined GTA (
  echo Paste the folder that contains gta_sa.exe
  set /p "GTA=GTA folder: "
)
if not exist "%GTA%\gta_sa.exe" (
  echo ERROR: gta_sa.exe not there.
  pause
  exit /b 1
)
echo %GTA%>"%~dp0GTA_DIR.txt"
if not exist "%GTA%\CLEO" mkdir "%GTA%\CLEO"
if not exist "%GTA%\modloader\SA_AW_FPS\config" mkdir "%GTA%\modloader\SA_AW_FPS\config"
copy /Y "%~dp0config\aw_fps.ini" "%GTA%\modloader\SA_AW_FPS\config\aw_fps.ini" >nul

set "SANNY="
for %%P in (
  "%ProgramFiles%\Sanny Builder 4\sanny.exe"
  "%ProgramFiles%\Sanny Builder 3\sanny.exe"
  "%ProgramFiles(x86)%\Sanny Builder 4\sanny.exe"
  "%ProgramFiles(x86)%\Sanny Builder 3\sanny.exe"
  "C:\Sanny Builder 4\sanny.exe"
  "C:\Sanny Builder 3\sanny.exe"
) do (
  if exist "%%~P" if not defined SANNY set "SANNY=%%~P"
)
if not defined SANNY for /f "delims=" %%P in ('where sanny.exe 2^>nul') do if not defined SANNY set "SANNY=%%~P"

if not defined SANNY (
  echo Sanny not found. Open cleo\AW_FPS_*.txt in Sanny, mode GTA SA, F7 each.
  echo Output: %GTA%\CLEO\AW_FPS_Core.cs  (and Combat, HUD, Loadout)
  pause
  exit /b 1
)

echo Game  : %GTA%
echo Sanny : %SANNY%
"%SANNY%" --compile "%~dp0cleo\AW_FPS_Core.txt"    "%GTA%\CLEO\AW_FPS_Core.cs"
"%SANNY%" --compile "%~dp0cleo\AW_FPS_Combat.txt"  "%GTA%\CLEO\AW_FPS_Combat.cs"
"%SANNY%" --compile "%~dp0cleo\AW_FPS_HUD.txt"     "%GTA%\CLEO\AW_FPS_HUD.cs"
"%SANNY%" --compile "%~dp0cleo\AW_FPS_Loadout.txt" "%GTA%\CLEO\AW_FPS_Loadout.cs"

echo.
for %%F in (AW_FPS_Core.cs AW_FPS_Combat.cs AW_FPS_HUD.cs AW_FPS_Loadout.cs) do (
  if exist "%GTA%\CLEO\%%F" (
    echo OK  %%F
  ) else (
    echo MISSING  %%F
  )
)
echo.
echo In game: first-person on, type AWFPS, F4 toggles the pack.
echo F6 is left alone for the companion switcher.
pause

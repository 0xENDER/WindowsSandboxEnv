@echo off

::Change CMD colour
color 5b

echo [START] Updating System Theme

echo [STEP] Applying Custom Theme
c:\.setup\windows\themes\default-darkmode.deskthemepack

echo [STEP] Enabling Dark Mode
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /v AppsUseLightTheme /t REG_DWORD /d 00000000 /f

echo [STEP] Restarting System UI
taskkill /F /IM SystemSettings.exe
taskkill /F /IM explorer.exe & start explorer

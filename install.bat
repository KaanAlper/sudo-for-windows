@echo off
echo Windows Sudo Kurulumu Baslatiliyor...
copy /Y "%~dp0sudo.cmd" "%LOCALAPPDATA%\Microsoft\WindowsApps\sudo.cmd"
echo.
echo [BASARILI] sudo komutu kuruldu! CMD ve PowerShell uzerinden "sudo" yazarak kullanabilirsiniz.
pause


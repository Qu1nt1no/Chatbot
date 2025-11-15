@echo off
echo.
echo == Visual Code Powershell - Instaling.... ==
echo.

Powershell Set-ExecutionPolicy -Scope CurrentUser RemoteSigned

echo.
echo == Visual Code Powershell - Install Sucess...... ==
"C:\Windows\System32\Timeout.exe " /t 5 /nobreak

exit
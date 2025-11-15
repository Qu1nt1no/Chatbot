@echo off
rem List installed extensions and search for ms-python.python
echo Checking if Python extension is installed... >> C:\Msicache\VSCode_Python_Extension.log

code --list-extensions | findstr "ms-python.python" > nul

rem If the extension is not installed, install it
if %errorlevel% neq 0 (
    echo Python extension not found. Installing Python extension... >> C:\Msicache\VSCode_Python_Extension.log
    code --install-extension ms-python.python
    rem Wait for a moment to ensure the installation completes
    timeout /t 5 /nobreak > nul
) else (
    echo Python extension is already installed. >> C:\Msicache\VSCode_Python_Extension.log
)

rem Verify if the extension is now installed
echo Verifying Python extension installation... >> C:\Msicache\VSCode_Python_Extension.log
code --list-extensions | findstr "ms-python.python" > nul
if %errorlevel% equ 0 (
    echo Python extension is successfully installed. >> C:\Msicache\VSCode_Python_Extension.log
) else (
    echo Failed to install Python extension. >> C:\Msicache\VSCode_Python_Extension.log
)

"C:\Windows\System32\Timeout.exe " /t 5 /nobreak

exit
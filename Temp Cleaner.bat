@echo off
echo Welcome to Temp Cleaner!
echo.
echo Press any key to start cleanup. . .
pause

echo are you sure you want to delete all temporary files? (Y/N)
pause

echo Cleaning temporary files, please wait. . .

timeout /t 3 /nobreak >nul

del /q /f /s "%TEMP%\*.*" 2>nul
for /d %%p in ("%TEMP%\*.*") do rmdir "%%p" /s /q 2>nul

echo Cleanup complete thanks for using temp cleaner.
echo .
echo Press any key to exit...
pause
exit
@echo off
tasklist /fi "ImageName eq laragon.exe" /fo csv 2>NUL | find /I "laragon.exe">NUL
if NOT "%ERRORLEVEL%"=="0" start laragon.exe
if NOT "%ERRORLEVEL%"=="0" timeout 3 > NUL
start http://localhost:18090/?Welcome_-_MYE048_Lab_Report^&login^&passwd=test!

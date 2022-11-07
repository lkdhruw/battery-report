@ECHO OFF
cd C:\Users\%userprofile%\Desktop
powercfg /batteryreport

For /f "tokens=1-4 delims=/- " %%a in ('date /t') do (set mydate=%%c-%%b-%%a)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)

echo %mytime%_%mydate%
::pause
git add .
git commit -m "Generated on %mytime%_%mydate%"
git push -u origin main
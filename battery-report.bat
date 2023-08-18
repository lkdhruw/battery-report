@ECHO OFF
cd C:\Users\%userprofile%\Desktop
powercfg /batteryreport
if exist index.html del index.html
ren battery-report.html index.html

For /f "tokens=1-4 delims=/- " %%a in ('date /t') do (set mydate=%%c-%%b-%%a)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)

::echo %mytime%_%mydate%
::for %a in (index.html) do set FileDate=%~ta
::FOR %A IN ("index.html") DO @ECHO=%~tA
:: create new file
::echo. %mytime%_%mydate%>%mydate%.txt
pause
git add .
git commit -m "Generated on %mytime%_%mydate%"
git push --force -u origin main
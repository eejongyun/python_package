@echo off

echo start
set extname=jpg
set outname=output.csv
echo 폴더명,폴더경로,갯수>%extname%_%outname%
call :funtions "%cd%"
echo after call
for /f "usebackq delims=" %%f in (`dir /on /s /b /ad`) do (if exist "%%f\*.%extname%" (call :funtions "%%f"))
goto :end

:funtions
echo func
if "%~nx1" neq "" set "foldername=%~nx1"
for /f "usebackq tokens=1 delims= " %%g in (`dir "%~1\*.%extname%"^|find "파일"`) do (echo "%foldername%",%~dp1,%%g >>%extname%_%outname%)
echo %foldername%",%~dp1,%%g >>%extname%_%outname%
goto :eof 
:end
echo end

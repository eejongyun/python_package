@echo off 
:Check
tasklist | FIND  "mdmAg.exe" > NUL
if not errorlevel 1 (
	echo 자료전송 프로세서 실행중입니다 → 30초 대기합니다 [퇴근시, 프로그램 종료 부탁드립니다]
	goto Running
) else (
	echo 자료전송 프로세서가 중단되어 다시 실행합니다.
	goto Execute_mdmAG
)

:Running
timeout 30
cls
goto Check

:Execute_mdmAG
c:
cd C:\Program Files (x86)\secuEver\mdmAg\
mdmAgStarterNac.exe
timeout 10
cls
goto Check
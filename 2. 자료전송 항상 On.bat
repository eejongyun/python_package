@echo off 
:Check
tasklist | FIND  "mdmAg.exe" > NUL
if not errorlevel 1 (
	echo �ڷ����� ���μ��� �������Դϴ� �� 30�� ����մϴ� [��ٽ�, ���α׷� ���� ��Ź�帳�ϴ�]
	goto Running
) else (
	echo �ڷ����� ���μ����� �ߴܵǾ� �ٽ� �����մϴ�.
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
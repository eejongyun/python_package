:::::: ��ġ���� ���ڵ� ANSI (�ѱ������)

@echo off
set foldername=%cd%\package
set folder_Sum=%cd%\Package_Sum

::ȭ������
cls

:::::::::Package_Sum ���� ������ ������ְ�
if not exist %folder_Sum% (
	echo Package�� ����� Package_Sum ������ ����ϴ�.
	mkdir Package_Sum
)
echo.
echo.


::::::::�̹� ������ ������ ����ġ���
IF EXIST %foldername% (
	echo �ٿ�ε� ���� Package�� Package_Sum ������ �̵��մϴ�.
	move /Y Package\*.* Package_Sum
) else (
:: package ������ ������ ������ְ�
	echo package ���� ��� �����
	mkdir package
)
echo.
echo.

::::::python ��Ű�� �ٿ�ε�
cd package
pip freeze > requirements.txt
pip download -r requirements.txt
cd ..
echo.
echo.


:::::: ��Ű�� ��ġ��
echo �ٿ�ε� ���� Package�� Package_Sum�� �����ݴϴ�. 
move /Y Package\*.* Package_Sum
echo.
echo.

::::::::::: ����
echo �ٿ�ε� ���� ��Ű������ �����մϴ�.
7z a Package.7z Package_Sum "4.Python_��Ű�� ��ġ.bat"
echo.
echo.

::Ȯ���� ������
echo ���θ����� ������ �ְ� Ȯ���ڸ� �����ݴϴ�.
if exist Package_%DATE% (
	del Package_%DATE%
	ren Package.7z Package_%DATE%
) else (
	ren Package.7z Package_%DATE%
)
::color ���� ���ڻ�
::0�� 		1�� 2�� 3û 4�� 5���� 6�� 7�� 8ȸ��
:: 9~E ���� 	9�� a�� bû c�� d���� e�� f��
color 0c
echo ��������
echo ________$$$$
echo _______$$__$
echo _______$___$$
echo _______$___$$
echo _______$$___$$
echo ________$____$$
echo ________$$____$$$
echo _________$$_____$$
echo _________$$______$$
echo __________$_______$$
echo ____$$$$$$$________$$
echo __$$$_______________$$$$$$
echo _$$____$$$$____________$$$
echo _$___$$$__$$$____________$$
echo _$$________$$$____________$
echo __$$____$$$$$$____________$
echo __$$$$$$$____$$___________$
echo __$$_______$$$$___________$
echo ___$$$$$$$$$__$$_________$$
echo ____$________$$$$_____$$$$
echo ____$$____$$$$$$____$$$$$$
echo _____$$$$$$____$$__$$
echo _______$_____$$$_$$$
echo ________$$$$$$$$$$

echo �Ϸ� �Ǿ����ϴ�. ���� Ȯ���ڴ� .7z�Դϴ� 7zip�� ����Ͽ� Ǯ���ָ� �˴ϴ�. 
echo.
echo.
echo.
color 07

xcopy Package_%DATE% O:\����������\













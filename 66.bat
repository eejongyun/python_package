@echo off
set foldername=%cd%\package
set folder_Sum=%cd%\Package_Sum

::Package_Sum ���� ������ ������ְ�
if not exist %folder_Sum% (
	mkdir Package_Sum
)

::�̹� ������ ������ ����ġ���
IF EXIST %foldername% (
	echo package ���� Ȯ��
	move /Y Package\*.* Package_Sum
) else (
:: package ������ ������ ������ְ�
	echo package ���� ��� �����
	mkdir package
)
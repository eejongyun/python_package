@echo off
set foldername=%cd%\package
set folder_Sum=%cd%\Package_Sum

::Package_Sum 폴더 없으면 만들어주고
if not exist %folder_Sum% (
	mkdir Package_Sum
)

::이미 폴더가 있으면 갈아치우기
IF EXIST %foldername% (
	echo package 폴더 확인
	move /Y Package\*.* Package_Sum
) else (
:: package 폴더가 없으면 만들어주고
	echo package 폴더 없어서 만들기
	mkdir package
)
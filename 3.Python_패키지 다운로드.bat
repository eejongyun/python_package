:::::: 배치파일 인코딩 ANSI (한글적용됨)

@echo off
set foldername=%cd%\package
set folder_Sum=%cd%\Package_Sum

::화면정리
cls

:::::::::Package_Sum 폴더 없으면 만들어주고
if not exist %folder_Sum% (
	echo Package가 저장될 Package_Sum 폴더를 만듭니다.
	mkdir Package_Sum
)
echo.
echo.


::::::::이미 폴더가 있으면 갈아치우기
IF EXIST %foldername% (
	echo 다운로드 받은 Package를 Package_Sum 폴더로 이동합니다.
	move /Y Package\*.* Package_Sum
) else (
:: package 폴더가 없으면 만들어주고
	echo package 폴더 없어서 만들기
	mkdir package
)
echo.
echo.

::::::python 패키지 다운로드
cd package
pip freeze > requirements.txt
pip download -r requirements.txt
cd ..
echo.
echo.


:::::: 패키지 합치기
echo 다운로드 받은 Package와 Package_Sum을 합쳐줍니다. 
move /Y Package\*.* Package_Sum
echo.
echo.

::::::::::: 압축
echo 다운로드 받은 패키지들을 압축합니다.
7z a Package.7z Package_Sum "4.Python_패키지 설치.bat"
echo.
echo.

::확장자 날리기
echo 내부망으로 보낼수 있게 확장자를 날려줍니다.
if exist Package_%DATE% (
	del Package_%DATE%
	ren Package.7z Package_%DATE%
) else (
	ren Package.7z Package_%DATE%
)
::color 배경색 글자색
::0검 		1파 2녹 3청 4빨 5자주 6노 7흰 8회색
:: 9~E 연한 	9파 a녹 b청 c빨 d자주 e노 f흰
color 0c
echo 구으ㅡ읏
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

echo 완료 되었습니다. 본래 확장자는 .7z입니다 7zip을 사용하여 풀어주면 됩니다. 
echo.
echo.
echo.
color 07

xcopy Package_%DATE% O:\보낼파일함\













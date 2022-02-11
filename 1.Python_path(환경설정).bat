@echo on
rem 한글깨짐은 ANSI로 인코딩 변경해야됨
rem 여기에서 추가ㅇㅇ
set root=C:\Users\PC\AppData\Local\Programs\Python\Python38\Scripts
set SevenZip=C:\Program Files\7-Zip

rem 여기에서 추가하면됨
set ADD_PATH=%%python%%;%%SevenZip%%


rem 개별적으로 추가
setx python "%root%" -m
setx SevenZip "%SevenZip%" -m

rem PATH에추가
setx path "%ADD_PATH%;%path%" -m

pause


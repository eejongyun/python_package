@echo on
rem �ѱ۱����� ANSI�� ���ڵ� �����ؾߵ�
rem ���⿡�� �߰�����
set root=C:\Users\PC\AppData\Local\Programs\Python\Python38\Scripts
set SevenZip=C:\Program Files\7-Zip

rem ���⿡�� �߰��ϸ��
set ADD_PATH=%%python%%;%%SevenZip%%


rem ���������� �߰�
setx python "%root%" -m
setx SevenZip "%SevenZip%" -m

rem PATH���߰�
setx path "%ADD_PATH%;%path%" -m

pause


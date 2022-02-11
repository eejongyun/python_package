@echo off
color 02
echo Package_Sum 폴더에 있는 "requirements.txt"에 적혀있는 리스트로 설치를 합니니다.                                  
pip install --no-index --find-links Package_Sum -r Package_Sum\requirements.txt
color
echo 설치완료
pause
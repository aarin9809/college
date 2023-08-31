#week10_chap06_test
import webbrowser
import time

url = input("url 입력 : ")
webbrowser.open("http://"+url)  # default browser
time.sleep(3)  # delay
webbrowser.open("http://www.inhatc.ac.kr")
@echo off
set /p "link=Enter YT Link: "
py -m yt_dlp "%link%"
pause

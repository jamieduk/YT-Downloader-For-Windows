@echo off
cls
winget install --id Gyan.FFmpeg.Essentials -e
py -m pip install -U "yt-dlp[default]"

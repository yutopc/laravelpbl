@echo off
echo youtube-dl use?
set undert-input_url=
set undert-TITLE=

:INPUT_URL
echo HELLO INPUT_URL:
set undert-input_url=
set /p undert-input_url=

IF "%undert-input_url%"=="" GOTO :INPUT_URL

:INPUT_URL_CHECK
echo DOWNLOAD URL THIS TITLE?:
youtube-dl -e %undert-input_url%

:DOWNLOAD_START
youtube-dl %undert-input_url% -o "DL\%%(title)s.%%(ext)s" -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]"
start2.bat
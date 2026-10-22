@echo off

mediainfo video_1.mp4 > video_1.info.txt
mediainfo video_1_18kbs.mp4 > video_1_18kbs.info.txt

echo cti novy soubor "video_1.info.txt"
echo cti novy soubor "video_1_18kbs.info.txt"

pause


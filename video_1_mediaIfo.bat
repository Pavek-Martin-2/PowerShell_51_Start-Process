@echo off

mediainfo video_1.mp4 > video_1.info.txt
mediainfo video_1_149kbs.mp4 > video_1_149kbs.info.txt
mediainfo video_1_75kbs.mp4 > video_1_75kbs.info.txt
mediainfo video_1_37kbs.mp4 > video_1_37kbs.info.txt
mediainfo video_1_18kbs.mp4 > video_1_18kbs.info.txt

echo cti nove soubory "video_1_*kbs.info.txt"

pause


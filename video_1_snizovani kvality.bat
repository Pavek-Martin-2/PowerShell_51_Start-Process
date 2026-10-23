@echo off
ffmpeg -i video_1.mp4 -b:v 149k -c:a copy video_1_149kbs.mp4 -y
ffmpeg -i video_1.mp4 -b:v 75k -c:a copy video_1_75kbs.mp4 -y
ffmpeg -i video_1.mp4 -b:v 37k -c:a copy video_1_37kbs.mp4 -y
ffmpeg -i video_1.mp4 -b:v 18k -c:a copy video_1_18kbs.mp4 -y

pause


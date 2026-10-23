cls

# prahraje v mpv ctyri videa najednou, u kazdeho videa je volba pozice na obrazovce (--geometry=)
# vice informaci v souboru "mpv_pozice_okna_videa.txt"

$kod1 = @"
mpv.com -osd-level=0 --msg-level=all=no --window-scale=1.0 --geometry=+0+20% -loop -mute "video_1.mp4"
"@
<#
poznamka k videu "video_1.mp4", v prehravaci mpv je klavesa "[" a klavesa "]" urcena pro zrychleni 
a nebo spomaleni rychlosti prehravani dale pak klavesa "Backspace" vraci puvodni (dafaultni) rychlost 1.0
takovej muj mozna postreh, video obliceje neni prilis kvalitni, je to video krery bylo kdysi vyrendrovani
jeste ve starym 3DS4 studiu ktery bezelo jeste pod systemem MS-Dos, takze ma nizky rozliseni ale i presto ta
iluze jak je  vydet tam stale funguje co to znamena ...
ve smyslu toho ze si tam clovek vlastne nejni az tak podobnej ...
soubor "video_1.mp4" ma rozliseni 640x400 pixelu a bitrate (potazmo kvalitu ) ma ( dle mediainfo ) 298 kb/s

PS: koukal jsem a jeste u bitrate 37kbs ( a na rychlosti v podstate nezalezi ) je "smyslovej kam" vyditelnej
u 18kbs uz asi nejni

mpv -fs -osd-level=0 -loop -speed=3.0 video_1_37kbs.mp4
REM tady jeste jo 

mpv -fs -osd-level=0 -loop -speed=3.0 video_1_18kbs.mp4
REM ale tady uz to poznat nejni

prikazy postupne snizovani kvality u souboru "video_1.mp4" vzdycky o polovinu v kazdem kroku

ffmpeg -i video_1.mp4 -b:v 149k -c:a copy video_1_149kbs.mp4 -y
ffmpeg -i video_1.mp4 -b:v 75k -c:a copy video_1_75kbs.mp4 -y
ffmpeg -i video_1.mp4 -b:v 37k -c:a copy video_1_37kbs.mp4 -y
ffmpeg -i video_1.mp4 -b:v 18k -c:a copy video_1_18kbs.mp4 -y

#>

$kod2 = @"
mpv.com -osd-level=0 --msg-level=all=no --window-scale=2.0 --geometry=-0+10% -loop -mute video_2.mp4
"@

$kod3 = @"
mpv.com -osd-level=0 --msg-level=all=no --window-scale=1.5 --geometry=-50%-10% --speed=0.5 -loop video_3.mp4
"@

<#
$kod4 = @"
mpv.com -osd-level=0 --msg-level=all=no --autofit=25% --geometry=+10%-20% --speed=3.0 -loop video_4.mp4
"@
#>


$kod4 = ""
$kod4 += "mpv.com "
$kod4 += "-osd-level=0 "
$kod4 += "--msg-level=all=no "
$kod4 += "--autofit=25% "
$kod4 += "--geometry=+10%-20% "
$kod4 += "--speed=3.0 "
$kod4 += "-loop "
$kod4 += "video_4.mp4"


$cekej = 100
# toto jsou skripy $kod1 - $kod4 spustene jako samostatne procesy pod hlavnim skriptem
# zavreni hlavniho okna zavre vsechna videa a nebo zavrenim videi se ukonci hlavni skript
Start-Process powershell.exe -NoNewWindow -ArgumentList "-command `"$kod1`""
sleep -Milliseconds $cekej
Start-Process powershell.exe -NoNewWindow -ArgumentList "-command `"$kod2`""
sleep -Milliseconds $cekej
Start-Process powershell.exe -NoNewWindow -ArgumentList "-command `"$kod3`""
sleep -Milliseconds $cekej
Start-Process powershell.exe -NoNewWindow -ArgumentList "-command `"$kod4`""

echo "toto je hlavni skript"
sleep 5


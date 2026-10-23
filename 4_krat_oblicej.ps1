cls

# 4 x "smyslovej klam", levej horni roh bude 149kbs dale pak pravej horni roh bude polovina tzn. 75kbs
# a dole vpravo bude zase polovina tj. 37kbs a posledni vlevo dole je 18kbs
# dale se da hejbat jak je zde vydet z parametrama --speed= ( default je 1 )
# tak kdyby si chtel nekdo "pohrat"
# ja bych rekl ze toho posledniho 18kbs ze uz to poznat nejni, 37kbs jeste jo
# ze vlastne takhle velkou nepresnost to jeste pozna a tedko proc, je to nahoda
# asi nejni, ze by nejakej dalsi apendix, ja sem presvedcenej ze dat tam vopici misto toho, tak by to bylo
# to samy, vymodelovat v nejaky 3D programu nebo autoCadu apod. hlavu vopice treba, me napdlo :)
# proste si rikam si proc nejit jeste dal v tomhle tom badani
# a co tomu brani
# PS: nebo neakyho biologickyho predchudce moderniho cloveka, zkusit aby se ukazalo co se v nas jeste skryva
# rekl bych ze toho bude vic, nebo lepe receno sem vo to tom presvedcenej

# jo uz sem si vzpomel Homo Erektus, uz vim :) ale zacal by sem tou vopici, ta me pride tak jako zasadni,ňák
# urcite by treba zoo Praha, kdyz by to bylo na vedeckej experiment rada nejakou zapujcila,
# do laboratore mysli aby ji mohl bejt udelanej oblicejovej sken :) 
# ja si mysli ze tady mame rezervy este, jak by vopatrne rekli soudruzi :)

$kod1 = @"
mpv.com -osd-level=0 --msg-level=all=no --geometry=+0+0 --speed=2.5 -loop video_1_149kbs.mp4
"@

$kod2 = @"
mpv.com -osd-level=0 --msg-level=all=no --geometry=-0+0 --speed=2 -loop video_1_75kbs.mp4
"@

$kod3 = @"
mpv.com -osd-level=0 --msg-level=all=no --geometry=+0-0 --speed=2.5 -loop video_1_37kbs.mp4
"@

$kod4 = @"
mpv.com -osd-level=0 --msg-level=all=no --geometry=-0-0 --speed=3 -loop video_1_18kbs.mp4
"@


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

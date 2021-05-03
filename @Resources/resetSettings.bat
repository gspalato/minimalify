
:vars
set playerIndex=0
set playerName=Unknown
set playerF=Unknown
set version=2.0
set scale=1.0
set cornerRadius=(12*#scale#)
set showWelcome=1
set accent=1DB954
set font=Proxima Nova
set fontBold=Proxima Nova Bold
set fontSemibold=Proxima Nova Semibold
set NowPlayingSet=WebNowPlaying
set defaultTitle=Minimalify
set defaultArtist=Welcome back!
set defaultArtwork=#@#artworkBackground.png

:start
@echo off
cls
echo.
echo Resetting Minimalify settings...

echo. > vars.ini
echo [Variables]>> vars.ini
echo playerIndex=%playerIndex% >> vars.ini
echo playerName=%playerName%>> vars.ini
echo playerF=%playerF%>> vars.ini
echo version=%version%>> vars.ini
echo scale=%scale%>> vars.ini
echo cornerRadius=%cornerRadius%>> vars.ini
echo showWelcome=%showWelcome% >> vars.ini
echo accent=%accent%>> vars.ini
echo font=%font%>> vars.ini
echo fontBold=%fontBold%>> vars.ini
echo fontSemibold=%fontSemibold%>> vars.ini
echo NowPlayingSet=%NowPlayingSet%>> vars.ini
echo defaultTitle=%defaultTitle%>> vars.ini
echo defaultArtist=%defaultArtist%>> vars.ini
echo defaultArtwork=%defaultArtwork%>> vars.ini

echo.
echo Done!
echo Press any key to close.
pause > nul
exit
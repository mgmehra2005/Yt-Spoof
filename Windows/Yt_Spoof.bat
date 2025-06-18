@echo off
:start
cls
echo Welcome to YT-Spoof

echo Select Source
echo 1. Download from Youtube
echo 2. Download from Spotify
echo 3. Install yt-dlp (Windows)
echo 4. Exit
echo 5. Update

set /P choice=">> "

IF /I "%choice%"=="1" ( 
	echo Source Selected : Youtube 
	echo 1. Download Audio
	echo 2. Download Video
	set /P yt_choice=">> "
	
	IF /I "%yt_choice%"=="1" (
		cls
		echo Source Selected : Youtube - Audio
		set /P link="Audio Link : "
		yt-dlp -f bestaudio -x --embed-metadata --embed-thumbnail %link%
		pause
		goto start 
	) ELSE IF /I "%yt_choice%" == "2" (

		cls
		echo Source Selected : Youtube - Video
		set /P vlink="Video Link : "
		yt-dlp -f bestaudio+bestvideo --merge-output-format mkv --embed-metadata --embed-thumbnail %vlink% 
		pause
		goto start 
	) ELSE (
		echo "Wrong input"
		goto start 
	) 
) ELSE IF /I "%choice%"=="2" (
		cls
		echo Source Selected : Spotify
		set /P slink="Song Link : "
		spotify_dl -l %slink%
		pause
		goto start 
) ELSE IF /I "%choice%"=="4" (

		echo "Thanks For Using This Program"
		exit 
) ELSE IF /I "%choice%" =="3" (
			echo Installing Yt-dlp using winget
			winget install yt-dlp 
) ELSE IF /I "%choice%"=="5" (
			echo Updating ( Donot interrupt during update )
			del Yt_Spoof.bat
			wget https://raw.githubusercontent.com/mgmehra2005/Yt-Spoof/refs/heads/main/Yt_Spoof.sh
			echo Update Complete
			pause 
) ELSE (
		echo "Sorry! Wrong Input"
		goto start 
)

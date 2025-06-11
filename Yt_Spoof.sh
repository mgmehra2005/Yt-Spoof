#!/bin/bash

#export SPOTIPY_CLIENT_ID=' '
#export SPOTIPY_CLIENT_SECRET=' '

getYoutubeVideo() {
yt-dlp $1
}


getYoutubeAudio() {
yt-dlp -x --audio-format mp3 $1
}

getSpotifyAudio() {
spotify_dl -l $1
}

printAsciiArt() {
	echo " __   __  ______        ____    ____    _____   _____   ____   " | lolcat
	echo "/\ \ /\ \/\__ _\      /\ _\`\ /\ _\`\ /\ __\`\/\ __\`\/\ _\`\  "	| lolcat
	echo "\ \`\`\\/ /\/_/\ \/      \ \,\L\_\ \ \L\ \ \ \/\ \ \ \/\ \ \ \L\_\ " | lolcat
	echo " \ \`\ /   \ \ \        \/_\__ \\ \ ,__/\ \ \ \ \ \ \ \ \ \ _\/ "	| lolcat
	echo "  \`\ \ \   \ \ \          /\ \L\ \ \ \/  \ \ \_\ \ \ \_\ \ \/  " | lolcat
	echo "    \ \_\   \ \_\          \`\____\ \_\   \ \_____\ \_____\ \_\  " | lolcat
	echo "     \/_/    \/_/            \/_____/\/_/    \/_____/\/_____/\/_/  " | lolcat 
	echo "    Created by : @mgmehra2005        Follow on Git" | lolcat 
	echo ""

}

printAsciiArt
echo 1. Youtube
echo 2. Spotify

read -p ">> " choice
clear

if [[ $choice -eq 1 ]]; then
	printAsciiArt
	echo "Selected Platform Youtube"
	echo ""
	echo 1. Audio
	echo 2. Video
	read -p ">> " yt_choice
	clear

	if [[ $yt_choice -eq 1 ]]; then
		printAsciiArt
		echo "Selected Platform Youtube Downlaoding Audio"
		echo ""
		read -p "Audio File Link : " link
		getYoutubeAudio $link

	elif [[ $yt_choice -eq 2 ]]; then
		printAsciiArt
		echo "Selected Platform Youtube Downlaoding Video"
		echo ""
		read -p "Video File Link : " link
		getYoutubeVideo $link

	else
		echo Wrong User Input

	fi

elif [[ $choice -eq 2 ]]; then
	printAsciiArt
	echo "Selected Platform Spotify Downlaoding Audio"
	echo ""
	read -p "Audio File Link : " link
	getSpotifyAudio $link
else
	echo Wrong User Input
	exit 0
fi

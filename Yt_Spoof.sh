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

echo " __   __  ______        ____    ____    _____   _____   ____   "
echo "/\ \ /\ \/\__ _\      /\ _\`\ /\ _\`\ /\ __\`\/\ __\`\/\ _\`\  "
echo "\ \`\`\\/ /\/_/\ \/      \ \,\L\_\ \ \L\ \ \ \/\ \ \ \/\ \ \ \L\_\ "
echo " \ \`\ /   \ \ \        \/_\__ \\ \ ,__/\ \ \ \ \ \ \ \ \ \ _\/ "
echo "  \`\ \ \   \ \ \          /\ \L\ \ \ \/  \ \ \_\ \ \ \_\ \ \/  "
echo "    \ \_\   \ \_\          \`\____\ \_\   \ \_____\ \_____\ \_\  "
echo "     \/_/    \/_/            \/_____/\/_/    \/_____/\/_____/\/_/  "
echo "    Created by : @mgmehra2005        Follow on Git"
echo ""

echo 1. Youtube
echo 2. Spotify

read -p ">> " choice
clear

if [[ $choice -eq 1 ]]; then
	echo "Selected Platform Youtube"
	echo ""
	echo 1. Audio
	echo 2. Video
	read -p ">> " yt_choice
	clear

	if [[ $yt_choice -eq 1 ]]; then
		echo "Selected Platform Youtube Downlaoding Audio"
		echo ""
		read -p "Audio File Link : " link
		getYoutubeAudio $link

	elif [[ $yt_choice -eq 2 ]]; then
		echo "Selected Platform Youtube Downlaoding Video"
		echo ""
		read -p "Video File Link : " link
		getYoutubeVideo $link

	else
		echo Wrong User Input

	fi

elif [[ $choice -eq 2 ]]; then
	echo "Selected Platform Spotify Downlaoding Audio"
	echo ""
	read -p "Audio File Link : " link
	getSpotifyAudio $link
else
	echo Wrong User Input
	exit 0
fi

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

echo 1. Youtube
echo 2. Spotify

read -p ">> " choice
clear

if [[ $choice -eq 1 ]]; then
	echo 1. Audio
	echo 2. Video
	read -p ">> " yt_choice
	clear

	if [[ $yt_choice -eq 1 ]]; then
		read -p "Audio File Link : " link
		getYoutubeAudio $link

	elif [[ $yt_choice -eq 2 ]]; then
		read -p "Video File Linke : " link
		getYoutubeVideo $link

	else
		echo Wrong User Input

	fi

elif [[ $choice -eq 2 ]]; then
	read -p "Audio File Link : " link
	getSpotifyAudio $link
else
	echo Wrong User Input
fi

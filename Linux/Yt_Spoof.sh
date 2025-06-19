#!/bin/bash

# Dependency check
for cmd in yt-dlp spotify_dl lolcat; do
    if ! command -v $cmd &>/dev/null; then
        echo "Error: $cmd is not installed. Please install it first."
        exit 1
    fi
done

getYoutubeVideo() {
    yt-dlp -f bestaudio+bestvideo --merge-output-format mkv --embed-metadata --embed-thumbnail "$1"
    if [[ $? -ne 0 ]]; then echo "Video download failed!"; fi
}

getYoutubeAudio() {
    yt-dlp -x -f bestaudio --embed-metadata --embed-thumbnail "$1"
    if [[ $? -ne 0 ]]; then echo "Audio download failed!"; fi
}

getSpotifyAudio() {
    spotify_dl -l "$1"
    if [[ $? -ne 0 ]]; then echo "Spotify download failed!"; fi
}

printAsciiArt() {
    echo " __   __  ______        ____    ____    _____   _____   ____   " | lolcat
    echo "/\ \ /\ \/\__ _\      /\ _\`\ /\ _\`\ /\ __\`\/\ __\`\/\ _\`\  " | lolcat
    echo "\ \`\`\\/ /\/_/\ \/      \ \,\L\_\ \ \L\ \ \ \/\ \ \ \/\ \ \ \L\_\ " | lolcat
    echo " \ \`\ /   \ \ \        \/_\__ \\ \ ,__/\ \ \ \ \ \ \ \ \ \ _\/ " | lolcat
    echo "  \`\ \ \   \ \ \          /\ \L\ \ \ \/  \ \ \_\ \ \ \_\ \ \/  " | lolcat
    echo "    \ \_\   \ \_\          \`\____\ \_\   \ \_____\ \_____\ \_\  " | lolcat
    echo "     \/_/    \/_/            \/_____/\/_/    \/_____/\/_____/\/_/  " | lolcat 
    echo "    Created by : @mgmehra2005        Follow on Git" | lolcat 
    echo ""
}

while true; do
    clear
    printAsciiArt
    echo "1. Youtube"
    echo "2. Spotify"
    echo "3. Exit"
    read -p ">> " choice
    clear

    case "$choice" in
        1)
            printAsciiArt
            echo "Selected Platform: Youtube"
            echo ""
            echo "1. Audio"
            echo "2. Video"
            read -p ">> " yt_choice
            clear

            case "$yt_choice" in
                1)
                    printAsciiArt
                    echo "Selected Platform: Youtube Downloading Audio"
                    echo ""
                    read -p "Audio File Link: " link
                    getYoutubeAudio "$link"
                    ;;
                2)
                    printAsciiArt
                    echo "Selected Platform: Youtube Downloading Video"
                    echo ""
                    read -p "Video File Link: " link
                    getYoutubeVideo "$link"
                    ;;
                *)
                    echo "Wrong User Input"
                    ;;
            esac
            read -p "Press Enter to continue..." ;;
        2)
            printAsciiArt
            echo "Selected Platform: Spotify Downloading Audio"
            echo ""
            read -p "Audio File Link: " link
            getSpotifyAudio "$link"
            read -p "Press Enter to continue..." ;;
        3)
            echo "Thanks for using YT-Spoof!"
            exit 0 ;;
        *)
            echo "Wrong User Input"
            read -p "Press Enter to continue..." ;;
    esac
done

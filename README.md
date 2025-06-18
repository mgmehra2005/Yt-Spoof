# 📹🎶 YT-SPOOF: Your Ultimate Media Downloader! 🚀

Tired of juggling multiple tools to download your favorite YouTube videos, audios, and Spotify tracks? Look no further! YT-SPOOF is a powerful Bash script that leverages the magic of `yt-dlp` and `spotify_dl` to bring all your media downloads under one roof. 🥳

## ✨ Features

* **Download YouTube Videos & Audios:** Get your favorite YouTube content in various formats.
* **Download Spotify Audios:** Grab your Spotify playlists and tracks with ease.
* **Simple & Efficient:** A single Bash script to streamline your download process.
* **Linux-Only:** Built specifically for Linux environments to ensure optimal performance.

## ⚠️ Important Spotify Configuration!

Before you can download from Spotify, you **MUST** configure your Spotify API credentials.

```bash
# Uncomment and add your Spotify Client ID and Spotify Client Secret in yt-spoof.sh file to download songs from spotify
```

## 🛠️ Prerequisites

This script relies on two amazing tools: `yt-dlp` and `spotify_dl`. Make sure you have them installed on your Linux system.

### Installing `yt-dlp`

You can install `yt-dlp` using `pip`:

```bash
pip install yt-dlp
```

For more installation options and the latest information, refer to the official `yt-dlp` GitHub repository: [https://github.com/yt-dlp/yt-dlp](https://github.com/yt-dlp/yt-dlp)

### Installing `spotify_dl`

You can also install `spotify_dl` using `pip`:

```bash
pip install spotify_dl
```

For more details, check out the `spotify_dl` GitHub repository: [https://github.com/SaptarshiSarkar12/spotify-dl](https://www.google.com/search?q=https://github.com/SaptarshiSarkar12/spotify-dl)

### Installing `lolcat`
( For Linux Only )
You can also install `lolcat` using:

```bash
# For Debian Based Systems
sudo apt install lolcat

# For Arch Based Systems
sudo pacman -Sy lolcat
```

For more details, check out the `lolcat` Github repository: [https://github.com/busyloop/lolcat](https://github.com/busyloop/lolcat)

## 🚀 How to Use

### For Linux

1.  **Clone the Repository:**

    ```bash
    git clone https://github.com/mgmehra2005/Yt-Spoof.git
    cd Yt-Spoof/Linux
    ```

2.  **Make the Script Executable:**

    ```bash
    chmod +x yt-spoof.sh
    ```

3.  **Configure Spotify (Crucial\!):**
    Open the `yt-spoof.sh` file in your favorite text editor and uncomment the lines for `SPOTIPY_CLIENT_ID` and `SPOTIPY_CLIENT_SECRET`. Replace the placeholder values with your actual Spotify application credentials.

    ```bash
    # export SPOTIPY_CLIENT_ID="YOUR_SPOTIPY_CLIENT_ID"
    # export SPOTIPY_CLIENT_SECRET="YOUR_SPOTIPY_CLIENT_SECRET"
    ```

    *If you don't have Spotify API credentials, you'll need to create a Spotify Developer account and an application to get them.*

4.  **Run the Script:**

    ```bash
    ./yt-spoof.sh
    ```

### For Windows

1.  **Clone the Repository:**

    ```bash
    git clone https://github.com/mgmehra2005/Yt-Spoof.git
    cd Yt-Spoof/Windows
    ```

2.  **Run the Script:**

    ```bash
    ./yt-spoof.bat
    ```

    *If you don't have Spotify API credentials, you'll need to create a Spotify Developer account and an application to get them.*


    The script will then guide you through the options for downloading YouTube videos/audios or Spotify audios.

## 🤝 Contributing

Feel free to contribute to this project\! If you have any suggestions, bug reports, or want to add new features, please open an issue or submit a pull request.


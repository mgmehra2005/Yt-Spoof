@echo off
setlocal

:check_dependencies
where yt-dlp >nul 2>&1 || echo Warning: yt-dlp not found. Please install it.
where spotify_dl >nul 2>&1 || echo Warning: spotify_dl not found. Please install it.
where wget >nul 2>&1 || echo Warning: wget not found. Please install it.
where winget >nul 2>&1 || echo Warning: winget not found. Please install it.

:start
cls
echo ================================
echo      Welcome to YT-Spoof
echo ================================
echo.
echo Select Source:
echo   1. Download from Youtube
echo   2. Download from Spotify
echo   3. Install yt-dlp (Windows)
echo   4. Exit
echo   5. Update
echo.

set /P choice=">> "

IF /I "%choice%"=="1" (
    echo.
    echo Source Selected: Youtube
    echo   1. Download Audio
    echo   2. Download Video
    set /P yt_choice=">> "

    IF /I "%yt_choice%"=="1" (
        cls
        echo Source Selected: Youtube - Audio
        set /P link="Audio Link: "
        yt-dlp -f bestaudio -x --embed-metadata --embed-thumbnail %link%
        pause
        goto start
    ) ELSE IF /I "%yt_choice%"=="2" (
        cls
        echo Source Selected: Youtube - Video
        set /P vlink="Video Link: "
        yt-dlp -f bestaudio+bestvideo --merge-output-format mkv --embed-metadata --embed-thumbnail %vlink%
        pause
        goto start
    ) ELSE (
        echo Wrong input.
        pause
        goto start
    )
) ELSE IF /I "%choice%"=="2" (
    cls
    echo Source Selected: Spotify
    set /P slink="Song Link: "
    spotify_dl -l %slink%
    pause
    goto start
) ELSE IF /I "%choice%"=="3" (
    echo Installing yt-dlp using winget...
    winget install yt-dlp
    echo Please restart this script after installation.
    pause
    exit
) ELSE IF /I "%choice%"=="4" (
    echo Thanks for using this program.
    exit
) ELSE IF /I "%choice%"=="5" (
    echo Updating (Do not interrupt during update)...
    del Yt_Spoof.bat
    wget https://raw.githubusercontent.com/mgmehra2005/Yt-Spoof/refs/heads/main/Windows/Yt_Spoof.bat -O Yt_Spoof.bat
    echo Update complete. Please restart the script.
    pause
    exit
) ELSE (
    echo Sorry! Wrong input.
    pause
    goto start
)

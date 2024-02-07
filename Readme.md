# Find Files Without Audio

## Overview
This simple Bash script checks video files within a specified directory for audio tracks. If a video file lacks an audio track, the script moves it to a `no_audio` subdirectory within its original location. It supports several video formats including MP4, AVI, MOV, and MKV.

## Requirements
- FFmpeg: The script uses `ffprobe` from the FFmpeg suite to inspect audio streams in video files. Ensure FFmpeg is installed and `ffprobe` is available in your system's PATH.

## Usage
1. Open a terminal.
2. Navigate to the directory containing the script.
3. Run the script with the directory you want to check as the argument:
   ```bash
   ./find-files-without-audio.sh /path/to/directory
   ```
Replace `/path/to/directory` with the actual path where your video files are stored.

The script will recursively search through the specified directory for video files with the extensions .mp4, .avi, .mov, and .mkv. If a video file does not contain an audio track, it will be moved to a `no_audio` subdirectory within its original directory, and a message will be printed to the console.

## Note
This script does not alter the video files other than moving those without audio to a different directory. Ensure you have the necessary permissions to read and write in the directories you're working with.

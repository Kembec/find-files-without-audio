#!/bin/bash

SEARCH_DIR="$1"

has_audio() {
    ffprobe -v error -select_streams a -show_entries stream=codec_name -of default=noprint_wrappers=1:nokey=1 "$1" | grep -q .
}

export -f has_audio

for ext in mp4 avi mov mkv; do
    find "$SEARCH_DIR" -type f -name "*.$ext" -exec bash -c 'file="$0"; if ! has_audio "$file"; then
        dir=$(dirname "$file")
        no_audio_dir="${dir}/no_audio"
        mkdir -p "$no_audio_dir"
        mv "$file" "$no_audio_dir"
        echo "Moved to no_audio: $file"
    fi' {} \;
done

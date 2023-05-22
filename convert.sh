#!/bin/bash

input_folder="."
output_folder="."

# Iterate over each file in the input folder
for file in "$input_folder"/*.wav; do
    # Extract the file name without extension
    filename=$(basename "$file" .wav)
    # Construct the output file path
    output_file="$output_folder/$filename.mp3"

    # Convert WAV to MP3 using FFmpeg
    ffmpeg -y -i "$file" "$output_file"
done

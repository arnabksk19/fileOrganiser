#!/bin/bash

# List of file extensions with their corresponding categories
file_extensions=(
    ".jpg"
    ".jpeg"
    ".png"
    ".gif"
    ".bmp"
    ".tiff"
    ".svg"
    ".pdf"
    ".doc"
    ".docx"
    ".xls"
    ".xlsx"
    ".ppt"
    ".pptx"
    ".txt"
    ".csv"
    ".html"
    ".css"
    ".js"
    ".json"
    ".xml"
    ".zip"
    ".rar"
    ".7z"
    ".tar"
    ".gz"
    ".mp3"
    ".wav"
    ".flac"
    ".aac"
    ".ogg"
    ".mp4"
    ".avi"
    ".mkv"
    ".mov"
    ".wmv"
    ".flv"
    ".mpeg"
    ".psd"
    ".ai"
    ".eps"
    ".indd"
    ".raw"
    ".heic"
    ".c"
    ".cpp"
    ".java"
    ".py"
    ".rb"
    ".php"
    ".swift"
    ".go"
    ".kt"
    ".r"
    ".m"
    ".sql"
    ".db"
    ".sqlite"
)

# Loop through each file extension and create a blank file
for extension in "${file_extensions[@]}"; do
    # Create a blank file with the given extension
    touch "example${extension}"
done

echo "Blank files have been created successfully."
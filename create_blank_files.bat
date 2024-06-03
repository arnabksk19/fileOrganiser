@echo off

rem List of file extensions with their corresponding categories
set "file_extensions=.jpg .jpeg .png .gif .bmp .tiff .svg .pdf .doc .docx .xls .xlsx .ppt .pptx .txt .csv .html .css .js .json .xml .zip .rar .7z .tar .gz .mp3 .wav .flac .aac .ogg .mp4 .avi .mkv .mov .wmv .flv .mpeg .psd .ai .eps .indd .raw .heic .c .cpp .java .py .rb .php .swift .go .kt .r .m .sql .db .sqlite"

rem Loop through each file extension and create a blank file
for %%f in (%file_extensions%) do (
    rem Create a blank file with the given extension
    type nul > "example%%f"
)

echo Blank files have been created successfully.
pause

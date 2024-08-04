import os
import shutil
import sys

# Define the source directory to be organized
# Example : source_dir = '/Users/arnabkisku/Desktop/test'
# Example : python3 fileOrganiserV3.py '/Users/arnabkisku/Desktop/test'
# using command line arguments, our argument is stored in the index 1, Exclude the script name (sys.argv[0])
source_dir = sys.argv[1]  

# Create a dictionary to map file extensions to destination directories
# The key will be the file extension and the value will be the destination directory
file_extensions = {}

try:
    with open('file_extensions.txt', mode='r') as file:
        for line in file:
            line = line.strip()
            if not line or ':' not in line:
                continue  # Skip empty lines and lines without a colon
            extension, category = line.split(':', 1)
            file_extensions[extension.strip()] = category.strip()
except FileNotFoundError:
    print("The file 'file_extensions.txt' was not found.")
    exit(1)
except Exception as e:
    print(f"An error occurred while reading the .txt file: {e}")
    exit(1)

# os.listdir() will return a list of files in the directory in which we will be working on the next step
# Iterate over the files (list of files) in the source directory
for file in os.listdir(source_dir):

    # Get the file extension
    # it will return a tuple (file_name,file_extension) and will assign it to file_name and file_extension
    file_name, file_extension = os.path.splitext(file)

    # Check if the file extension exists in the mapping
    if file_extension in file_extensions:
        # Get the destination directory
        destination_dir = os.path.join(source_dir, file_extensions[file_extension])

        # Create the destination directory if it doesn't exist
        if not os.path.exists(destination_dir):
            os.makedirs(destination_dir)

        # Move the file to the destination directory
        shutil.move(os.path.join(source_dir, file), os.path.join(destination_dir, file))

# Print a message to indicate that the files have been organized
print('Files have been organized successfully!')
#last edited by Arnab
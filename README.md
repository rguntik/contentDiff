# Git Patch Creation Script

This bash script takes a directory path as an argument, creates a Git patch from the content of the directory, and copies it to your clipboard.

## Usage

1. Ensure that the script has execution permissions. If not, you can make it executable by running the command `chmod +x create_patch.sh`.

2. Run the script from the command line, providing the directory path as an argument. For example: `./create_patch.sh /path/to/your/directory`.

After running the script, the Git patch will be available in your clipboard.

## Requirements

- Git: Make sure Git is installed on your system.
- xclip: This script uses xclip to copy the patch to the clipboard. If you don't have xclip installed, you can install it on Ubuntu with the command `sudo apt-get install xclip`, or on CentOS with `sudo yum install xclip`.

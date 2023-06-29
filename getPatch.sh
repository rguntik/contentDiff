#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Please provide one argument: the path to the directory"
    exit 1
fi

dir=$1

current_dir=$(pwd)

mkdir -p ../tmppppp

cd ../tmppppp
git init

# Copy the contents of the directory from the argument to the 'tmppppp' directory, excluding the 'tmp' directory
find $dir -mindepth 1 -maxdepth 1 ! -name 'tmp' -exec cp -R {} . \;

git add .

git diff --cached | xclip -selection clipboard

git commit -m "Initial commit"

echo "The patch has been copied to the clipboard"

cd ..
rm -rf tmppppp

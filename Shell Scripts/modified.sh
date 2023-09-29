#!/bin/bash

path="/hdfs/data/data1"
name_of_directory="data1"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"

# Check if the directory exists inside the path
if [ -d "$path/$name_of_directory" ]; then
  echo "There is $name_of_directory Directory Exists!"
else
  echo "$name_of_directory Directory Not Exists!"
  mkdir -p "$path/$name_of_directory"
  echo "Created $name_of_directory Directory."
fi

# Check if the file exists in the source directory
if [ -f "$source_dir/$filename_excel" ]; then
  # Copy the file from source directory to target directory
  cp "$source_dir/$filename_excel" "$target_dir/"

  # Check if the copy was successful
  if [ $? -eq 0 ]; then
    echo "File Moved Successfully"
  else
    echo "File Move Failed"
  fi
else
  echo "File $filename_excel Not Found in $source_dir"
fi
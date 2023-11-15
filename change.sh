#!/bin/bash

for file in bible/*; do
    echo $file
    newfile=bible2/$(basename "$file")
    rm $newfile 2>/dev/null
    while read line; do
        echo $line
        sed -i "s/$line/g" "$file" >> bible2/$(basename "$file")
    done < book-list.txt
done 
#!/bin/bash
## filename variable
FILENEW=leaversexcel`date +%Y-%m-%d`.csv

## Ask for input file
read -e -p "Enter filename, use tab for completion: " file

## Run the formatting and save it to a new file
sed 's/","/ /3' "$file" | sed 's/","/ /3' | sed 's/" "/ /g'  | grep "Leaver" | awk '{print $6,$7,$8,$9,$10}'  > /tmp/$FILENEW

echo "The formatted file, is created: /tmp/$FILENEW, please import it into: LINK"

#!/bin/bash
## filename variable
FILENEW=leaversexcel`date +%Y-%m-%d`.csv

## Ask for input file
read -e -p "Enter filename, use tab for completion: " file

## Run the formatting and save it to a new file
awk '{print $8,$9,$10,$11,$12}' "$file" | sed 's/ /,/2' | sed 's/ /,/3'  | sed 's/ /./1' | sed 's/ /./1' | tr A-Z a-z  > /tmp/$FILENEW

echo "The formatted file, is created: /tmp/$FILENEW, please import it into: LINK"
 

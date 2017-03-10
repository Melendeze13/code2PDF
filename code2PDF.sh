#!/bin/bash

clear

echo "Created by Elmer Melendez"
echo -e "Script starting....\n"
echo "Please type the file you'd like to make into a PDF: "
read fileName


enscript -C --margins=50:50:50:50 $fileName -o $fileName.ps
ps2pdf $fileName.ps
rm $fileName.ps
fileName=$fileName.pdf
newName=${fileName%%.*}.pdf
mv $fileName $newName

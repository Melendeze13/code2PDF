#!/bin/bash

#script still needs commenting on how it works

#TODO add invalid syntax if user does not give -o flag
#TODO add check to make sure there is given named file
#TODO find way to allow duplicates such as .h files


clear

echo "Created by Elmer Melendez"
echo -e "Script starting....\n"

if [ $# -eq 0 ]
then
 echo No arguments provided
 echo Example: $ ./code2PDF file1 file2 file3 -o MergedName
 exit 1
fi

args=( "$@" )


for fileName in "$@"
do
if [ "$fileName" = "-o" ]; then
	n=$#
	offset=$((n-2))
	outputName=${!n}
	copy=${args[*]%.*}
	arr=($copy)
	pass=${arr[*]:0:$offset}
	pdftk ${pass//.*} output "${outputName}.pdf"
	rm ${pass//.*}

	exit 0
else
	enscript -C --margins=50:50:50:50 "$fileName" -o "$fileName.ps"
	ps2pdf "$fileName.ps"
	rm "$fileName.ps"
	fileName=$fileName.pdf
	defaultName="${fileName%%.*}"
	mv "$fileName" "$defaultName"
fi
done






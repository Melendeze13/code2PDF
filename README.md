# code2PDF
## A handy tool to make your code into a pdf

### For this script to work you will need some dependencies.

You will need the terminal commands:

* "enscript" "$ brew install enscript"

* "ps2pdf" "$ brew install ghostscript"

* "pdftk" [Download PDFtk](https://www.pdflabs.com/tools/pdftk-server/)

This tool makes your code into post script then it makes it into a pdf.

make sure you use "$ chmod +x code2PDF.sh" to make it executable.


To use: $ ./code2PDF.sh file1.c file2.c file3.c ... -o MergedName


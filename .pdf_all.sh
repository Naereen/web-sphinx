#!/bin/bash
#
#	This script is designed to be used with makePydoc, update__date__ and pylint.
#	The reference page for this software is : 
#	https://sites.google.com/site/naereencorp/liste-des-projets/makepydoc
#
#	__author__='Lilian BESSON'
#	__email__='lilian.besson@normale.fr'
#	__version__='0.1'
#	__date__='jeu. 28/03/2013 at 11h:31m:10s '
#
# A simple script to automatize the generation fo one PDF file
# from rST files, with rst2pdf

echo -e "\n\n Copying `ls *.rst` in .build/html/ ....."
mkdir --parents .build/pdf/
cp *.rst .build/pdf/
cp .style.rst2pdf .build/pdf/

oldPWD="`pwd`"
echo -e "\n Going to .build/pdf/ ....."
cd .build/pdf/

listPDFfromRSTs=""
listTEX=""
listPDFs=""

for file in *.rst
do
	echo -e "\n Examining the file '$file'..."

	rst2pdf -s ./.style.rst2pdf -l fr --default-dpi=3000 --baseurl="http://perso.crans.org/besson/" -o "${file%.rst}.fromrst.pdf" "$file" && \
	listPDFfromRSTs="$listPDFfromRSTs ${file%.rst}.fromrst.pdf" && \
	echo -e " '${file%.rst}.pdf' well generated ...."

	rst2latex -l fr --default-dpi=3000 --baseurl="http://perso.crans.org/besson/" -o "${file%.rst}.tex" "$file" && \
	listTEX="$listTEX ${file%.rst}.tex" && \
	echo -e " '${file%.rst}.tex' well generated ...."
	pdflatex "${file%.rst}.tex" && \
	listPDFs="$listPDFs ${file%.rst}.pdf" && \
	pdflatex "${file%.rst}.tex" && \
	echo -e " '${file%.rst}.pdf' well generated ...."

	echo -e "*** Done: for the file '$file' ***"
	echo -e "**********************************"
done

echo -e "\n Coming back to the main directory....."
cd "$oldPWD"

echo -e "\n Erasing `ls .build/pdf/*.rst` ....."
rm -vf .build/pdf/*.rst

echo -e "\n Done : the following fromrst.pdf files have been produced :"
echo "$listPDFfromRSTs"
echo -e "\n Done : the following LaTeX files have been produced :"
echo "$listTEX"
echo -e "\n Done : the following PDF files have been produced :"
echo "$listPDFs"

echo -e "**********************************"
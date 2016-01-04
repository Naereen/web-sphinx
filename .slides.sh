#!/bin/bash
#
#	This script is designed to be used with makePydoc, update__date__ and pylint.
#	The reference page for this software is :
#	https://sites.google.com/site/naereencorp/liste-des-projets/makepydoc
#
#	__author__='Lilian BESSON'
#	__email__='lilian[.]besson[@]normale[.]fr'
#	__version__='0.1'
#	__date__='jeu. 21/03/2013 at 11h:31m:10s '
#
# A simple script to automatize the generation fo HTML5 slides
# from rST files, with rst2s5 script

echo -e "\n\n Copying `ls slides*.rst` in .build/html/ ....."
cp slides*.rst .build/html/

oldPWD="`pwd`"
echo -e "\n Going to .build/html/ ....."
cd .build/html/

listPages=""
listSlides=""

for file in slides*.rst
do
	echo -e "\n Examining the file '$file'..."
	rst2html -q "$file" "${file%.rst}.simple.html" && \
	echo -e " '${file%.rst}.simple.html' well generated ...."
	rst2s5 -q "$file" "${file%.rst}.s5.html" && \
	echo -e " '${file%.rst}.s5html' well generated ...."
	listPages="$listPages ${file%.rst}.simple.html"
	listSlides="$listSlides ${file%.rst}.s5.html"
done

echo -e "\n Coming back to the main directory....."
cd "$oldPWD"

echo -e "\n Erasing `ls .build/html/slides*.rst` ....."
rm -f .build/html/slides*.rst

echo -e "\n Done : the following pages have been produced :"
echo -e "$listPages"
echo -e "\n Done : the following slides have been produced :"
echo -e "$listSlides"

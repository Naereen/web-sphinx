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
# from rST files, with rst2pdf and rst2latex -> pdflatex
#
#  .*.rst: are NOT used : specials and included only files
#  *.rst: ARE used (all of them). 

echo -e "$0: begin to work, on $PWD."

mkdir -v --parents .build/pdf/

echo -e "I will generate two PDF files (.pdf and .fromrst.pdf) for each of the following files:"

ls --color=auto *.rst || exit 1

read -p "[o]ui/[N]ON ? " ok

echo -e "OK: I'm going to begin...."

listPDFfromRSTs=""
listTEX=""
listPDFs=""

for file in *.rst
do
	echo -e "\n Examining the file '$file'..."

# rST -----> PDF
	rst2pdf -s ./.style.rst2pdf --compressed --verbose --language=fr  --baseurl="http://perso.crans.org/besson/" -o ".build/pdf/${file%.rst}.fromrst.pdf" "$file" && \
	listPDFfromRSTs="$listPDFfromRSTs .build/html/${file%.rst}.fromrst.pdf" && \
	echo -e " '.build/pdf/${file%.rst}.pdf' well generated ...."

# rST -----> LaTeX
	rst2latex --generator --time --source-url ="http://perso.crans.org/besson/_sources/$file" --report="none" --verbose --language=fr --section-subtitles "$file" "${file%.rst}.tex" && \
	listTEX="$listTEX ${file%.rst}.tex" && \
	echo -e " '${file%.rst}.tex' well generated ...." && \
# LaTeX ---> PDF
	pdflatex -file-line-error -interaction=nonstopmode -output-directory=.build/pdf/ "${file%.rst}.tex"
	if [ -f ".build/pdf/${file%.rst}.pdf" ]; then
		listPDFs="$listPDFs .build/pdf/${file%.rst}.pdf"
		echo -e " '.build/pdf/${file%.rst}.pdf' well generated ...."
		echo -e "Erasing: ${file%.rst}.tex ${file%.rst}.log ${file%.rst}.out ${file%.rst}.aux"
		mv -fv "${file%.rst}.tex" "${file%.rst}.log" "${file%.rst}.out" "${file%.rst}.aux" /tmp/
		mv -fv ".build/pdf/${file%.rst}.log" ".build/pdf/${file%.rst}.out" ".build/pdf/${file%.rst}.aux" /tmp/
	fi

	echo -e "*** Done: for the file '$file' ***"
	read -p "[o]ui/[N]ON ? " ok
	echo -e "**********************************"
done

echo -e "\n Done : the following fromrst.pdf files have been produced :"
echo -e "$listPDFfromRSTs"
echo -e "\n Done : the following LaTeX files have been produced :"
echo -e "$listTEX"
echo -e "\n Done : the following PDF files have been produced :"
echo -e "$listPDFs"

echo -e "**********************************"
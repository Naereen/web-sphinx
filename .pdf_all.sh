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

. ~/.color.sh

STEP="$1"

echo -e "${green}$0: begin to work, on $PWD.${white}"

mkdir -v --parents .build/pdf/

logfile="/tmp/$0.$$.log"
if [ -f "$logfile" ];
then
	mv -v "$logfile" "$logfile~~"
fi

echo -e "I will generate two PDF files (.pdf and .fromrst.pdf) for each of the following files:"

echo -e "${magenta} I will write my output log to ${u}${black} '$logfile:1:1' ${reset}${white}"
echo -e "INIT: $0 at `date`" > "$logfile"

ls --color=auto *.rst || exit 1

#read -p "[o]ui/[N]ON ? " ok

echo -e "OK: I'm going to begin...."

listPDFfromRSTs=""
listTEX=""
listPDFs=""

for file in *.rst
##for file in `cat .pdf_all.list`
do
	echo -e "$u${red}**********************************************${reset}${white}"
	echo -e "\n\n Examining the file '$file'..."

# rST -----> PDF
	rst2pdf --inline-links --verbose -s ./.style.rst2pdf --compressed --baseurl="http://perso.crans.org/besson/" -o ".build/pdf/${file%.rst}.fromrst.pdf" "$file" && \
	listPDFfromRSTs="$listPDFfromRSTs .build/html/${file%.rst}.fromrst.pdf" && \
	echo -e "$blue '.build/pdf/${file%.rst}.pdf' well generated ....\n\n$white"

	echo -e "$u${red}**********************************************${reset}${white}"
# rST -----> LaTeX
	rst2latex --embed-stylesheet --graphicx-option="pdftex" --documentoptions=10pt,a4paper --verbose --generator --time --source-url ="http://perso.crans.org/besson/_sources/$file" --report="none" --section-subtitles "$file" "${file%.rst}.tex" && \
	listTEX="$listTEX ${file%.rst}.tex" && \
	echo -e "$blue '${file%.rst}.tex' well generated ....$white" && \
# LaTeX ---> PDF
	pdflatex  -file-line-error -interaction=nonstopmode -output-directory=.build/pdf/ "${file%.rst}.tex" >> "$logfile"
	if [ -f ".build/pdf/${file%.rst}.pdf" ]; then
		listPDFs="$listPDFs .build/pdf/${file%.rst}.pdf"
		echo -e "$blue '.build/pdf/${file%.rst}.pdf' well generated ....$white"
		echo -e "Erasing: ${file%.rst}.tex ${file%.rst}.log ${file%.rst}.out ${file%.rst}.aux"
##		mv -fv "${file%.rst}.tex" "${file%.rst}.log" "${file%.rst}.out" "${file%.rst}.aux" /tmp/
		mv -fv "${file%.rst}.tex" /tmp/
		mv -fv ".build/pdf/${file%.rst}.log" ".build/pdf/${file%.rst}.out" ".build/pdf/${file%.rst}.aux" ".build/pdf/${file%.rst}.toc" /tmp/
	fi

	echo -e "$green*** Done: for the file '$file' ***$white"
	if [ ! "0" = "0$STEP" ]; then
	 read -p "[o]ui/[N]ON ? " ok
	fi
	echo -e "$u${red}**********************************${reset}${white}"
done

echo -e "\n Done : the following fromrst.pdf files have been produced :"
echo -e "$listPDFfromRSTs"
echo -e "\n Done : the following LaTeX files have been produced :"
echo -e "$listTEX"
echo -e "\n Done : the following PDF files have been produced :"
echo -e "$listPDFs"

echo -e "$u${red}**********************************${reset}${white}"

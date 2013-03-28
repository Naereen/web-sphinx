#!/bin/bash
#
#	This script is designed to be used with makePydoc, update__date__ and pylint.
#	The reference page for this software is : 
#	https://sites.google.com/site/naereencorp/liste-des-projets/makepydoc
#
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='1.0'
#	__date__='jeu. 28/03/2013 at 04h03m'
#
# A simple script to automatize the generation fo one PDF file
# from rST files, with rst2pdf and rst2latex -> pdflatex

for i in "$@"; do
 case "$i" in
 -h|--help|-?|--?)
   echo -e "$0 --help | [options] file1.rst [file2.rst]"
   echo -e ""
   echo -e "Generate one PDF file from rST files file1.rst file2.rst ... with rst2pdf."
   echo -e "Help:"
   echo -e "	--help: to print this help message."
   echo -e "Options:"
   echo -e "	--view: to open the PDF after their generation."
   echo -e ""
   echo -e "The style sheel must be '.style.rst2pdf'."
   echo -e ""
   echo -e "Copyrights: (c) Lilian Besson 2011-2013."
   echo -e "Released under the term of the GPL v3 Licence."
   echo -e "In particular, $0 is provide WITHOUT ANY WARANTY."
   exit 0
  ;;
 *)
  ;;
 esac
done

. ~/.color.sh

if [ ! -f .style.rst2pdf ]; then
 echo -e "${red} The style sheet .style.rst2pdf is absent : I'll try without it...."
fi

VOIR="$1"
if [ "0$VOIR" = "0--view" ]; then
 shift
fi

#echo -e "${green}$0: begin to work, on $PWD.${white}"
mkdir -v --parents .build/pdf/

#logfile="/tmp/$0.$$.log"
#if [ -f "$logfile" ];
#then
#	mv -v "$logfile" "$logfile~~"
#fi

echo -e "I will generate a PDF file (.pdf) for each of the following files (.rst): $@"
#echo -e "I will generate two PDF files (.pdf and .fromrst.pdf) for each of the following files:"

#echo -e "${magenta} I will write my output log to ${u}${black} '$logfile:1:1' ${reset}${white}"
#echo -e "INIT: $0 at `date`" > "$logfile"

#ls --color=auto *.rst || exit 1

#read -p "[o]ui/[N]ON ? " ok
#echo -e "OK: I'm going to begin...."

listPDFfromRSTs=""
#listTEX=""
#listPDFs=""

##for file in *.rst
##for file in `cat .pdf_all.list`
for file in "$@"
do
#file="${file}.rst"
	echo -e "$u${red}**********************************************${reset}${white}"
	echo -e "\n\n Examining the file '$file'..."

# rST -----> PDF
	rst2pdf --default-dpi=200 --inline-links --verbose -s ./.style.rst2pdf --compressed --baseurl="http://perso.crans.org/besson/" -o ".build/pdf/${file%.rst}.pdf" "$file" && \
	listPDFfromRSTs="$listPDFfromRSTs .build/pdf/${file%.rst}.pdf" && \
	echo -e "$blue '.build/pdf/${file%.rst}.pdf' well generated ....\n\n$white"

# A test
	echo "%% Generate by Lilian Besson. (c) 2011-2013" >> ".build/pdf/${file%.rst}.pdf"
	echo "%% Last version on line : http://perso.crans.org/besson/_sources/$file" >> ".build/pdf/${file%.rst}.pdf"
	echo "%%EOF" >> ".build/pdf/${file%.rst}.pdf"

	echo -e "$u${red}**********************************************${reset}${white}"
# rST -----> LaTeX
#	rst2latex --embed-stylesheet --graphicx-option="pdftex" --documentoptions=10pt,a4paper --verbose --generator --time --source-url ="http://perso.crans.org/besson/_sources/$file" --report="none" --section-subtitles "$file" "${file%.rst}.tex" && \
#	listTEX="$listTEX ${file%.rst}.tex" && \
#	echo -e "$blue '${file%.rst}.tex' well generated ....$white" && \
# LaTeX ---> PDF
#	pdflatex  -file-line-error -interaction=nonstopmode -output-directory=.build/pdf/ "${file%.rst}.tex" >> "$logfile"
#	if [ -f ".build/pdf/${file%.rst}.pdf" ]; then
#		listPDFs="$listPDFs .build/pdf/${file%.rst}.pdf"
#		echo -e "$blue '.build/pdf/${file%.rst}.pdf' well generated ....$white"
#		echo -e "Erasing: ${file%.rst}.tex ${file%.rst}.log ${file%.rst}.out ${file%.rst}.aux"
##		mv -fv "${file%.rst}.tex" "${file%.rst}.log" "${file%.rst}.out" "${file%.rst}.aux" /tmp/
#		mv -fv "${file%.rst}.tex" /tmp/
#		mv -fv ".build/pdf/${file%.rst}.log" ".build/pdf/${file%.rst}.out" ".build/pdf/${file%.rst}.aux" ".build/pdf/${file%.rst}.toc" /tmp/
#	fi

	echo -e "$green*** Done: for the file '$file' ***$white"
	if [ ! "0" = "0$STEP" ]; then
	 read -p "[o]ui/[N]ON ? " ok
	fi
	echo -e "$u${red}**********************************${reset}${white}"
done

echo -e "\n Done : the following PDF files have been produced (from .rst, with ${blue}rst2pdf${white}:"
echo -e "${green}$listPDFfromRSTs${white}"
#echo -e "\n Done : the following LaTeX files have been produced :"
#echo -e "$listTEX"
#echo -e "\n Done : the following PDF files have been produced :"
#echo -e "$listPDFs"

echo -e "$u${cyan}**********************************${reset}${white}"
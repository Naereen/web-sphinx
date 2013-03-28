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

echo -e "$0: begin to work, on $PWD."

mkdir -v --parents .build/pdf/

read -p "[o]ui/[N]ON ? " ok

listPDFfromRSTs=""
listTEX=""
listPDFs=""

for file in transifex*.rst
do
	echo -e "\n Examining the file '$file'..."

	rst2pdf -s ./.style.rst2pdf --compressed --verbose --language=fr --baseurl="http://perso.crans.org/besson/" -o ".build/pdf/${file%.rst}.fromrst.pdf" "$file" && \
	listPDFfromRSTs="$listPDFfromRSTs .build/html/${file%.rst}.fromrst.pdf" && \
	echo -e " '.build/pdf/${file%.rst}.pdf' well generated ...."

	rst2latex --generator --time --source-url ="http://perso.crans.org/besson/_sources/$file" --report="none" --verbose --language=fr --section-subtitles "$file" "${file%.rst}.tex" && \
	listTEX="$listTEX ${file%.rst}.tex" && \
	echo -e " '${file%.rst}.tex' well generated ...."
	pdflatex -file-line-error -interaction=nonstopmode -output-directory=.build/pdf/ "${file%.rst}.tex" && \
	listPDFs="$listPDFs ${file%.rst}.pdf" && \
	pdflatex -file-line-error -interaction=nonstopmode -output-directory=.build/pdf/ "${file%.rst}.tex" && \
	echo -e " '${file%.rst}.pdf' well generated ...." && \
	echo -e "Erasing: ${file%.rst}.tex ${file%.rst}.log ${file%.rst}.out ${file%.rst}.aux && \
	mv -fv "${file%.rst}.tex" "${file%.rst}.log" "${file%.rst}.out" "${file%.rst}.aux" /tmp/ && \
	mv -fv ".build/pdf/${file%.rst}.log" ".build/pdf/${file%.rst}.out" ".build/pdf/${file%.rst}.aux" /tmp/
	echo -e "*** Done: for the file '$file' ***"
	echo -e "**********************************"
done

echo -e "\n Done : the following fromrst.pdf files have been produced :"
echo -e "$listPDFfromRSTs"
echo -e "\n Done : the following LaTeX files have been produced :"
echo -e "$listTEX"
echo -e "\n Done : the following PDF files have been produced :"
echo -e "$listPDFs"

echo -e "**********************************"
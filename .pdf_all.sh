#!/bin/bash
#
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='1.5'
#	__date__='mer. 13/11/2013 at 08h21m'
#
# A simple script to automatize the generation fo one PDF file
# from rST files, with rst2pdf and rst2latex -> pdflatex
# Last version: https://bitbucket.org/lbesson/web-sphinx/src/master/.pdf_all.sh

VOIR=""
test="yes"
ECHO="echo -e"

for i in "$@"; do
 case "$i" in
 -h|--help|-?|--?)
   $ECHO "$0 --help | [options] file1.rst [file2.rst]"
   $ECHO ""
   $ECHO "Generate one PDF file from rST files file1.rst file2.rst ... with rst2pdf."
   $ECHO "Help:"
   $ECHO "	--help:	to print this help message."
   $ECHO "Options:"
   $ECHO "	--view:	to open the PDF after their creation (with evince)."
   $ECHO "	--compress:	to compress the PDF after their creation (with PDFCompress)."
   $ECHO "	--test:	add additionnal content to the PDF (by hand)."
   $ECHO ""
   $ECHO "The style sheel must be '.style.rst2pdf'."
   $ECHO ""
   $ECHO "Copyrights: (C) Lilian Besson 2011-2013."
   $ECHO "Last version: http://perso.crans.org/besson/git/web-sphinx/src/master/.pdf_all.sh"
   $ECHO "Released under the term of the GPL v3 Licence (http://perso.crans.org/besson/LICENSE.html)."
   $ECHO "In particular, $0 is provided WITHOUT ANY WARANTY."
   exit 0
  ;;
 --view)
   VOIR="view"
   shift
  ;;
 --compress)
   COMPRESS="compress"
   shift
  ;;
 --test)
  test="yes"
  $ECHO "Option: --test: additionnal contents will be added to the PDF."
  shift
  ;;
 *)
  ;;
 esac
done

[ -f "~/.color.sh" ] && . ~/.color.sh

if [ ! -f "`pwd -P`/.style.rst2pdf" ]; then
 $ECHO "${red} The style sheet .style.rst2pdf is absent : I'll try without it...."
fi

#$ECHO "${green}$0: begin to work, on $PWD.${white}"
mkdir -v --parents .build/pdf/

$ECHO "I will generate a PDF file (.txt.pdf) for each of the following files (.rst): $@"

listPDFfromRSTs=""
for file in "$@"
do
	$ECHO "$u${red}**********************************************${reset}${white}"
	$ECHO "\n\n Examining the file '$file'..."

# rST -----> PDF
	rst2pdf --default-dpi=200 --inline-links --verbose -s ./.style.rst2pdf --compressed --baseurl="http://perso.crans.org/besson/" -o ".build/pdf/${file%.rst}.txt.pdf" "$file" && \
	listPDFfromRSTs="$listPDFfromRSTs .build/pdf/${file%.rst}.txt.pdf" && \
	$ECHO "$blue '.build/pdf/${file%.rst}.txt.pdf' well generated ....\n\n$white"

if [ "0yes" = "0$test" ]; then
# A test
	cat ".build/pdf/${file%.rst}.txt.pdf" | \
	sed s{'Author \(\)'{'Author (Lilian Besson (and I add my name in each of my PDFs with sed !))'{ | \
	sed s{'Creator \(.*\)'{'Creator (pdf_all.sh by Lilian Besson - https://bitbucket.org/lbesson)'{ > ".build/pdf/${file%.rst}.txt.pdf"~
	cat ".build/pdf/${file%.rst}.txt.pdf"~ > ".build/pdf/${file%.rst}.txt.pdf"

# A second test
	echo "%% Generated by Lilian Besson. (c) 2011-2013" >> ".build/pdf/${file%.rst}.txt.pdf"
	echo "%% Generated from the file ${file}, on $HOSTNAME." >> ".build/pdf/${file%.rst}.txt.pdf"
	echo "%% The last version of this file is on line : \n%% http://perso.crans.org/besson/_sources/$file" >> ".build/pdf/${file%.rst}.txt.pdf"
	echo "%%EOF" >> ".build/pdf/${file%.rst}.txt.pdf"

	rm -vf ".build/pdf/${file%.rst}.txt.pdf"~
fi
	$ECHO "$u${red}**********************************************${reset}${white}"

	$ECHO "$green*** Done: for the file '$file' ***$white"
	if [ ! "0" = "0$STEP" ]; then
	 read -p "[o]ui/[N]ON ? " ok
	fi
	$ECHO "$u${red}**********************************${reset}${white}"
done

$ECHO "\n Done : the following (.txt.pdf) PDF files have been produced (from .rst, with ${blue}rst2pdf${white}:"
$ECHO "${green}$listPDFfromRSTs${white}"

if [ "0$COMPRESS" = "0compress" ]; then
 echo "Compressing $listPDFfromRSTs.........."
 PDFCompress "$listPDFfromRSTs" 2> /dev/null &
fi

if [ "0$VOIR" = "0view" ]; then
 echo "Opening $listPDFfromRSTs.........."
 evince "$listPDFfromRSTs" &>/dev/null&
fi

$ECHO "$u${cyan}**********************************${reset}${white}"

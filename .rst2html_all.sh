#!/usr/bin/env /bin/bash
#
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='0.1'
#	__date__='mar. 22/09/2013 at 22h14m'
#
# A simple script to generate simple HTML pages from rST sources.

STYLE=".rst2html_all.css"
RST2HTML="rst2html --report=info --halt=none --date --no-source-link --quiet --warnings=/tmp/rst2html.log --language=fr --link-stylesheet --stylesheet=${STYLE}"
LANG="en"
BUILDDIR=".build"

for i in "$@"; do
 case "$i" in
 -h|--help|-?|--?)
   echo -e "$0 --help file1.rst [file2.rst [...]]"
   echo -e ""
   echo -e "Copy all file*.rst to ${BUILDDIR}/simplehtml/file*.html"
   echo -e "Help:"
   echo -e "	--help: to print this help message."
   echo -e "Options:"
   echo -e "	not yet :( ..."
   echo -e ""
   echo -e "Copyrights: (c) Lilian Besson 2011-2013."
   echo -e "Released under the term of the GPL v3 Licence."
   echo -e "In particular, $0 is provide WITHOUT ANY WARANTY."
   exit 0
  ;;
 --test)
  test="yes"
  echo -e "Option: --test: a test.."
  shift
  ;;
 *)
  echo -e "Arg $i found... Next :)"
  ;;
 esac
done

[ -f "$HOME"/.color.sh ] && . "$HOME"/.color.sh

DIRECTION="${BUILDDIR}/simplehtml/"
mkdir -v --parents "$DIRECTION"

[ -f "$STYLE" ] && cp -vf "$STYLE" "$DIRECTION"

## for f in ./*.rst; do
for f in "$@"; do
 ( ${RST2HTML} "$f" "${DIRECTION}${f%.rst}.html" && \
 echo -e "$f -> ${DIRECTION}${f%.rst}.html" ) || exit 2
done

echo -e "${green}$0: done.${white}"
# END

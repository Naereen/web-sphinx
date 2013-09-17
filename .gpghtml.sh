#!/usr/bin/env /bin/bash
#
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='0.1'
#	__date__='mar. 17/09/2013 at 22h14m'
#
# A simple script to automatize the GPG signatures for Sphinx produce pages

for i in "$@"; do
 case "$i" in
 -h|--help|-?|--?)
   echo -e "$0 --help"
   echo -e ""
   echo -e "Sign all .build/html/*.html files."
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
  echo -e "Option: --test: additionnal contents will be added to the PDF."
  shift
  ;;
 *)
  ;;
 esac
done

[ -f "$HOME"/.color.sh ] && . "$HOME"/.color.sh

mkdir -v --parents .build/pdf/

GPG="gpg --detach-sign --armor --verbose --yes"
LANG="en"
BUILDDIR=".build"

for f in ${BUILDDIR}/html/*html; do
 ${GPG} "$f" 2>&1 | grep --color=always "gpg: writing to"
done

echo -e "${green}$0: done.${white}"
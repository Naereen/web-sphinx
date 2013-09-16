#!/bin/bash
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='0.3'
#	__date__='lundi 16/09/2013 at 19h41m'
#
# A simple script to hide email address in Sphinx generated web pages.
#
version='0.3'
LANG='en'
LANGUAGE='en'
LC_ALL='en'

# If possible, use .color.sh (http://perso.crans.org/besson/publis/bin/.color.sh)
[ -f ~/.color.sh ] && ( . ~/.color.sh ; clear )

GREP="grep --color=always --line-buffered"

echo -e "${clear}${reset}${yellow}Starting to hide email addresses (`basename $0` $version)${reset}\n"

for j in crans ens normale sfr hotmail laposte gmail
do
 echo -e "${reset}${magenta}---> For the addresses ${u}*@$j$reset$white"

 for t in html txt js doctree
 do
  echo -e "${reset}${blue}   \\---> For the file type ${u}$t$reset$white"

  for i in `find .build/ -type f -iname '*'$t`
  do
   ( GREP_COLOR="4;01;36" $GREP -I @$j "$i" ) >/dev/null && \
   ( echo -e "${reset}${green}       \\--->$ For the file ${u}$i$reset$white"
     cat "$i" | sed s/@$j/[AT]$j/  > "$i"~ | colordiff "$i" "$i"~
     /bin/mv -vf "$i"~ "$i"
     /bin/rm -vf "$i"~ )
  done
 done
done

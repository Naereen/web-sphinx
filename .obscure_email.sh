#!/bin/bash
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='0.1'
#	__date__='mar. 25/06/2013 at 22h14m'
#
# A simple script to hide email address in Sphinx generated web pages.
#
version='0.1'
#LANG='en'
#LANGUAGE='en'
#LC_ALL='en'

# If possible, use .color.sh (http://perso.crans.org/besson/publis/bin/.color.sh)
[ -f ~/.color.sh ] && ( . ~/.color.sh ; clear )

GREP="grep --color=always --line-buffered"

echo -e "${clear}${reset}${yellow}Starting to hide email addresses (`basename $0` $version)${reset}\n"

for j in crans ens normale sfr hotmail laposte gmail
do
 echo -e "${reset}${magenta}---> For the addresses ${u}*@$j$reset$white"

 for t in html txt js svg doctree
 do
  echo -e "${reset}${blue}   \\---> For the file type ${u}$t$reset$white"

  for i in `find .build/ -type f -iname '*'$t`
  do
   ( GREP_COLOR="4;01;36" $GREP -I @$j "$i" ) >/dev/null && \
   ( echo -e "${reset}${green}       \\--->$ For the file ${u}$i$reset$white"
     cat "$i" | sed s/@$j/'[AT]$j'/  > "$i"~ | colordiff "$i" "$i"~
     mv -i "$i~" "$i" )
  done
 done
done

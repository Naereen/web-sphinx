#!/bin/bash
# Author: Lilian BESSON
# Email: lilian DOT besson AT normale D O T fr
# Version: 2'
# Date: 10-11-2015
#
# A simple script to hide email address on documents hosted on a web server.
#
version='2'

# If possible, use .color.sh (http://besson.qc.to/bin/.color.sh)
[ -f ~/.color.sh ] && ( . ~/.color.sh ; clear )

GREP="grep --color=always --line-buffered"

echo -e "${clear}${reset}${yellow}Starting to hide email addresses (`basename $0` v${version})${reset}\n"

# for j in crans ens normale hotmail laposte gmail live
for j in crans
do
 echo -e "${reset}${magenta}---> For the addresses ${u}*@$j$reset$white"

if [ "$1" = "all" ]; then
  echo -e "${reset}${blue}   \\---> For ${u}all file types$reset$white"
  for i in $(find . -type f -iname '*'); do
   ( GREP_COLOR="4;01;36" $GREP -I @$j "$i" ) &>/dev/null && \
   ( echo -e "${reset}${green}       \\--->$ For the file ${u}$i$reset$white"
     cat "$i" | sed s/@$j/[AT]$j/ > "$i"~ | diff "$i" "$i"~ | grep AT 2>/dev/null
     /bin/mv -vf "$i"~ "$i"
     /bin/rm -vf "$i"~ )
  done
else
# for t in html txt js doctree py sh ml c xml sty tex pl rc; do
 for t in html txt doctree; do
  echo -e "${reset}${blue}   \\---> For the file type ${u}$t$reset$white"
  for i in `find . -type f -iname '*'$t`; do
   ( GREP_COLOR="4;01;36" $GREP -I @$j "$i" ) &>/dev/null && \
   ( echo -e "${reset}${green}       \\--->$ For the file ${u}$i$reset$white"
     cat "$i" | sed s/@$j/[AT]$j/ > "$i"~ | diff "$i" "$i"~ | grep AT 2>/dev/null
     /bin/mv -vf "$i"~ "$i"
     /bin/rm -vf "$i"~ )
  done
 done
fi
done

exit 0
# END
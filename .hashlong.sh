#!/usr/bin/env /bin/bash
#
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='0.1'
#	__date__='mar. 01/10/2013 at 02h14m'
#
# A simple script to automatize the generation of the ${dest} file

for i in "$@"; do
 case "$i" in
 -h|--help|-?|--?)
   echo -e "$0 --help"
   echo -e ""
   echo -e " A simple script to automatize the generation of the ${dest} file"
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

# Use http://perso.crans.org/besson/bin/.color.sh, if possible.
[ -f "$HOME"/.color.sh ] && . "$HOME"/.color.sh

# Change the behavior of the script there.
url="https://bitbucket.org/lbesson/web-sphinx/changeset/"
dest=".templates/hashlong.html"

mkdir -v --parents .templates/

# Backup already existing file.
[ -f ${dest} ] && ( \
 echo -e "${red}[ERROR]${white}	The file '${dest}' already there..."
 mv -fv ${dest} /tmp/ )

# Create the hash, with git log.
hashlong="`git log --pretty=format:'%H' -1`"
[ "$hashlong" = "" ] && echo -e "${red}[ERROR]${white}	Using default hashlong."
hashlong=${hashlong:-2754d048a9553079384f8d351045e1702fc0a0a8}

echo -e "${blue}[INFO]${white}	Using hashlong='${hashlong}'..."
echo -e "${blue}[INFO]${white}	This correspond to the URL ${u}'${url}${hashlong}'${U}..."
# Produce the file.
echo -e "{% set hashlongvalue = '${hashlong}' %}" > ${dest} && \
 echo -e "${green}[SUCCESS]${white}	The file '${dest}' have been produced."

# DONE
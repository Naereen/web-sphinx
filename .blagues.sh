#!/usr/bin/env /bin/bash
#
# Author: Lilian BESSON
# Email: lilian DOT besson AT crans D O T org
# Version: 0.1
# Date: 2021-02-05 13:52:08
#
# A simple script to generate .blagues.rst

# https://linuxize.com/post/how-to-read-a-file-line-by-line-in-bash/
while IFS= read -r line; do
    echo -e "- $line"
done < ~/.blagues.txt > ./.blagues.rst

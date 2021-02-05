#!/usr/bin/env bash
set -euo pipefail

echo "Updating copyrights information to 2011-2022 on *.rst files..."
for i in ./*.rst ./conf.py
do
	[ -f "$i" -a \! -h "$i" ] && \
	grep '20..-20..' "$i" && \
	ls -larth $i && \
	sed -i.backup s_', 2011-2021, '_', 2011-2022, '_g "$i" && \
	echo "$i modified"
done
echo "Done..."

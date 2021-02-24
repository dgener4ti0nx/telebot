#!/bin/sh

# This script extracts all .tar.gz file from nested folders

find . -iname "*.tgz" | while read file ; do
	directory=(${file//// })
	tar -zxf "${file}" --directory ${directory[1]}
	rm "${file}"
	echo "File $file.tgz done."
done

printf '%*s' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo -e "All Done"

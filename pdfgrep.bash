#!/usr/bin/env bash

# pdfgrep.sh <pattern> [directory or pdf path]

set -u
IFS=$'\n'

if [ $# -lt 1 ]; then
	exit
fi

pdflist="*.pdf"
pattern=$1

if [ $# -ge 2 ]; then
	source_path=$2
	if [ -f $source_path ]; then
		pdflist=$source_path
	elif [ -d $source_path ]; then
		directory=$source_path
		pdflist="${directory}/*.pdf"
	else
		exit
	fi
fi

for file in `ls ${pdflist}`
do
	pdftotext -nopgbrk -raw $file - 2> /dev/null | grep -i "${pattern}" | sed "s|^|${file}: |"
done


#!/bin/bash

inotifywait -e close_write,moved_to,create -m /documents |
while read -r directory events filename; do
	if [[ "${filename##*.}" == "adoc" ]]; then
    	/template/tbz.sh "/documents/$filename"
	fi
done

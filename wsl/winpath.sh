#!/bin/bash
echo "$@" | sed -e 's|\\|/|g' -e 's|^\([A-Za-z]\)\:/\(.*\)|/mnt/\L\1\E/\2|'

# good discussion at - https://github.com/Microsoft/WSL/issues/522

# https://gist.github.com/aseering/a06219e74c7f96ccea5ec65d5b2483b5
# usage:  ls "$(winpath.sh $'C:\Program Files\Windows NT')"

# better use wslpath - https://github.com/MicrosoftDocs/WSL/releases/tag/17046; 

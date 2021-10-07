#!/bin/bash

# Downloads torrent from magnet link to specified location

d='~/Downloads/' && [[ $1 != '' ]] && d=$1
c=$(xclip -o -selection clipboard | grep ^magnet)
aria2c -d "$d" --input-file <( echo "$c" ) --bt-metadata-only=true --bt-save-metadata=true


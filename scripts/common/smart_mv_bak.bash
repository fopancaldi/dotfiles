#!/bin/bash

if [[ "$#" -ne 1 ]]; then
    echo "smart_mv_bak.bash called with $# parameters"
    exit 2
fi

to_move="$1"
if [[ -f "$to_move" ]] && [[ ! -h "$to_move" ]] && [[ ! -e "${to_move}.bak" ]]; then
    mv "$to_move" "${to_move}.bak"
fi;

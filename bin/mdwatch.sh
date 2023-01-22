#!/bin/sh

fswatch -0 "$@" | xargs -0 -I {} compile_md.sh {}

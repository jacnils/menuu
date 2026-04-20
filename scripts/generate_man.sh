#!/bin/sh
VERSION="$(grep -Po '(?<=VERSION )\d+\.\d+\.\d+' CMakeLists.txt)"
[ ! -x "$(command -v pandoc)" ] && printf "%s\n" "Pandoc not installed."

pandoc docs/menuu.1.md -s -t man > menuu.1

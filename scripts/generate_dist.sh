#!/bin/sh
VERSION="$(grep -Po '(?<=VERSION )\d+\.\d+\.\d+' CMakeLists.txt)"
FILES=$(git ls-files | sed "s@/.*@@g" | uniq | grep -vE ".git")

[ -d "menuu" ] && rm -rf menuu/
[ -e "menuu" ] && printf "%s\n" "What???" && exit 1

./scripts/generate_man.sh

mkdir -p menuu
cp -r $FILES menuu/

sha256sum $(find menuu/ -type f) > menuu/sha256
sha512sum $(find menuu/ -type f) > menuu/sha512

tar -cf menuu-$VERSION.tar menuu
gzip menuu-$VERSION.tar

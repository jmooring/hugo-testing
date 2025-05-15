#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Recursively creates PNG thumbnail images of each PDF file in the pwd.
#
# The PNG files will be placed adjacent to the PDF files.
#------------------------------------------------------------------------------

main() {
  find . -type f -name "*.pdf" -print0 | while IFS= read -r -d $'\0' file
  do
    dirname=$(dirname "${file}")
    filename=$(basename "${file}")
    filename_without_ext=${filename%.*}
    output_file=${dirname}/${filename_without_ext}.png

    gs  -sDEVICE=png16m \
        -dFirstPage=1 \
        -dLastPage=1 \
        -sOutputFile="${output_file}" \
        -dPDFFitPage \
        -dDEVICEWIDTH=200 \
        -dDEVICEHEIGHT=200 \
        -r72 \
        "${file}" < /dev/null > /dev/null
  done
}

set -euo pipefail
main "$@"

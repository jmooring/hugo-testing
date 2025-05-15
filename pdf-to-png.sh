#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Recursively creates PNG images from the first page of each PDF file in the
# content, assets, and static directories. The PNG images will be placed
# adjacent to the PDF files.
#------------------------------------------------------------------------------

main() {
  if ! hash gs 2>/dev/null; then
    echo "Unable to find Ghostscript executable. Please install Ghostscript."
    exit 1
  fi

  find ./content/ ./assets/ ./static/ -type f -iname "*.pdf" -print0 | while IFS= read -r -d $'\0' file
  do
    dir_name=$(dirname "${file}")
    file_name=$(basename "${file}")
    file_name_without_ext=${file_name%.*}
    output_file=${dir_name}/${file_name_without_ext}.png

    gs  -dSAFER \
        -dBATCH \
        -dNOPAUSE \
        -dFirstPage=1 \
        -dLastPage=1 \
        -sDEVICE=png16m \
        -r300 \
        -dTextAlphaBits=4 \
        -dGraphicsAlphaBits=4 \
        -q \
        -sOutputFile="${output_file}" \
        "${file}" < /dev/null
  done
}

set -euo pipefail
main "$@"

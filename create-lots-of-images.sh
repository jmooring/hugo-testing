#!/usr/bin/env bash

main() {
  declare target_directory=content/tests/test-2/images
  declare width
  declare height

  rm -rf "${target_directory}"
  mkdir -p "${target_directory}"

  declare width=306
  declare height=299
  while [[ "${width}" -lt 600 ]]; do
    while [[ "${height}" -lt 600 ]]; do
      convert -size "${width}x${height}" xc:blue "${target_directory}/${width}x${height}.jpg"
      height=$((height + 13))
    done
    width=$((width + 17))
    height=0
  done
}

set -euo pipefail
main "$@"

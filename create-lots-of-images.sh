#!/usr/bin/env bash

main() {
  declare target_directory=content/tests/test-2/images
  declare width_min=306
  declare width_max=600
  declare width_increment=17
  declare width
  declare height_min=299
  declare height_max=600
  declare height_increment=13
  declare height

  rm -rf "${target_directory}"
  mkdir -p "${target_directory}"

  width=${width_min}
  height="${height_min}"
  while [[ "${width}" -lt "${width_max}" ]]; do
    while [[ "${height}" -lt "${height_max}" ]]; do
      convert -size "${width}x${height}" xc:blue "${target_directory}/${width}x${height}.jpg"
      height=$((height + height_increment))
    done
    height="${height_min}"
    width=$((width + width_increment))
  done
}

set -euo pipefail
main "$@"

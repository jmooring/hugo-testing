#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Sets mtime of index.html files in public directory to Hugo's lastmod date.
#------------------------------------------------------------------------------

main() {

  declare publish_dir=public
  declare data_file=public/lastmod.csv
  declare -a record

  # Test for file existence.
  if [[ ! -f "${data_file}" ]]; then
    >&2 echo "Error: unable to find ${data_file}"
    exit 1
  fi

  # Update mtime.
  printf "\nUpdating mtime on %d files...\n" "$(wc -l < ${data_file})"
  while read -r line
  do
    IFS=, read -r -a record <<< "${line}"
    touch -md "${record[1]}" "${publish_dir}${record[0]}"
  done < "${data_file}"

}

set -euo pipefail
main "$@"

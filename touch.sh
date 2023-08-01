#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Sets mtime of index.html files in public directory to Hugo's lastmod date.
#------------------------------------------------------------------------------

main() {

  declare publish_dir=public
  declare data_file=public/lastmod.csv
  declare file files lastmod

  # Test for file existence.
  if [[ ! -f "${data_file}" ]]; then
    >&2 echo "Error: unable to find ${data_file}"
    exit 1
  fi

  # Create array of files in the publish directory.
  readarray -d '' files < <(find "${publish_dir}"  -type f -name "index.html" -printf "%P\0")

  # Update mtimes.
  echo "Updating mtimes for ${#files[@]} files..."
  for file in "${files[@]}"; do
    lastmod=$(awk -v pattern=^/"${file}" -F, '$1 ~ pattern {print $2}' "${data_file}")
    # Files without entries in the data file are not modified.
    if [[ -n "${lastmod}" ]]; then
      touch -m -d "${lastmod}" "${publish_dir}/${file}"
    fi
  done

}

set -euo pipefail
main "$@"

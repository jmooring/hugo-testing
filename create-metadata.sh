#!/usr/bin/env bash

main() {
  declare file_mod_date
  declare git_author_date
  declare key
  declare path
  declare paths
  declare metadata="data/metadata.toml"

  # Create/empty metadata file.
  true > "${metadata}"

  # Get paths to all data files, recursively.
  readarray -d '' paths < <(find data -type f -print0) || \
    { echo "Error: unable to create array of paths."; exit 1; }

  # Build TOML file.
  for path in "${paths[@]}"; do

    git_author_date=$(git log -1 --pretty="format:%cI" "${path}") || \
      { echo "Error: unable to obtain the Git author date."; exit 1; }

    file_mod_date=$(date -r "${path}" "+%Y-%m-%dT%H:%M:%S%:z") || \
      { echo "Error: unable to obtain the file mod date."; exit 1; }

    key=${path%.*}      # Remove extension
    key=${key/data\//}  # Remove the leading "data/"
    key=${key//\//.}    # Replace all / with .

    printf "[%s]\\n" "${key}" >> "${metadata}"
    if [[ ${#file_mod_date} -gt 0 ]]; then
      printf "file_mod_date = %s\\n" "${file_mod_date}" >> "${metadata}"
    fi
    if [[ ${#git_author_date} -gt 0 ]]; then
      printf "git_author_date = %s\\n" "${git_author_date}" >> "${metadata}"
    fi
    printf "path = \"%s\"\\n\\n" "${path}" >> "${metadata}"

  done
}

set -euo pipefail
main "$@"

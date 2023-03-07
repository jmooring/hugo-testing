#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Copies files from source to target, adding front matter to markdown files.
#------------------------------------------------------------------------------

main() {
  declare -r source_dir=/home/jmooring/code/hugo-testing/zettelkasten
  declare -r target_dir=content
  declare -a files
  declare date date_modified file file_ext front_matter target_file title

  # CD into directory in which script resides; required for incron task.
  cd "$(dirname "$0")";

  # Clear target directory if it exists, else create it.
  if [[ -d "${target_dir}" ]]; then
    rm -rf "${target_dir:?}"/*
  else
    mkdir "${target_dir}"
  fi

  # Recursively copy files from source directory to target directory.
  cp -r "${source_dir}/"* "${target_dir}"

  # Create front matter in markdown files.
  readarray -d '' files < <(find "${target_dir}/"  -type f -print0)
  for file in "${files[@]}"; do
    file_ext=${file##*.}
    if [[ "${file_ext}" == "md" ]]; then
      title=$(grep -m1 -o -P "# \K.+" "${file}") ||
        { >&2 echo "Error: unable to determine title in ${file}." ; exit 1; }
      date_modified=$(stat "${file}" --printf %y) ||
        { >&2 echo "Error: Unable to determine date modified of ${file}." ; exit 1; }
      date=$(date -d "${date_modified}" --iso-8601=seconds) ||
        { >&2 echo "Error. Unable to format date." ; exit 1; }
      front_matter=$(cat <<EOT
+++
title = "${title}"
date = ${date}
+++
EOT
      )
      # Rename root index.md to _index.md; required for home page.
      if [[ "${file}" == "${target_dir}/index.md" ]]; then
        target_file=${target_dir}/_index.md
      else
        target_file=${file}
      fi
      # Create the markdown file.
      printf "%s\\n%s" "${front_matter}" "$(cat "${file}")" > "${target_file}"
    fi
  done

  # Remove index.md from target directory.
  rm -f "${target_dir}/index.md"
}

set -euo pipefail
main "$@"

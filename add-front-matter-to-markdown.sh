#!/usr/bin/env bash

#------------------------------------------------------------------------------
# Copyright 2023 Veriphor LLC
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
#
# https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# @file
# Converts a directory of markdown files to markdown with front matter.
#
# The source directory is not modified. The target directory is created if it
# does not exist. Source files that already exist in the target directory are
# not modified. Front matter is inserted as TOML.
#
# The front matter "date" is determined by the file modification time. The
# front matter "title" is the first level 1 ATX heading or the filename.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# @function
# Displays usage message.
#
# @return string $msg
#   The usage message.
#------------------------------------------------------------------------------
usage() {
  declare msg
  msg=$(cat <<EOT
Converts a directory of markdown files to markdown with front matter.

Usage:    $(basename "$0") source target

Example:  $(basename "$0") "raw-content" "content-with-front-matter"
EOT
  )
  printf "%s\\n" "${msg}"
}

#------------------------------------------------------------------------------
# @function
# Main function.
#
# @param string $source_dir
#   The source directory.
# @param string $target_dir
#   The target directory.
#------------------------------------------------------------------------------
main() {

  declare source_dir=${1:-}
  declare target_dir=${2:-}
  declare term_red='\033[0;31m'
  declare term_reset='\033[0m'
  declare date entries entry ext source_content target_content target_path title

  if [[ -z "${source_dir}" ]]; then
    >&2 echo -e "${term_red}Error: please specify source directory\n${term_reset}"
    usage
    exit 1
  fi

  if [[ -z "${target_dir}" ]]; then
    >&2 echo -e "${term_red}Error: please specify target directory\n${term_reset}"
    usage
    exit 1
  fi

  if [[ ! -d "${source_dir}" ]]; then
    >&2 echo -e "${term_red}Error: source directory does not exist\n${term_reset}"
    usage
    exit 1
  fi

  if [[ ! -d "${target_dir}" ]]; then
    mkdir -p "${target_dir}"
  fi

  readarray -d '' entries < <(find "${source_dir}" -print0)
  for entry in "${entries[@]}"; do
    target_path=${target_dir}/${entry#*/}
    if [[ ! -e "${target_path}" ]]; then
      if [[ -d "${entry}" ]]; then
        mkdir -p "${target_path}"
      else
        ext=${entry##*.}
        if [[ "${ext}" == "md" ]]; then
          date=$(stat "${entry}" --printf %y)
          date=$(date -d "${date}" --iso-8601=seconds)
          title=$(awk '/^# / {$1=""; print substr($0,2); exit}' "${entry}" )
          if [[ -z "${title}" ]]; then
            title=$(basename "${entry}" ".md")
          fi
          source_content=$(cat "${entry}")
          target_content=$(cat <<EOT
+++
title = "${title}"
date = ${date}
draft = false
+++

${source_content}
EOT
  )
          printf "%s\\n" "${target_content}" > "${target_path}"
        else
          cp "${entry}" "${target_path}"
        fi
      fi
    fi
  done
}

set -euo pipefail
main "$@"

#!/usr/bin/env bash

#------------------------------------------------------------------------------
# Adds missing key/value pairs to i18n files, creating new files if needed.
#
# The new values are a single space instead of an empty string to prevent
# creation of duplicate keys if you run the script more than once.
#
# Existing key/value pairs are not modified.
#
# There must at least one content file per template for each language.
#------------------------------------------------------------------------------

main() {
  declare -a languages
  declare language
  declare -a translations
  declare translation
  declare key

  # Create array of languages defined in site configuration.
  readarray -t languages < <(hugo config | grep "languages" | sed 's/languages = map\[/\]/' | sed 's/:map/\n/g' | head -n-1 | awk -F'[\\]]' '{print $2}' | sed 's/ //g')

  # Create missing i18n files.
  mkdir -p "i18n"
  for language in "${languages[@]}"; do
    touch "i18n/${language}.toml"
  done

  # Create array of missing translations. Example:
  readarray -t translations < <(hugo --printI18nWarnings | grep "i18n" | sort | awk -F'|' '{print $3 "|" $4}')

  # Update i18n files.
  for translation in "${translations[@]}"; do
    language=$(awk -F'|' '{print $1}' <<< "${translation}")
    key=$(awk -F'|' '{print $2}' <<< "${translation}")
    echo "${key} = ' '" >> "i18n/${language}.toml"
  done
}

set -euo pipefail
main "$@"

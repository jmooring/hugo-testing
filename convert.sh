#!/usr/bin/env bash

main() {
  [ $# -eq 0 ] && { echo "Error: path not provided"; exit 1; }

  declare in=$1
  declare category
  declare heredoc
  declare reference
  declare title
  declare type

  title=$(jq -r '.[] | select(.label == "Titel") | .ocr_text' "${in}")
  type=$(jq -r '.[] | select(.label == "Type") | .ocr_text' "${in}")

  category=${type%%$'\n'*}
  reference=${type##*$'\n'}

  heredoc=$(cat <<EOT
{
  "title": "${title}",
  "date": "$(date -Iseconds)",
  "draft": false,
  "categories": ["${category}"],
  "reference": "${reference}",
  "data": $(<"${in}")
}
EOT
  )
  echo "${heredoc}" > "${in%.*}.md"
}

set -euo pipefail
main "$@"

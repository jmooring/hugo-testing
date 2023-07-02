#!/usr/bin/env bash

main() {
  declare i=0
  declare found=0

  while [[ $i -ne 100 ]]
  do
    hugo --quiet
    if grep cover.jpg public/posts/post-1/index.html; then
      ((found++)) || true
    fi
    ((i++)) || true
    printf "Iteration: %d" $i
  done

  echo -e "\n\nIterations: $i"
  echo "Regular page rendered before list page: $found"
}

set -euo pipefail
main "$@"

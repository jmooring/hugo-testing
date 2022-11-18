#! /usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Compares the current build of your Hugo site with a gold standard.
#
# Make sure you declare the project_dir in the main() function.
#
# Examples:   ./test.sh gold      Creates gold reference for future tests.
#             ./test.sh compare   Runs the test.
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# @function
# Creates a gold copy of your site.
#
# Clears the public directory, clears the gold directory, builds the site, and
# copies the public directory to the gold directory.
#------------------------------------------------------------------------------
gold() {

  # Declare vars.
  declare -r project_dir=$1
  declare -r gold_dir="${project_dir}/_gold"
  declare -r public_dir="${project_dir}/public"

  # Do it.
  rm -rf "${public_dir}"
  rm -rf "${gold_dir}"
  hugo -e testing -s "${project_dir}"
  cp -r "${public_dir}" "${gold_dir}"
}

#------------------------------------------------------------------------------
# @function
# Compares one or more files in the public directory with gold standards.
#
# Clears the public directory, builds the site, and compares the specified
# files to those in the gold directory.
#------------------------------------------------------------------------------
compare() {

  # Declare vars.
  declare -r project_dir=$1
  declare -r gold_dir="${project_dir}/_gold"
  declare -r public_dir="${project_dir}/public"

  # Validate the gold directory.
  if [[ ! -d "${gold_dir}" ]]; then
    echo "Error: the gold directory does not exist." 1>&2
    exit 1
  fi

  # Do it.
  # In this example the comparison is limited to the "tests" directory.
  rm -rf "${public_dir}"
  hugo -e testing -s "${project_dir}"
  diff --color -r -u0 "${gold_dir}/tests" "${public_dir}/tests"
}

#------------------------------------------------------------------------------
# @function
# Main.
#------------------------------------------------------------------------------
main() {
  # Check dependencies.
  if ! hash diff 2>/dev/null; then
    echo "Error: please install diff." 1>&2
    exit 1
  fi
  # Validate number of args.
  if [[ $# -ne 1 ]]; then
    echo "Error: please specify a valid action: compare or gold." 1>&2
    exit 1
  fi

  # Declare vars.
  declare -r project_dir=$HOME/code/hugo-testing
  declare -r command=$1

  # Validate the project directory.
  if [[ ! -d "${project_dir}" ]]; then
    echo "Error: the project directory does not exist." 1>&2
    exit 1
  fi

  # Run the appropriate action..
  case ${command} in
    gold)
      gold "${project_dir}"
      ;;
    compare)
      compare "${project_dir}"
      ;;
    *)
      echo "Error: please specify a valid action: compare or gold." 1>&2
      exit 1
  esac
}

set -euo pipefail
main "$@"

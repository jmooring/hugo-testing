#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Generates Go code to verify existence of published PNG files.
#
# Example output:
#
#	for _, path := range []string{
#		`public/home_en.png`,
#		`public/s1/p1/s1_p1_en.png`,
#		`public/s1/p2/s1_p2_en.png`,
#		`public/s1/s1_en.png`,
#		`public/s2/p1/s2_p1_en.png`,
#		`public/s2/s2_en.png`,
#		`public/straßen/frühling/müll-brücke/Straßen_Frühling_Müll_Brücke_en.png`,
#		`public/straßen/frühling/Straßen_Frühling_en.png`,
#		`public/straßen/Straßen_en.png`,
#	} {
#		c.Assert(osFileExists(path), qt.IsTrue)
#	}
#
#------------------------------------------------------------------------------

main() {
	declare filepath

	printf "\tfor _, path := range []string{\n"
	find "public/" -type f -iname "*.png" -print0 | sort -z | while IFS= read -r -d '' filepath; do
		printf "\t\t\`%s\`,\n" "${filepath}"
	done
	printf "\t} {\n"
	printf "\t\tc.Assert(osFileExists(path), qt.IsTrue)\n"
	printf "\t}\n"
}

set -euo pipefail
main "$@"

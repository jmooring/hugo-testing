#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Generates Go code to check content of published content files.
#
# Example output:
#
#	for _, file := range []publishedContentFile{
#		{`public/index.html`, `src="home_en.png"`},
#		{`public/s1/index.html`, `src="s1_en.png"`},
#		{`public/s1/p1/index.html`, `src="s1_p1_en.png"`},
#		{`public/s1/p2/index.html`, `src="s1_p2_en.png"`},
#		{`public/s2/index.html`, `src="s2_en.png"`},
#		{`public/s2/p1/index.html`, `src="s2_p1_en.png"`},
#		{`public/straßen/frühling/index.html`, `src="Straßen_Frühling_en.png"`},
#		{`public/straßen/frühling/müll-brücke/index.html`, `src="Straßen_Frühling_Müll_Brücke_en.png"`},
#		{`public/straßen/index.html`, `src="Straßen_en.png"`},
#	} {
#		b.AssertFileContent(file.path, file.match)
#	}
#
#------------------------------------------------------------------------------

main() {
	declare filepath
	declare match

	printf "\tfor _, file := range []publishedContentFile{\n"

	find "public/" -type f -iname "*.html" -print0 | sort -z | while IFS= read -r -d '' filepath; do
		match=$(grep -oP 'src="[^"]*"' "${filepath}" | head -n 1) || true
		if [[ -n "$match" ]]; then
			printf "\t\t{\`%s\`, \`%s\`},\n"  "${filepath}"  "${match}"
		else
			if grep -q 'http-equiv="refresh"' "${filepath}"; then
				: # do nothing, it's an alias
			else
				>&2 printf "Error: unable to extract matching string from %s\n" "${filepath}"
				exit 1
			fi
		fi
	done
	printf "\t} {\n"
	printf "\t\tb.AssertFileContent(file.path, file.match)\n"
	printf "\t}\n"

}

set -euo pipefail
main "$@"

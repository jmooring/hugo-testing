#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Generates Go code to initialize a slice of content files.
#
# Example output:
#
#	contentFiles := []contentFile{
#		{`content/_index.de.adoc`, `home_de`},
#		{`content/_index.en.adoc`, `home_en`},
#		{`content/s1/_index.de.adoc`, `s1_de`},
#		{`content/s1/_index.en.adoc`, `s1_en`},
#		{`content/s1/p1/index.de.adoc`, `s1_p1_de`},
#		{`content/s1/p1/index.en.adoc`, `s1_p1_en`},
#		{`content/s1/p2.de.adoc`, `s1_p2_de`},
#		{`content/s1/p2.en.adoc`, `s1_p2_en`},
#		{`content/s2/_content.gotmpl`, `s2_content_gotmpl`},
#		{`content/s2/_index.de.adoc`, `s2_de`},
#		{`content/s2/_index.en.adoc`, `s2_en`},
#		{`content/Straßen/Frühling/_index.de.adoc`, `Straßen_Frühling_de`},
#		{`content/Straßen/Frühling/_index.en.adoc`, `Straßen_Frühling_en`},
#		{`content/Straßen/Frühling/Müll Brücke.de.adoc`, `Straßen_Frühling_Müll_Brücke_de`},
#		{`content/Straßen/Frühling/Müll Brücke.en.adoc`, `Straßen_Frühling_Müll_Brücke_en`},
#		{`content/Straßen/_index.de.adoc`, `Straßen_de`},
#		{`content/Straßen/_index.en.adoc`, `Straßen_en`},
#	}
#
#------------------------------------------------------------------------------

main() {
	declare filepath
	declare cleaned_path

	printf "\tcontentFiles := []contentFile{\n"

	find "content/" -type f -print0 | sort -z | while IFS= read -r -d '' filepath; do
		cleaned_path=$(
			echo "$filepath" |
			# 1. Remove leading 'content/'
			sed 's|^content/||' |
			# 2. Remove trailing '.adoc'
			sed 's/\.adoc$//' |
			# 3. Replace spaces and slashes with underscores
			tr ' /' '_' |
			# 4. Replace the first remaining dot (e.g., '.de') with an underscore
			sed 's/\./_/' |
			# 5. STRIP THE WORD "index"
			sed 's/index//g' |
			# 6. Convert TWO OR MORE adjacent underscores to a single underscore
			sed 's/__\+/_/g' |
			# 7. Clean up any resulting leading/trailing underscores
			sed 's/^_//; s/_$//'
		)

		if [[ ${#cleaned_path} -eq 2 ]]; then
			cleaned_path="home_${cleaned_path}"
		fi

		printf "\t\t{\`%s\`, \`%s\`},\n"  "${filepath}"  "${cleaned_path}"
	done
	printf "\t}\n"
}

set -euo pipefail
main "$@"

#!/usr/bin/env bash

main() {

	declare published_file=public/en/s1/p1/index.html
	declare layout_used=_

	mkdir -p layouts

	rm -rf layouts/*

	cp _layouts_nec/* layouts/

	cp _layouts_single/* layouts/
	cp _layouts_list/* layouts/
	cp _layouts_all/* layouts/

	cp _layouts_home/* layouts/
	cp _layouts_page/* layouts/
	cp _layouts_section/* layouts/
	cp _layouts_taxonomy/* layouts/
	cp _layouts_term/* layouts/

	while [ "${#layout_used}" -gt 0 ]
	do
		rm -rf public/*
		hugo --quiet

		if [ -f "${published_file}" ]; then
			layout_used=$(basename "$(cat "${published_file}")")
			echo "${layout_used}"
			rm "layouts/${layout_used}"
		else
			exit
		fi


	done

}

set -euo pipefail

main "$@"

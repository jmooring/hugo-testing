#!/bin/bash

# -----------------------------------------------------------------------------
# @file
# Collects video metadata into a JSON file.
#
# Recursively scans a directory for .mp4 and .webm files, extracts video width,
# height, and duration using ffprobe, and outputs the result as a single JSON
# object where the KEY is the video path.
#
# FFmpeg/ffprobe and jq must be installed.
# -----------------------------------------------------------------------------

main() {

	# Verify dependencies.
	if ! command -v ffprobe &> /dev/null; then
		echo "Error: ffprobe (from FFmpeg) is not installed. Please install it." >&2
		exit 1
	fi
	if ! command -v jq &> /dev/null; then
		echo "Error: jq is not installed. Please install it (e.g., sudo apt install jq)." >&2
		exit 1
	fi

	# Declare constants.
	declare CONTENT_DIR="content" 	# no trailing slash
	declare DATA_DIR="data" 		# no trailing slash
	declare OUTPUT_FILE_NAME="video_metadata.json"

	# Verify that the content directory exists.
	if [ ! -d "${CONTENT_DIR}" ]; then
		echo "Error: Target directory '${CONTENT_DIR}' does not exist." >&2
		exit 1
	fi

	# Create the data directory if it does not exist.
	if [ ! -d "${DATA_DIR}" ]; then
		mkdir -p "${DATA_DIR}"
	fi

	# Determine path to output file.
	OUTPUT_FILE_PATH="${DATA_DIR}/${OUTPUT_FILE_NAME}"

    # Create the data file.
	find "${CONTENT_DIR}" -type f \( -iname "*.mp4" -o -iname "*.webm" \) -print0 | while IFS= read -r -d $'\0' file; do

		# Remove the CONTENT_DIR/ prefix from the file path.
		json_path="${file#$CONTENT_DIR/}"

		ffprobe -v error \
				-select_streams v:0 \
				-show_entries stream=width,height:format=duration \
				-of json=c=1 "$file" 2>/dev/null | \
		jq --arg fpath "$json_path" '
			# Check if the required stream and format data exists
			if .streams and .streams[0] and .format then
				# Construct the single object using the path ($fpath) as the key
				{
					($fpath): {
						width: (.streams[0].width // 0),
						height: (.streams[0].height // 0),
						# Duration is extracted from format and converted to a number (seconds)
						duration: ((.format.duration | tonumber) // 0)
					}
				}
			else
				# Handle files that ffprobe could not read (output null/error)
				null
			end
		'
	done | jq -s '
		# Slurp all individual JSON objects ({path: metadata}) into a single array,
		# filter out any null errors, and then use the "add" filter to merge the
		# array of objects into a single large object (the map).
		map(select(. != null)) | add
	' > "${OUTPUT_FILE_PATH}"

}

set -euo pipefail
main "$@"

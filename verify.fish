#!/usr/bin/env fish

if ! command -v yajsv >/dev/null; then
	echo "install yajsv"
	exit 1
end

yajsv -s keyholders.schema.json (./pass.sh keyholders.yaml | psub -s "keyholders.yaml")

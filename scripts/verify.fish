#!/usr/bin/env fish

if ! command -v yajsv >/dev/null; then
	echo "install yajsv"
	exit 1
end

cd (dirname (status filename))/..

yajsv -s keyholders.schema.json (./scripts/pass.sh keyholders.yaml | psub -s "keyholders.yaml")

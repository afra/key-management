#!/usr/bin/env fish

if ! command -v yq >/dev/null; then
	echo "install go-yq"
	exit 1
end

cd (dirname (status filename))/..

./scripts/pass.sh old/rfid_tokens.txt
./scripts/pass.sh keyholders.yaml | yq 'map(.rfidTokens[]?+" "+key)' | yq '.[]'

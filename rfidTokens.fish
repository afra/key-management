#!/usr/bin/env fish

if ! command -v yq >/dev/null; then
	echo "install go-yq"
	exit 1
end

./pass.sh old/rfid_tokens.txt
./pass.sh keyholders.yaml | yq 'map(.rfidTokens[]?+" "+key)' | yq '.[]'

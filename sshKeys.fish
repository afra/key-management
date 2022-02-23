#!/usr/bin/env fish

if ! command -v yq >/dev/null; then
	echo "install go-yq"
	exit 1
end

./pass.sh old/authorized_keys
./pass.sh  keyholders.yaml | yq 'map(.sshKeys[]?+" "+key)' | yq '.[]'
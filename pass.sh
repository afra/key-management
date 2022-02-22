#!/usr/bin/env bash

if ! command -v pass >/dev/null; then
	echo "install pass"
	exit 1
fi
if ! command -v gpg >/dev/null; then
	echo "install gpg"
	exit 1
fi

cd $(dirname $0)

for key in .gpg-public-keys/*
do
	gpg --import "$key" 2>/dev/null
done

export PASSWORD_STORE_GPG_OPTS="--trust-model always"
export PASSWORD_STORE_DIR="$PWD/secrets"
pass $@

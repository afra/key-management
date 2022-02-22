#!/usr/bin/env fish

./pass.sh old/rfid_tokens.txt
./pass.sh  keyholders.yaml | yq --unwrapScalar ".*.rfidTokens[]?"

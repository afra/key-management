#!/usr/bin/env fish

./pass.sh old/authorized_keys
./pass.sh keyholders.yaml | yq --unwrapScalar ".*.sshKeys[]?"

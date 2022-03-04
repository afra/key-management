#!/usr/bin/env fish

cd (dirname (status filename))/..

scp root@door:/home/open/.ssh/authorized_keys (./scripts/sshKeys.fish | psub)

scp root@door:/home/close/.ssh/authorized_keys (./scripts/sshKeys.fish | psub)

scp root@door:/home/open/rfid_codes.txt  (./scripts/rfidTokens.fish | psub)


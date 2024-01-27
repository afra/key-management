#!/usr/bin/env fish

cd (dirname (status filename))/..

scp (./scripts/sshKeys.fish | psub) root@door.space.afra-berlin.de:/home/open/.ssh/authorized_keys

scp (./scripts/sshKeys.fish | psub) root@door.space.afra-berlin.de:/home/close/.ssh/authorized_keys

scp (./scripts/rfidTokens.fish | psub) root@door.space.afra-berlin.de:/home/open/rfid_codes.txt


#!/usr/bin/env fish

cd (dirname (status filename))/..

scp (./scripts/sshKeys.fish | psub) root@door.lan:/home/open/.ssh/authorized_keys

scp (./scripts/sshKeys.fish | psub) root@door.lan:/home/close/.ssh/authorized_keys

scp (./scripts/rfidTokens.fish | psub) root@door.lan:/home/open/rfid_codes.txt


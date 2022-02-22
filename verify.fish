#!/usr/bin/env fish

mkdir -p tmp/
./pass.sh keyholders.yaml > tmp/keyholders.yaml
yajsv -s keyholders.schema.json tmp/keyholders.yaml


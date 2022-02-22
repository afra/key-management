#!/usr/bin/env fish

yajsv -s keyholders.schema.json (./pass.sh keyholders.yaml | psub -s "keyholders.yaml")

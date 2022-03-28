#!/bin/bash

shopt -s globstar
for i in **/joda.log; do
  echo "Truncating $i"
  cat "$i" | sed '/-----RESULTS------/,/-------END--------/d' | grep -v -e "Starting aggregation" -e "Starting selection" > tmp.log
  mv tmp.log "$i"
done

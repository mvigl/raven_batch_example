#!/bin/bash

config="$1"
checkpoint="$2"
mess="$3"
data="$4"
subset="$5"
data_val="$6"
out="$7"
bs="$8"
se="$9"

python /raven/u/mvigl/raven_batch_example/test.py --config "$config" --checkpoint "$checkpoint" --mess "$mess" --data "$data" --subset "$subset" --data_val "$data_val" --out "$out" --bs "$bs" --start_epoch "$se"

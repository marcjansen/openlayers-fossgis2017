#!/usr/bin/env bash

date

echo "Generate one big gif…"
convert -delay 120 -loop 0 "*png" all.gif

echo "Crop generated gif"
convert all.gif -crop 648x540+0+60\! all-examples-cropped.gif

echo "Add 50px padding"
convert all-examples-cropped.gif \
    -background none \
    -gravity center  \
    -extent 748x640  \
    all-examples.gif

echo "Cleanup"
rm all.gif all-examples-cropped.gif

date

exit 0

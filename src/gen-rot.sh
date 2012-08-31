#!/bin/sh
LIST="
rot.js
rng.js
display.js
scheduler.js
js/array.js
js/date.js
js/number.js
js/string.js
js/object.js
js/function.js
map/map.js
map/arena.js
map/dividedmaze.js
map/iceymaze.js
map/ellermaze.js
map/cellular.js
map/digger.js
map/uniform.js
map/features.js
fov/fov.js
fov/discrete-shadowcasting.js
path/path.js
path/dijkstra.js
path/astar.js
"

TARGET=../rot.js
rm -f $TARGET

VERSION=$(head -1 < ../VERSION)

PROLOGUE="/*
	This is rot.js, the ROguelike Toolkit in JavaScript.
	Version $VERSION, generated on $(date).
*/
"
echo "$PROLOGUE" >> $TARGET

for FILE in $LIST; do
	cat $FILE >> $TARGET
done
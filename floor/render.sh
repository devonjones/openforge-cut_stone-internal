#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {2..2}
do
	for y in {1..1}
	do
		$OPENSCAD -o cut_stone_floor_${x}x${y}.stl \
				-D 'render_cut_stone_floor=true' -D "x=$x" -D "y=$y" \
				../cut_stone_floor.scad
	done
done


#!/bin/bash

proc=${1/.p/}

mkdir -p oe122 oe128 diffs

DLC=/usr/oe122 /usr/oe122/bin/_progres -db db/sp128 -RO -b -p src/${proc}.p > oe122/${proc}.out 2>&1
DLC=/usr/oe128 /usr/oe128/bin/_progres -db db/sp128 -RO -b -p src/${proc}.p > oe128/${proc}.out 2>&1

diff oe122/${proc}.out oe128/${proc}.out > diffs/${proc}.out 
#!/bin/bash

for filename in *.dot; do
    newfile=${filename%.dot}
    dot -Tpng -o ../images/$newfile-graph.png $filename
done

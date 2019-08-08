#!/bin/bash
gvpr -o interim/Academics.dot -f extract-graph-minus-2.gvpr -a "Academics\ Guild" all-skills.dot
gvpr -o interim/Smithing.dot -f extract-graph-minus-2.gvpr -a "Smithing\ Guild" all-skills.dot
gvpr -o interim/Brigade.dot -f extract-graph-minus-2.gvpr -a "Citizens\ Brigade" all-skills.dot
gvpr -o interim/Resources.dot -f extract-graph-minus-2.gvpr -a "Resources\ Guild" all-skills.dot
gvpr -o interim/Explorers.dot -f extract-graph-minus-2.gvpr -a "Explorers\ Guild" all-skills.dot
gvpr -o interim/Acquisitions.dot -f extract-graph-minus-2.gvpr -a "Acquisitions\ Guild" all-skills.dot
gvpr -o interim/Traditions.dot -f extract-graph-minus-2.gvpr -a "Traditions\ Guild" all-skills.dot
gvpr -o interim/Engineers.dot -f extract-graph-minus-2.gvpr -a "Order\ Engineers" all-skills.dot
gvpr -o interim/Medicus.dot -f extract-graph-minus-2.gvpr -a "Order\ Medicus" all-skills.dot
gvpr -o interim/Guards.dot -f extract-graph-minus-2.gvpr -a "Order\ Guards" all-skills.dot
gvpr -o interim/Scouts.dot -f extract-graph-minus-2.gvpr -a "Order\ Scouts" all-skills.dot
gvpr -o interim/Adjutants.dot -f extract-graph-minus-2.gvpr -a "Order\ Adjutants" all-skills.dot
gvpr -o interim/Proteger.dot -f extract-graph-minus-2.gvpr -a "Order\ Proteger" all-skills.dot

dot -Tpng -o ../images/all-skills.png all-skills.dot

cd interim
for filename in *.dot; do
    newfile=${filename%.dot}
    dot -Tpng -o ../../images/$newfile-graph.png $filename
done

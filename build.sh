echo "generating graphs"
./generate-graphs.sh

# echo "generating skill cards"
# ./generate-skill-cards.sh

OUTPUT=Working_v0904_output

mkdir -p ../${OUTPUT}

# echo "generating rulebook html"
# asciidoctor -o ../${OUTPUT}/LostColoniesLarp-Rulebook.html rulebook.adoc
# cat ../${OUTPUT}/LostColoniesLarp-Rulebook.html | html-to-text > ../${OUTPUT}/LostColoniesLarp-Rulebook.txt
# wc -w ../${OUTPUT}/LostColoniesLarp-Rulebook.txt

echo "generating rulebook pdf"
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Rulebook.pdf rulebook.adoc
asciidoctor-pdf -a stylesheet=review.css -a review@=set -a pdf-stylesdir=. -a pdf-style=lc -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Rulebookreview.pdf rulebook.adoc


# echo "generating quickstart html"
# asciidoctor -o ../${OUTPUT}/LostColoniesLarp-Quickstart.html quickstart.adoc

echo "generating quickstart pdf"
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Quickstart.pdf quickstart.adoc

# echo "generating guilds html"
# asciidoctor -o ../${OUTPUT}/LostColoniesLarp-Guilds.html guilds-detailed.adoc
# cat ../${OUTPUT}/LostColoniesLarp-Guilds.html | html-to-text > ../${OUTPUT}/LostColoniesLarp-Guilds.txt
# wc -w ../${OUTPUT}/LostColoniesLarp-Guilds.txt

echo "generating guilds pdf"
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Guilds.pdf guilds-detailed.adoc

echo "generating cheat sheets"
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc-cheat-sheets -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Injuries.pdf cheat-sheet-injuries.adoc
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc-cheat-sheets -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Components.pdf cheat-sheet-components.adoc


echo "generating recipe books"
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc-cheat-sheets -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Alchemy.pdf all-alchemy.adoc
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc-cheat-sheets -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Cooking.pdf all-cooking.adoc
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc-cheat-sheets -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Fiber-Arts.pdf all-fiber-arts.adoc
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc-cheat-sheets -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Herbals.pdf all-herbals.adoc
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc-cheat-sheets -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Rituals.pdf all-rituals.adoc
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc-cheat-sheets -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Smithing.pdf all-smithing.adoc
asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=lc-cheat-sheets -a pdf-fontsdir=resources -o ../${OUTPUT}/LostColoniesLarp-Production.pdf all-production.adoc

#!/bin/sh

# Prevod textu z mediawiki formatu do latexu.

sed -i -e 's/<math>/$/g' $1
sed -i -e 's/<\/math>/$/g' $1
sed -i -e 's/#/\t\item/g' $1
sed -i -e 's/:[a-z])/\t\item/g' $1
sed -i -e 's/^[a-z])/\t\item/g' $1

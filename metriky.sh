#!/bin/bash

# Spocti pocty prikladu a reseni pro jednotlive sekce

function get_count {
  echo "$1: `ls -l $2/zadani | wc -l`/`ls -l $2/reseni | wc -l`"
}

get_count "Logika" "src/logika"
get_count "Algebra" "src/algebra"
get_count "Funkcionální analýza" "src/funkcionalni_analyza/"
get_count "Grafy" "src/grafy"

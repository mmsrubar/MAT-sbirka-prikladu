#!/bin/sh

# Zkontroluj zda maji vsechny zadani svoje reseni aby sedely cisla podsekci v
# sekci RESENI. Pokud u prikladu neni reseni, vytvori se prazdne pdf.

for d in "src/logika"; do
  for i in $(ls $d/zadani/); do 
    if [ ! -f $d/reseni/${i%%.*}* ]; then 
      echo "Zadne reseni pro $d/zadani/$i => touch $d/reseni/${i%%.*}.pdf "; 
      touch $d/reseni/${i%%.*}.pdf
    fi; 
  done
done

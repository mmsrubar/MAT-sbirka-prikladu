# Překlad
Pro úspěšný překlad nového PDFka je na Fedoře 23 potřeba nainstalovat tyto závisloti:

```bash
dnf install -y texlive texlive-cslatex texlive-collection-langczechslovak xfig
```

Vytvoření výsledného pdf *sbirka.pdf* je možné spuštením make:

```bash
make
```

# Přidání nového zadání a jeho řešení

Řekněme, že chceš přidat příklad do sekce *5.1 Nalezní grafu* v kapitole *Grafy*.
Zadání přikladu napiš v latexu, ale pouze zadání bez použítí např. *section*, *documentclass*
a podobně. Vytvořené zadání vlož do složky **src/grafy/zadani/**. Jméno souboru musí
mít formát ```5-1-XX.tex```, kde XX bude první volné číslo. Číslo 5 značí, že se jedná
o zadání do kapitoly grafy a číslo 1, že se jedná o příklad do sekce "nalezení
grafu".

Pokud vše proběhne v pořádku, pak při dalším spuštění ```make``` bude tvůj příklad
přidán automaticky do správné sekce.

Jak bude text zadání vypadat ve sbírce si můžeš ověřit následujícím příkazem,
který vytvoří soubor *single.pdf.*

```
make ARGS='cesta-k-latexovemu-zadani' single.pdf
```

A poté zkontroluj soubor single.pdf.

Jestliže si k příkladu napsal vytvořil i řešení, pojmenuj jej stejně a ulož jej
do složky **src/grafy/reseni/**. Řešení může být ve formátech tex, pdf, png nebo
jpg. Řešením ve formě obrázku bude automaticky upravena velikost, aby byly ve
sbírce čitelné.

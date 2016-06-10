# PŘEKLAD
Pro úspěšný překlad nového PDFka je na Fedoře 23 potřeba nainstalovat tyto závisloti:

```bash
dnf install -y texlive texlive-cslatex texlive-collection-langczechslovak xfig
```

Vytvoření výsledného pdf *sbirka.pdf* je možné spuštením make:

```bash
make
```

# PRIDANI NOVEHO ZADANI

Ověř si, zda je zadání správné pomocí příkazu:

make ARGS='cesta-k-latexovemu-zadani' single.pdf

Příklad:
make ARGS=predikatova_logika/dukazy/1.tex single.pdf

A poté zkontroluj soubor single.pdf.

# INSTALL
Pro úspěšný překlad nového PDFka je na Fedoře 23 potřeba nainstalovat tyto balíky:

```bash
dnf install -y texlive texlive-cslatex texlive-collection-langczechslovak xfig
```

PRIDANI NOVEHO ZADANI
=====================

Over si, ze je zadani spravne pomocí příkazu:

make ARGS='cesta-k-latexovemu-zadani' single.pdf

Příklad:
make ARGS=predikatova_logika/dukazy/1.tex single.pdf

A poté zkontroluj soubor single.pdf.

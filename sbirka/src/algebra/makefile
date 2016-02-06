all: grupy.tex morfismy.tex kongruence.tex zbytkove_tridy.tex

src_grupy := $(wildcard 0*.tex)
src_morfismy := $(wildcard 1*.tex)
src_kongruence := $(wildcard 2*.tex)
src_zbytkove_tridy := $(wildcard 3*.tex)

grupy.tex: $(src_grupy)
	bash -c "cat $(src_grupy) > grupy.tex"
morfismy.tex: $(src_morfismy)
	bash -c "cat $(src_morfismy) > morfismy.tex"
kongruence.tex: $(src_kongruence)
	bash -c "cat $(src_kongruence) > kongruence.tex"
zbytkove_tridy.tex: $(src_zbytkove_tridy)
	bash -c "cat $(src_zbytkove_tridy) > zbytkove_tridy.tex"

clean:
	rm -f grupy.tex morfismy.tex kongruence.tex zbytkove_tridy.tex

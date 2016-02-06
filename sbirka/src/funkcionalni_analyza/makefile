all: metriky.tex normy.tex vektory.tex

src_metriky := $(wildcard 0*.tex)
src_normy := $(wildcard 1*.tex)
src_vektory := $(wildcard 2*.tex)

metriky.tex: $(src_metriky)
	bash -c "cat $(src_metriky) > metriky.tex"
normy.tex: $(src_normy)
	bash -c "cat $(src_normy) > normy.tex"
vektory.tex: $(src_vektory)
	bash -c "cat $(src_vektory) > vektory.tex"

clean:
	rm -f metriky.tex normy.tex vektory.tex

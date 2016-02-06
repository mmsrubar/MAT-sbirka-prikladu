all: grafy.tex min_kostry.tex

src_grafy := $(wildcard 0*.tex)
src_min_kostry := $(wildcard 1*.tex)

grafy.tex: $(src_grafy)
	bash -c "cat $(src_grafy) > grafy.tex"
	
min_kostry.tex: $(src_min_kostry)
	bash -c "cat $(src_min_kostry) > min_kostry.tex"

clean:
	rm -f grafy.tex min_kostry.tex

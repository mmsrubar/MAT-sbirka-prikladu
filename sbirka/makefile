NAME=sbirka
SINGLE=templates/single.tex

LOGIKA = src/logika/dukazy_log_formuli.tex src/logika/dukazy_pred_formuli.tex src/logika/prenexni_tvar.tex src/logika/realizace.tex
ALGEBRA = src/algebra/grupy.tex src/algebra/kongruence.tex src/algebra/morfismy.tex src/algebra/zbytkove_tridy.tex
ANALYZA = src/funkcionalni_analyza/metriky.tex src/funkcionalni_analyza/normy.tex src/funkcionalni_analyza/vektory.tex
GRAFY = src/grafy/grafy.tex src/grafy/min_kostry.tex


all: priklady $(NAME).pdf

priklady:
	(cd src/algebra && make)
	(cd src/logika && make)
	(cd src/grafy && make)
	(cd src/funkcionalni_analyza && make)

#$(NAME).pdf: $(NAME).dvi
#	dvipdf $(NAME).dvi

$(NAME).pdf: $(NAME).tex $(ALGEBRA) $(LOGIKA) $(ANALYZA) $(GRAFY)
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex

single.pdf: templates/single_template.tex
	bash -c "cp templates/single_template.tex single.tex"
	bash -c "sed -i -e 's|single.tex|${ARGS}|g' single.tex"
	latex single.tex
	latex single.tex
	dvipdf single.dvi

clean:
	rm -f *.{dvi,aux,log,out} single.*
	cd src/algebra && make clean
	cd src/logika&& make clean
	cd src/funkcionalni_analyza && make clean
	cd src/grafy && make clean




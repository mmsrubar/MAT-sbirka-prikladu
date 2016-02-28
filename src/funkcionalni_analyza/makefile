all: metriky.tex normy.tex vektory.tex \
 	metriky-reseni.tex normy-reseni.tex vektory-reseni.tex

src_metriky := $(sort $(wildcard zadani/4-1*.tex))
src_normy := $(sort $(wildcard zadani/4-2*.tex))
src_vektory := $(sort $(wildcard zadani/4-3*.tex))

define zadani =
	rm -rf $@
	for i in $?; do \
		echo -e "\subsubsection{}" >> $@; \
		cat $$i >> $@; \
	done
endef

define reseni = 
	rm -rf $@
	for i in $?; do \
		f=$$(basename $$i); \
		subsection=$${f%%.*}; \
		echo -e "\subsubsection{}" >> $@; \
		if [ -f reseni/$$subsection.pdf ]; then \
			echo -e "\includegraphics[width=400pt,height=800pt,keepaspectratio=true]{src/funkcionalni_analyza/reseni/$$subsection.pdf}" >> $@; \
		elif [ -f reseni/$$subsection.tex ]; then \
			echo -e "\input{src/funkcionalni_analyza/reseni/$$subsection.tex}" >> $@; \
		elif [ -f reseni/$$subsection.jpg ]; then \
			echo "\begin{figure}[H]" >> $@; \
			echo "\centering" >> $@; \
			echo "\includegraphics[width=90mm]{src/funkcionalni_analyza/reseni/$$subsection.jpg}" >> $@; \
			echo "\end{figure}" >> $@; \
		elif [ -f reseni/$$subsection.png ]; then \
			echo "\begin{figure}[H]" >> $@; \
			echo "\centering" >> $@; \
			echo "\includegraphics[width=90mm]{src/funkcionalni_analyza/reseni/$$subsection.png}" >> $@; \
			echo "\end{figure}" >> $@; \
		else \
			echo "Vyřešil si tento příklad? Pak jej naskenuj/vyfoť a nahraj na github" >> $@; \
		fi \
	done
endef

metriky.tex: $(src_metriky)
	$(zadani)
normy.tex: $(src_normy)
	$(zadani)
vektory.tex: $(src_vektory)
	$(zadani)

metriky-reseni.tex: $(src_metriky)
	$(reseni)
normy-reseni.tex: $(src_normy)
	$(reseni)
vektory-reseni.tex: $(src_vektory)
	$(reseni)


clean:
	rm -f metriky.tex normy.tex vektory.tex
	rm -f metriky-reseni.tex normy-reseni.tex vektory-reseni.tex

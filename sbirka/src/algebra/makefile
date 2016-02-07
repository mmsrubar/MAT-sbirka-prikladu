all: grupy.tex morfismy.tex kongruence.tex zbytkove_tridy.tex \
	grupy-reseni.tex morfismy-reseni.tex kongruence-reseni.tex \
	zbytkove_tridy-reseni.tex

src_grupy := $(sort $(wildcard zadani/3-1*.tex))
src_morfismy := $(sort $(wildcard zadani/3-2*.tex))
src_kongruence := $(sort $(wildcard zadani/3-3*.tex))
src_zbytkove_tridy := $(sort $(wildcard zadani/3-4*.tex))

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
			echo -e "\includegraphics{src/algebra/reseni/$$subsection.pdf}" >> $@; \
		elif [ -f reseni/$$subsection.tex ]; then \
			echo -e "\input{src/algebra/reseni/$$subsection.tex}" >> $@; \
		elif [ -f reseni/$$subsection.jpg ]; then \
			echo "\begin{figure}[H]" >> $@; \
			echo "\centering" >> $@; \
			echo "\includegraphics[width=90mm]{src/algebra/reseni/$$subsection.jpg}" >> $@; \
			echo "\end{figure}" >> $@; \
		elif [ -f reseni/$$subsection.png ]; then \
			echo "\begin{figure}[H]" >> $@; \
			echo "\centering" >> $@; \
			echo "\includegraphics[width=90mm]{src/algebra/reseni/$$subsection.png}" >> $@; \
			echo "\end{figure}" >> $@; \
		else \
			echo "Vyřešil si tento příklad? Pak jej naskenuj/vyfoť a nahraj na github" >> $@; \
		fi \
	done
endef

grupy.tex: $(src_grupy)
	$(zadani)
morfismy.tex: $(src_morfismy)
	$(zadani)
kongruence.tex: $(src_kongruence)
	$(zadani)
zbytkove_tridy.tex: $(src_zbytkove_tridy)
	$(zadani)

grupy-reseni.tex: $(src_grupy)
	$(reseni)
morfismy-reseni.tex: $(src_morfismy)
	$(reseni)
kongruence-reseni.tex: $(src_kongruence)
	$(reseni)
zbytkove_tridy-reseni.tex: $(src_zbytkove_tridy)
	$(reseni)

clean:
	rm -f grupy.tex morfismy.tex kongruence.tex zbytkove_tridy.tex
	rm -f grupy-reseni.tex morfismy-reseni.tex kongruence-reseni.tex zbytkove_tridy-reseni.tex

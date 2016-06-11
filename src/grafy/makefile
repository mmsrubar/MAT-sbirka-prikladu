all: grafy.tex min_kostry.tex grafy-reseni.tex min_kostry-reseni.tex

src_grafy := $(sort $(wildcard zadani/5-1*.tex))
src_min_kostry := $(sort $(wildcard zadani/5-2*.tex))

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
			echo -e "\includegraphics[width=400pt,height=800pt,keepaspectratio=true]{src/grafy/reseni/$$subsection.pdf}" >> $@; \
		elif [ -f reseni/$$subsection.tex ]; then \
			echo -e "\input{src/grafy/reseni/$$subsection.tex}" >> $@; \
		elif [ -f reseni/$$subsection.jpg ]; then \
			echo "\begin{figure}[H]" >> $@; \
			echo "\centering" >> $@; \
			echo "\includegraphics[width=90mm]{src/grafy/reseni/$$subsection.jpg}" >> $@; \
			echo "\end{figure}" >> $@; \
		elif [ -f reseni/$$subsection.png ]; then \
			echo "\begin{figure}[H]" >> $@; \
			echo "\centering" >> $@; \
			echo "\includegraphics[width=90mm]{src/grafy/reseni/$$subsection.png}" >> $@; \
			echo "\end{figure}" >> $@; \
		else \
			echo "Vyřešil si tento příklad? Přidej ho sem (na githubu najdeš instrukce)." >> $@; \
		fi \
	done
endef

grafy.tex: $(src_grafy)
	$(zadani)
min_kostry.tex: $(src_min_kostry)
	$(zadani)

grafy-reseni.tex: $(src_grafy)
	$(reseni)
min_kostry-reseni.tex: $(src_min_kostry)
	$(reseni)

clean:
	rm -f grafy.tex min_kostry.tex grafy-reseni.tex min_kostry-reseni.tex

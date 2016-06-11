all: dukazy_log_formuli.tex  dukazy_pred_formuli.tex realizace.tex prenexni_tvar.tex \
	dukazy_log_formuli-reseni.tex dukazy_pred_formuli-reseni.tex realizace-reseni.tex \
	prenexni_tvar-reseni.tex

# zadani
src_dukazy_log_formuli := $(sort $(wildcard zadani/2-1*.tex))
src_dukazy_pred_formuli := $(sort $(wildcard zadani/2-2*.tex))
src_realizace := $(sort $(wildcard zadani/2-3*.tex))
src_prenexni_tvar := $(sort $(wildcard zadani/2-4*.tex))

define reseni = 
	rm -rf $@
	for i in $?; do \
		f=$$(basename $$i); \
		subsection=$${f%%.*}; \
		echo -e "\subsubsection{}" >> $@; \
		if [ -f reseni/$$subsection.pdf ]; then \
			echo -e "\includegraphics[width=400pt,height=800pt,keepaspectratio=true]{src/logika/reseni/$$subsection.pdf}" >> $@; \
		elif [ -f reseni/$$subsection.tex ]; then \
			echo -e "\input{src/logika/reseni/$$subsection.tex}" >> $@; \
		elif [ -f reseni/$$subsection.jpg ]; then \
			echo "\begin{figure}[H]" >> dukazy_log_formuli-reseni.tex; \
			echo "\centering" >> dukazy_log_formuli-reseni.tex; \
			echo "\includegraphics[width=90mm]{src/logika/reseni/$$subsection.jpg}" >> $@; \
			echo "\end{figure}" >> dukazy_log_formuli-reseni.tex; \
		elif [ -f reseni/$$subsection.png ]; then \
			echo "\begin{figure}[H]" >> dukazy_log_formuli-reseni.tex; \
			echo "\centering" >> dukazy_log_formuli-reseni.tex; \
			echo "\includegraphics[width=90mm]{src/logika/reseni/$$subsection.png}" >> $@; \
			echo "\end{figure}" >> dukazy_log_formuli-reseni.tex; \
		else \
			echo "Vyřešil si tento příklad? Přidej ho sem (na githubu najdeš instrukce)." >> $@; \
		fi \
	done
endef

define zadani =
	rm -rf $@
	for i in $?; do \
		echo -e "\subsubsection{}" >> $@; \
		cat $$i >> $@; \
	done
endef

dukazy_log_formuli.tex: $(src_dukazy_log_formuli)
	$(zadani)
dukazy_pred_formuli.tex: $(src_dukazy_pred_formuli)
	$(zadani)
realizace.tex: $(src_realizace)
	$(zadani)
prenexni_tvar.tex: $(src_prenexni_tvar)
	$(zadani)

#FIXME: do zavislosti by se mely pridat i reseni
dukazy_log_formuli-reseni.tex: $(src_dukazy_log_formuli)
	$(reseni)
dukazy_pred_formuli-reseni.tex: $(src_dukazy_pred_formuli)
	$(reseni)
realizace-reseni.tex: $(src_realizace)
	$(reseni)
prenexni_tvar-reseni.tex: $(src_prenexni_tvar)
	$(reseni)

clean:
	rm -f dukazy_{log_formuli,pred_formuli}.tex realizace.tex prenexni_tvar.tex
	rm -f dukazy_{log_formuli,pred_formuli}-reseni.tex realizace-reseni.tex prenexni_tvar-reseni.tex

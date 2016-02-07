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
			echo -e "\includegraphics{src/logika/reseni/$$subsection.pdf}" >> $@; \
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
			echo "Vyřešil si tento příklad? Pak jej naskenuj/vyfoť a nahraj na github" >> $@; \
		fi \
	done
endef

dukazy_log_formuli.tex: $(src_dukazy_log_formuli)
	bash -c "cat $? > $@"
dukazy_pred_formuli.tex: $(src_dukazy_pred_formuli)
	bash -c "cat $? > $@"
realizace.tex: $(src_realizace)
	bash -c "cat $? > $@"
prenexni_tvar.tex: $(src_prenexni_tvar)
	bash -c "cat $? > $@"

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

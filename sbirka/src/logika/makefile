all: dukazy_log_formuli.tex dukazy_pred_formuli.tex realizace.tex prenexni_tvar.tex

src_dukazy_log_formuli := $(sort $(sort $(wildcard 0*.tex)))
src_dukazy_pred_formuli := $(sort $(sort $(wildcard 1*.tex)))
src_realizace := $(sort $(sort $(wildcard 2*.tex)))
src_prenexni_tvar := $(sort $(sort $(wildcard 3*.tex)))

dukazy_log_formuli.tex: $(src_dukazy_log_formuli)
	bash -c "cat $(src_dukazy_log_formuli) > dukazy_log_formuli.tex"
dukazy_pred_formuli.tex: $(src_dukazy_pred_formuli)
	bash -c "cat $(src_dukazy_pred_formuli) > dukazy_pred_formuli.tex"
realizace.tex: $(src_realizace)
	bash -c "cat $(src_realizace) > realizace.tex"
prenexni_tvar.tex: $(src_prenexni_tvar)
	bash -c "cat $(src_prenexni_tvar) > prenexni_tvar.tex"
test: $(wildcard 21*)
	bash -c "cat $(wildcard 21*) > test.out"

clean:
	rm -f dukazy_log_formuli.tex dukazy_pred_formuli.tex realizace.tex prenexni_tvar.tex

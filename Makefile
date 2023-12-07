TEXFILE=src/bounds-related-figs.tex
OUTDIR=../out

pdf: ${TEXFILE}
	latexmk -cd -outdir=$(OUTDIR) -xelatex $<;
	latexmk -c -cd -outdir=$(OUTDIR) -xelatex $<

watch: $(TEXFILE)
	latexmk -cd -outdir=$(OUTDIR) -pvc -xelatex $(word 1, $^)

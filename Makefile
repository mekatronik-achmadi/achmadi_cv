TEXCC=lualatex
BIBCC=bibtex
TEXFLAGS=-shell-escape -synctex=1 -interaction=nonstopmode
TEXFILE=$(shell basename --suffix=.tex $$(ls -1 *.tex))
OUTDIR=output_pdf

# '-' sign mean keep going even if the command fail
all:
	mkdir -p $(OUTDIR)
	-$(TEXCC) $(TEXFLAGS) --output-dir=$(OUTDIR) $(TEXFILE).tex
	-$(BIBCC) $(OUTDIR)/$(TEXFILE).aux
	-$(TEXCC) $(TEXFLAGS) --output-dir=$(OUTDIR) $(TEXFILE).tex
	-$(TEXCC) $(TEXFLAGS) --output-dir=$(OUTDIR) $(TEXFILE).tex # run twice to update ToC/BibTeX

clean:
	rm -f *.out *.bbl *.blg *.lof *.lot *.nav *.vrb
	rm -f *.log *.toc *.synctex.gz  *.pyg *.snm
	rm -f *.aux *Notes.bib
	rm -f *.pdf
	rm -rf ./_minted*
	rm -rf $(OUTDIR)/

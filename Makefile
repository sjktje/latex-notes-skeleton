
all: main.pdf

clean:
	rm -f *.log *.aux *.aux2 *.toc *.out *.blg *.bbl *.brf

distclean: clean
	rm -f *.pdf

%.pdf: main.tex $(wildcard *.tex) $(wildcard *.bib)
	pdflatex $< </dev/null ||:
#	bibtex $(patsubst %.tex,%,$<)
	while ! diff -q $(basename $<).aux $(basename $<).aux2 > /dev/null; do \
		cp $(basename $<).aux $(basename $<).aux2 2> /dev/null || :> $(basename $<).aux2 ; \
		pdflatex $< </dev/null ||: ; \
	done
	rm -f *.log *.aux2
viewpdf: main.pdf
	open main.pdf

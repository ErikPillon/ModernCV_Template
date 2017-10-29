title = CV

bibliography = bibliography.bib

all: $(title).pdf

clean:
	rm -f *.pdf *.toc *.aux *.out *.log *.dvi *.bbl *.gz

$(title).pdf: $(title).tex
	echo "==> Compiling file "$(title)".tex"; \
	pdflatex $(title).tex

$(title).tex: $(chapters) $(bibliography)
	touch $(title).tex


full:
	pdflatex $(title).tex
	bibtex $(title).aux
	pdflatex $(title).tex
	pdflatex $(title).tex
	


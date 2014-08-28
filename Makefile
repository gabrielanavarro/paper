TARGET = Paper.pdf

BIBTEX = bibtex
LATEX = latex
DVIPS = dvips
PS2PDF = ps2pdf

VERSION = 0.0.1

MAIN_FILE = paper.tex
DVI_FILE = $(addsuffix .dvi, $(basename $(MAIN_FILE)))
AUX_FILE = $(addsuffix .aux, $(basename $(MAIN_FILE)))
PS_FILE = $(addsuffix .ps, $(basename $(MAIN_FILE)))
PDF_FILE = $(addsuffix .pdf, $(basename $(MAIN_FILE)))

all:
	@make $(TARGET)

$(TARGET): $(MAIN_FILE)
	$(LATEX) $(MAIN_FILE)
	$(DVIPS) $(DVI_FILE)
	$(PS2PDF) $(PS_FILE)
	@cp $(PDF_FILE) $(TARGET)



clean:
	rm -f *~ *.dvi *.ps *.backup *.aux *.log
	rm -f *.lof *.lot *.bbl *.blg *.brf *.toc *.idx
	rm -f *.pdf

	

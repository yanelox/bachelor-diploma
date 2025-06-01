
PDFS = main.pdf

.PHONY: all clean

all: main.pdf

INCLUDES = include/*.tex

PARTS = parts/*.tex

MAIN = main.tex

LIB = references.bib

%.pdf: $(MAIN) $(PARTS) $(INCLUDES) $(LIB)
	latexrun/latexrun $*

clean:
# this is a bad practice, of course, but it's enough for our purposes
	cp main.pdf tmp_makefile_main.pdf
	latexrun/latexrun --clean-all
	mv tmp_makefile_main.pdf main.pdf
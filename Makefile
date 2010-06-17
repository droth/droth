HEADER=header.tex
FOOTER=footer.tex

DIRS=numerik-1 numerik-2

SRC=spickzettel.tex
DST=spickzettel.pdf

all: $(DST)

$(DST): $(SRC)
	pdflatex $(SRC)
	pdflatex $(SRC)
	pdflatex $(SRC)

$(SRC): $(HEADER) allincludes.tex $(FOOTER)
	cat $^ > $@

allincludes.tex: $(DIRS)
	./generate.sh > $@

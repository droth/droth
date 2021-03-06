HEADER=header.tex
FOOTER=footer.tex

DIRS=numerik-1 numerik-2 physik etech algodat swdev

SRC=spickzettel.tex
DST=spickzettel.pdf

all: $(DST) analysis-1.pdf

$(DST): $(SRC)
	pdflatex $(SRC)
	pdflatex $(SRC)
	pdflatex $(SRC)

$(SRC): $(HEADER) allincludes.tex $(FOOTER)
	cat $^ > $@

allincludes.tex: $(DIRS)
	./generate.sh $^ > $@

analysis-1.pdf:
	cd analysis-1 && $(MAKE)

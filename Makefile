HEADER=header.tex
FOOTER=footer.tex
SRC=spickzettel.tex
DST=spickzettel.pdf

all: $(DST)

$(DST): $(SRC)
	pdflatex $(SRC)
	pdflatex $(SRC)
	pdflatex $(SRC)

$(SRC): $(HEADER) $(FOOTER) allincludes.tex
	echo cat $^ > $@

allincludes.tex:
	./generate.sh > $@

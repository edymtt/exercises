#==Path dei tool
PDFLATEX=pdflatex
PDFSIZEOPT=python ~/pdfsizeopt/pdfsizeopt.py
PDFSIZEOPT_FLAGS=--use-pngout=true --use-multivalent=false --use-jbig2=true

FLAGS=#-Xlint:unchecked -Xlint:deprecation
EXEC_CP=".:resources"

#==Virtual path (per considerare file in sottodirectory come fossero nella stessa
#  directory del Makefile)
#VPATH=client:server:messages:shared

#==File da compilare
COMMON=common/header.tex
ALG=introToAlg2e/introToAlg2e.tex 

#==Target per la compilazione
all: output/introToAlg2e.pdf

introToAlg2e/introToAlg2e.pdf : $(COMMON) $(ALG)
	cd introToAlg2e;$(PDFLATEX) ../$(ALG);$(PDFLATEX) ../$(ALG);$(PDFLATEX) ../$(ALG)

output/introToAlg2e.pdf : introToAlg2e/introToAlg2e.pdf
	$(PDFSIZEOPT) $(PDFSIZEOPT_FLAGS) $? output/introToAlg2e.pdf
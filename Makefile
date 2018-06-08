NAME=xbondgraphs
ARCHIVE_NAME=$(NAME).tar.gz
ARCHIVE_CONTENTS=$(NAME).dtx Makefile README $(NAME).ins $(NAME).pdf LICENSE
SHELL:=/bin/bash

all: sty doc clean

doc: compile

compile: sty
	@ printf "Compiling ...\n"
	pdflatex --shell-escape $(NAME).dtx > $(NAME).log
	pdflatex $(NAME).dtx >> $(NAME).log
	makeindex -q $(NAME).idx >> $(NAME).log
	makeindex -q -s gglo.ist -o $(NAME).gls $(NAME).glo >> $(NAME).log
	pdflatex $(NAME).dtx >> $(NAME).log
	pdflatex $(NAME).dtx >> $(NAME).log
	@ printf "Compiling finished \n"

sty:
	@ printf "Generating .sty files ...\n"
	tex $(NAME).ins > $(NAME).log
	@ printf ".sty files finished \n"

archive:
	@printf "Creating archive ... \n"
	@printf "DONE, actually done nothing..."

cleanaux:
	@ printf "Cleaning auxilliary files ... \n"
	rm -f $(NAME).{blg,bbl,fdb_latexmk,synctex.gz,fls,hd,log,aux,tdo,toc,ind,gls,ilg,idx,out,tcbtemp,glo}
	rm -f xbg.*
	rm -f *.{log,aux}
	@ printf "Cleaning auxilliary files finshed \n"

clean: cleanaux
	@ printf "Cleaning remaining files ... \n"
	# rm -f $(NAME).pdf
	rm -f $(NAME).sty
	rm -f xbg*code*
	@ printf "Cleaning finished \n"

NAME=xbondgraphs
TEMP_PREFIX=xbg_tmp
ARCHIVE_NAME=$(NAME).tar.gz
ARCHIVE_CONTENTS=$(NAME).dtx Makefile README $(NAME).ins $(NAME).pdf LICENSE
SHELL:=/bin/bash

all: sty doc

doc: compile cleanaux

compile: sty
	@ pdflatex --shell-escape $(NAME).dtx > $(NAME).log
	@ pdflatex $(NAME).dtx >> $(NAME).log
	@ makeindex -q $(NAME).idx >> $(NAME).log
	@ makeindex -q -s gglo.ist -o $(NAME).gls $(NAME).glo >> $(NAME).log
	@ pdflatex $(NAME).dtx >> $(NAME).log
	@ pdflatex $(NAME).dtx >> $(NAME).log

sty:
	@ tex $(NAME).ins > $(NAME).log

archive:
	@ tar -czf $(ARCHIVE_NAME) $(ARCHIVE_CONTENTS)

cleanaux:
	@ rm -f $(NAME).{blg,bbl,fdb_latexmk,synctex.gz,fls,hd,log,aux,tdo,toc,ind,gls,ilg,idx,out,tcbtemp,glo}
	@ rm -f $(TEMP_PREFIX)*
	@ rm -f *.{log,aux}

clean: cleanaux
	@ rm -f $(NAME).pdf
	@ rm -f $(NAME)*.sty

NAME=xbondgraphs
ARCHIVE_NAME=$(NAME).tar.gz
ARCHIVE_CONTENTS=$(NAME).dtx Makefile README $(NAME).ins $(NAME).pdf LICENSE
SHELL:=/bin/bash

all: sty pdf

pdf: sty
	@ printf "Compile $(NAME).dtx\n"
	@ pdflatex $(NAME).dtx > $(NAME).log
	@ printf "Re-compile $(NAME).dtx for cross-references\n"
	@ pdflatex $(NAME).dtx >> $(NAME).log
	@ printf "Make regular index\n"
	@ makeindex -q $(NAME).idx >> $(NAME).log
	@ printf "Use makeindex to record changes\n"
	@ makeindex -q -s gglo.ist -o $(NAME).gls $(NAME).glo >> $(NAME).log
	@ printf "Compile $(NAME).dtx again\n"
	@ pdflatex $(NAME).dtx >> $(NAME).log
	@ printf "Re-compile $(NAME).dtx again for cross-references\n"
	@ pdflatex $(NAME).dtx >> $(NAME).log
	@ printf "Done with 'make pdf'!\n"

sty:
	@ printf "Delete all $(NAME)*.sty files\n"
	@ rm -f $(NAME)*.sty
	@ printf "Remake necessary .sty files from $(NAME).ins\n"
	@ tex $(NAME).ins > $(NAME).log
	@ printf "Done with 'make sty'!\n"

archive:
	@ tar -czf $(ARCHIVE_NAME) $(ARCHIVE_CONTENTS)

clean:
	@ printf "Clean-up directory\n"
	@ rm -f $(NAME).{toc,idx,ilg,ind,aux,blg,bbl,out,gls,glo,fdb_latexmk,synctex.gz,fls,hd,pdf,tdo,tcbtemp}
	@ rm -f $(NAME)*.sty
	@ rm -f *.log

NAME=xbondgraphs
TEMP_PREFIX=xbg_tmp
ARCHIVE_NAME=$(NAME).tar.gz
ARCHIVE_CONTENTS=$(NAME).dtx Makefile README $(NAME).ins $(NAME).pdf LICENSE
SHELL:=/bin/bash

all: sty pdf cleanaux

pdf: sty
	@ printf "Compile $(NAME).dtx\n"
	@ pdflatex --shell-escape $(NAME).dtx > $(NAME).log
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

open:
	@ printf "Opening $(NAME).pdf\n"
	@ xdg-open $(NAME).pdf

sty:
	@ printf "Delete all $(NAME)*.sty files\n"
	@ rm -f $(NAME)*.sty
	@ printf "Remake necessary .sty files from $(NAME).ins\n"
	@ tex $(NAME).ins > $(NAME).log
	@ printf "Done with 'make sty'!\n"

archive:
	@ tar -czf $(ARCHIVE_NAME) $(ARCHIVE_CONTENTS)

cleanaux:
	@ printf "Cleaning auxilliary files\n"
	@ rm -f $(NAME).{log,aux,tdo,toc,ind,gls,ilg,idx,out,tcbtemp,glo}
	@ rm -f $(TEMP_PREFIX)*
	@ printf "Done with 'cleanaux'!\n"

clean: cleanaux
	@ printf "Clean-up directory\n"
	@ rm -f $(NAME).{toc,idx,ilg,ind,aux,blg,bbl,out,gls,glo,fdb_latexmk,synctex.gz,fls,hd,pdf,tdo,tcbtemp}
	@ rm -f $(NAME)*.sty
	@ rm -f *.{log,aux}

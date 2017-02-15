# General makefile for managing LaTeX documents
# Written by Jabir Ali Ouassou <teletubbi(at)gmail.com>

DOCUMENT	= labreport
OUTPUT		= Lab_report.pdf
BIB		= bibliography.bib
SRCS		= *.tex *.bib
TMPS		= *~ *.aux *.bbl *.blg *.log *.toc *.idx *.ps *.dvi

MAKEFILE	= Makefile
LATEX		= pdflatex -file-line-error
BIBLATEX	= biblatex

$(DOCUMENT):	$(MAKEFILE)	
	@$(LATEX)  $(DOCUMENT)
	@$(BIBLATEX) $(DOCUMENT)
	@$(LATEX)  $(DOCUMENT)
	@$(LATEX)  $(DOCUMENT)

clean:
	@rm -f *~ *.aux *.bbl *.blg *.log *.toc *.idx *.ps *.dvi *.out *.url *-blx.bib *.run.xml *.bcf
	@rm -f */*.aux

view:
	@evince master.pdf &!

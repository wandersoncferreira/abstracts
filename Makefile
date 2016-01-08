PROJECT=abstract_EAGE
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
		$(BUILDTEX)
#		$(BIBTEX) $(PROJECT)  comenta essa linha se nenhum arquivo bibliografico for usado no $(PROJECT)
		$(BUILDTEX)
		$(BUILDTEX)
#		spdf.py $(PROJECT).pdf 1   Explico essas linhas depois... elas são especificas para o abstract da EAGE. Comando para separar a capa do resto do Abstract
#		mv $(PROJECT)_part1.pdf $(PROJECT)-capa.pdf
#		mv $(PROJECT)_part2.pdf $(PROJECT)-abstract.pdf

view:
		xdg-open $(PROJECT).pdf &

clean-all:
		rm -f *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.pdf *.toc *.out *~ *.gz

clean:
		rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~ *.gz

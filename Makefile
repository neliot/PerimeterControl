paper: paper.tex thesis.bib IEEEtran.cls figures
	latex paper
	bibtex paper
	latex paper
	latex paper
	dvips -Ppdf paper
	ps2pdf -dCompatibility=1.5 -dPDFSETTINGS=/prepress -dEmbedAllFonts=true paper.ps

MYFILE = paper.txt
clean:
	rm -f $(foreach ext, aux log out toc lof lot bbl blg, ${MYFILE:.txt=.${ext}}) 
	

# Build thesis
# Dependencies: pdflatex, pandoc, pandoc-citeproc, pygments, minted

do: 
	pandoc -s --filter pandoc-citeproc -o report.tex ??.??.*.md
	pdflatex -shell-escape report.tex
	pdflatex -shell-escape report.tex
	rm *.aux *.log *.out *.toc


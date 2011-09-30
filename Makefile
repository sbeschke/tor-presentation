all: tor-slides.pdf

clean:
	rm tor-slides.pdf

preview: tor-slides.pdf
	impressive -T 0 -f tor-slides.pdf

tor-slides.pdf: tor-slides.tex images/*.pdf
	pdflatex tor-slides.tex
	pdflatex tor-slides.tex

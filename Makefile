all: tor-slides.pdf

clean:
	rm tor-slides.pdf

preview: tor-slides.pdf
	impressive -T 0 -c persistent -f tor-slides.pdf

present: tor-slides.pdf
	impressive -T 0 -c persistent tor-slides.pdf

tor-slides.pdf: tor-slides.tex images/*.pdf
	pdflatex tor-slides.tex
	pdflatex tor-slides.tex

LATEXMK ?= latexmk
LATEXMK_FLAGS := -xelatex -synctex=1 -interaction=nonstopmode -halt-on-error

.PHONY: all pdf clean

all: pdf

pdf:
	$(LATEXMK) $(LATEXMK_FLAGS) Compilation.tex
	$(LATEXMK) $(LATEXMK_FLAGS) Compilation-answer.tex

clean:
	$(LATEXMK) -C Compilation.tex
	$(LATEXMK) -C Compilation-answer.tex

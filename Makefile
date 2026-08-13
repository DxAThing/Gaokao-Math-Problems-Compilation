LATEXMK ?= latexmk
LATEXMK_FLAGS := -xelatex -synctex=1 -interaction=nonstopmode -halt-on-error

.PHONY: all pdf pdf-main pdf-answer clean

all: pdf

pdf:
	+$(MAKE) --no-print-directory -j2 pdf-main pdf-answer

pdf-main:
	$(LATEXMK) $(LATEXMK_FLAGS) Compilation.tex

pdf-answer:
	$(LATEXMK) $(LATEXMK_FLAGS) Compilation-answer.tex

clean:
	$(LATEXMK) -C Compilation.tex
	$(LATEXMK) -C Compilation-answer.tex

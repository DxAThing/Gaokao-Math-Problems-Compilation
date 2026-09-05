LATEXMK ?= latexmk
LATEXMK_FLAGS := -xelatex -synctex=1 -interaction=nonstopmode -halt-on-error \
	-e '$$xelatex = "xelatex -cnf-line=extra_mem_bot=10000000 %O %S"'

IMAGE_LAYOUT_OUTPUT := tools/typeset/generated_image_layout.tex
IMAGE_LAYOUT_REPORT := tmp/auto_image_layout.tsv
IMAGE_LAYOUT_INPUTS := $(shell find content -type f -name '*.tex') \
	$(shell find img -type f \( -name '*.png' -o -name '*.jpg' -o -name '*.jpeg' \))

.PHONY: all pdf pdf-main pdf-answer image-layout crop-ui clean

all: pdf

pdf: image-layout
	+$(MAKE) --no-print-directory -j2 pdf-main pdf-answer

pdf-main: image-layout
	$(LATEXMK) $(LATEXMK_FLAGS) Compilation.tex

pdf-answer: image-layout
	$(LATEXMK) $(LATEXMK_FLAGS) Compilation-answer.tex

image-layout: $(IMAGE_LAYOUT_OUTPUT)

clean:
	$(LATEXMK) -C Compilation.tex
	$(LATEXMK) -C Compilation-answer.tex

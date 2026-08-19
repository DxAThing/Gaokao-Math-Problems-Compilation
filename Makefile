LATEXMK ?= latexmk
LATEXMK_FLAGS := -xelatex -synctex=1 -interaction=nonstopmode -halt-on-error \
	-e '$$xelatex = "xelatex -cnf-line=extra_mem_bot=10000000 %O %S"'
AUTO_IMAGE_LAYOUT ?= go run tools/typeset/auto_image_layout.go
IMAGE_LAYOUT_OUTPUT := tools/typeset/generated_image_layout.tex
IMAGE_LAYOUT_REPORT := tmp/auto_image_layout.tsv
IMAGE_LAYOUT_INPUTS := $(shell find content -type f -name '*.tex') \
	$(shell find img -type f \( -name '*.png' -o -name '*.jpg' -o -name '*.jpeg' \))
IMAGE_LAYOUT_TOOL_INPUTS := tools/typeset/auto_image_layout.go \
	tools/typeset/image_label_detector.py \
	tools/typeset/image_label_calibration.tex \
	styles.tex

.PHONY: all pdf pdf-main pdf-answer image-layout crop-ui clean

all: pdf

pdf: image-layout
	+$(MAKE) --no-print-directory -j2 pdf-main pdf-answer

pdf-main: image-layout
	$(LATEXMK) $(LATEXMK_FLAGS) Compilation.tex

pdf-answer: image-layout
	$(LATEXMK) $(LATEXMK_FLAGS) Compilation-answer.tex

image-layout: $(IMAGE_LAYOUT_OUTPUT)

$(IMAGE_LAYOUT_OUTPUT): $(IMAGE_LAYOUT_INPUTS) $(IMAGE_LAYOUT_TOOL_INPUTS)
	$(AUTO_IMAGE_LAYOUT) \
		-root . \
		-output $(IMAGE_LAYOUT_OUTPUT) \
		-report $(IMAGE_LAYOUT_REPORT) \
		-crop-in-place

crop-ui:
	go run ./tools/crop/manualcrop -root . -addr 127.0.0.1:8766 -open

clean:
	$(LATEXMK) -C Compilation.tex
	$(LATEXMK) -C Compilation-answer.tex

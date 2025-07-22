# Makefile
# Compiles the TEX file and opens the output PDF.

PRV = private
SRC = src/$(PRV)
OUT = out/$(PRV)
TEX = $(wildcard $(SRC)/*.tex)
PDF = $(patsubst $(SRC)/%.tex, $(OUT)/%.pdf, $(TEX))

all: $(PDF)

# Make from all of the TEX files in the source directory.
$(OUT)/%.pdf: $(SRC)/%.tex | $(OUT)
	pdflatex -interaction=nonstopmode -output-directory=$(OUT) $<

$(OUT):
	mkdir -p $(OUT)

# Opens the PDF output in a preview.
open:
	open $(OUT)/*.pdf

# Removes the log and aux outputs.
clean:
	rm -f $(OUT)/*.log $(OUT)/*.aux

# Removes the PDF output as well as the log and aux files.
clean-all:
	rm -f $(OUT)/*

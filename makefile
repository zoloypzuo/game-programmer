DOTFILES = $(basename $(wildcard *.dot))

all: \
	$(addsuffix .png, $(DOTFILES)) \
	$(addsuffix .jpg, $(DOTFILES)) \
	$(addsuffix .svg, $(DOTFILES))

%.png: %.dot
	dot "$<" -Tpng -o "$@"

%.jpg: %.dot
	dot "$<" -Tjpg -o "$@"

%.svg: %.dot
	dot "$<" -Tsvg -o "$@"

clean: 
	rm -f *.jpg *.svg *.pdf *.png

DOTFILES = $(basename $(wildcard *.dot))

all: \
	$(addsuffix .png, $(DOTFILES))


%.png: %.dot
	dot "$<" -Tpng -o "$@"

clean: 
	rm -f *.jpg *.svg *.pdf *.png

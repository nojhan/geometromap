MAPS=geometromap geometromap_solarized

all: $(addsuffix .pdf,$(MAPS))

%.pdf: %.svg
	inkscape -A $@ $<

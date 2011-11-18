MAPS=geometromap

TMPDFs=$(addprefix tmp_, $(addsuffix .pdf, $(MAPS)))
PDFs=$(addsuffix .pdf, $(MAPS))

all: $(PDFs)

%.pdf: %.svg meta.data
	inkscape -A tmp_$@ $<
	pdftk tmp_$@ update_info meta.data output $@

cleantmp:
	 rm -f $(TMPDFs)

clean: cleantmp
	rm -f $(PDFs)


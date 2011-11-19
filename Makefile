
TF="nometadata.pdf"

all: colors geometromap.pdf geometromap_light.pdf

colors: geometromap.svg geometromap_light.svg

pdf: geometromap.pdf geometromap_light.pdf

%_light.svg: %.svg 
	bash switch_colors.sh $<

%.pdf: %.svg meta.data
	inkscape -A $(TF) $<
	pdftk $(TF) update_info meta.data output $@

clean:
	rm -f $(TF)
	rm -f geometromap_light.svg
	rm -f geometromap.pdf geometromap_light.pdf


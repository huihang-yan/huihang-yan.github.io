all: index.html

index.html: huihang.7 ascii.art
	@cat heading > $@
	@echo '<div style="border: 1px solid">$$Id: huihang-yan.github.io,' $$(date '+<u><b>%+4Y/%m/%d %T</u></b>') 'huihang Exp $$</div>'  >> $@
	@groff -man -T ascii < huihang.7 | sed 's/\x08.//g' >> $@
	@echo '</pre></html>' >> $@
	@sed -i '/BANNER_HERE/r banner.ascii' $@
	@sed -i '/BANNER_HERE/d' $@
	@sed -i '/ASCII_ART_HERE/r ascii.art' $@
	@sed -i '/ASCII_ART_HERE/d' $@
	@sed -i '/ASCII_ART2/r ascii.art2' $@
	@sed -i '/ASCII_ART2/d' $@

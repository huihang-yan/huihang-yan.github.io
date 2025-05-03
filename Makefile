all: index.html

index.html: huihang.7
	cat heading > $@
	echo '<div style="border: 1px solid">$$Id: huihang-yan.github.io,' $$(date '+<u><b>%+4Y/%m/%d %T</u></b>') 'huihang Exp $$</div>'  >> $@
	groff -man -T ascii < $? | sed 's/\x08.//g' >> $@
	echo '</pre></html>' >> $@
	sed -i '/BANNER_HERE/r banner.ascii' $@
	sed -i '/BANNER_HERE/d' $@

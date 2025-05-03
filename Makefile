all: index.html

index.html: huihang.7
	cat heading > $@
	echo  '$$Id: huihang-yan.github.io,' '<u><b>' $$(date '+%+4Y/%m/%d %T') '</u></b>huihang Exp$$<br><br><br>'  >> $@
	groff -man -T ascii < $? | sed 's/\x08.//g' >> $@
	echo '</pre></html>' >> $@

all: index.html

index.html: huihang.7
	cat heading > $@
	groff -man -T ascii < $? | sed 's/\x08.//g' >> $@
	echo '</pre></html>' >> $@

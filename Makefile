all: index.html
	
index.html: huihang.7
	cat heading > $@
	groff -man -T ascii < $? >> $@
	echo '</pre></html>' >> $@

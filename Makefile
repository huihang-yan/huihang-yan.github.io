all: index.html
	
index.html: huihang.7
	cat heading > index.html
	groff -man -T ascii < $? | less
	echo '</pre></html>' >> $<

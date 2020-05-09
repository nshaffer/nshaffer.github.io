all : index.html

%.html : %.m4
	m4 $^ > $@

clean : 
	$(RM) *.html

.PHONY : all clean

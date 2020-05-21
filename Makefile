all : index.html vitae.html resources.html

%.html : %.m4 macros.m4
	m4 $^ > $@

clean : 
	$(RM) *.html

.PHONY : all clean

BROWSER ?= open

concat: clean 
	cd md; cat header.md education.md academic_experience.md employment.md awards.md publications.md  presentations.md service.md affiliations.md > ../wiki/DHuang_CV.md; cd ..

html: concat
	markdoc build
	
print: concat
	pandoc 

all: html print

.PHONY: clean
clean:
	$(RM) -r .html
	$(RM) -r .tmp

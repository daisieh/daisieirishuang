WEB_HOST ?= alchemy.grimoire.ca
WEB_ROOT ?= /var/www/grimoire.ca

BROWSER ?= open

.html: clean
	markdoc build

.PHONY: html
html: .html

.PHONY: clean
clean:
	$(RM) -r .html
	$(RM) -r .tmp

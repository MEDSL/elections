PKG := $(shell head -1 DESCRIPTION | sed 's/Package: //' | cat)
DATAVERSE_DIR = ../medsl-dataverse-python/medsl/output/r-package
VERSION := $(shell sed -n 3p DESCRIPTION | sed 's/Version: //' | cat)
BINARY := $(PKG)_$(VERSION).tar.gz
RDA_FILES = $(wildcard data/*.rda)
RD_FILES = $(wildcard man/*.Rd)
R_ARGS := --no-site-file --no-environ --no-save \
	  --no-restore --no-resave-data --no-manual --quiet
R := R

.PHONY: all clean docs
all: $(RDA_FILES) $(RD_FILES) README.md README.Rmd build install

data/%.rda: $(DATAVERSE_DIR)/%.rda
	cp $< $@

man/%.Rd: $(DATAVERSE_DIR)/%.Rd
	cp $< $@

data/state_ids.rda: data-ext/state_ids.csv data-ext/state_ids.R
	Rscript data-ext/state_ids.R

README.md: README.Rmd $(RDA_FILES)
	Rscript -e "rmarkdown::render('README.Rmd')"

build: 
	R $(R_ARGS) CMD build .  

build-cran:
	$(R) CMD build . --no-resave-data --no-manual
	
check: 
	$(R) CMD check $(BINARY)

check-cran: 
	$(R) CMD check --as-cran $(BINARY)

install: $(BINARY)
	$(R) CMD INSTALL --no-multiarch --with-keep.source $(BINARY)

install-code:
	$(R) CMD INSTALL --no-multiarch --with-keep.source --no-docs .

docs:
	Rscript --vanilla -e "devtools::document()"


# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS  =
SPHINXBUILD = sphinx-build
AUTOOPTS    = --host 0.0.0.0 --poll --ignore "*.sw?" --watch static --watch template $(if $(AUTOPORT),--port=$(AUTOPORT))
AUTOBUILD   = sphinx-autobuild
PAPER       =
BUILDDIR    = build
OUTDIR 		= $(BUILDDIR)

# User-friendly check for sphinx-build
ifeq ($(shell which $(SPHINXBUILD) >/dev/null 2>&1; echo $$?), 1)
$(error The '$(SPHINXBUILD)' command was not found. Make sure you have Sphinx installed, then set the SPHINXBUILD environment variable to point to the full path of the '$(SPHINXBUILD)' executable. Alternatively you can add the directory with the executable to your PATH. If you don't have Sphinx installed, grab it from http://sphinx-doc.org/)
endif

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source

.PHONY: help clean html dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub latex latexpdf text man changes linkcheck doctest gettext watch

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  dirhtml    to make HTML files named index.html in directories"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  pickle     to make pickle files"
	@echo "  json       to make JSON files"
	@echo "  htmlhelp   to make HTML files and a HTML help project"
	@echo "  qthelp     to make HTML files and a qthelp project"
	@echo "  devhelp    to make HTML files and a Devhelp project"
	@echo "  epub       to make an epub"
	@echo "  latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	@echo "  latexpdfja to make LaTeX files and run them through platex/dvipdfmx"
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  texinfo    to make Texinfo files"
	@echo "  info       to make Texinfo files and run them through makeinfo"
	@echo "  gettext    to make PO message catalogs"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  xml        to make Docutils-native XML files"
	@echo "  pseudoxml  to make pseudoxml-XML files for display purposes"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"

clean:
	rm -rf $(BUILDDIR)/*

watch:
	$(AUTOBUILD) $(AUTOOPTS) -a -b html $(ALLSPHINXOPTS) $(OUTDIR)/html
	@echo
	@echo "Initial build finished. Watching for file changes."

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(OUTDIR)/html
	@echo
	@echo "Build finished. The HTML pages are in $(OUTDIR)/html."

dirhtml:
	$(SPHINXBUILD) -b dirhtml $(ALLSPHINXOPTS) $(OUTDIR)/dirhtml
	@echo
	@echo "Build finished. The HTML pages are in $(OUTDIR)/dirhtml."

singlehtml:
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(OUTDIR)/singlehtml
	@echo
	@echo "Build finished. The HTML page is in $(OUTDIR)/singlehtml."

pickle:
	$(SPHINXBUILD) -b pickle $(ALLSPHINXOPTS) $(OUTDIR)/pickle
	@echo
	@echo "Build finished; now you can process the pickle files."

json:
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(OUTDIR)/json
	@echo
	@echo "Build finished; now you can process the JSON files."

htmlhelp:
	$(SPHINXBUILD) -b htmlhelp $(ALLSPHINXOPTS) $(OUTDIR)/htmlhelp
	@echo
	@echo "Build finished; now you can run HTML Help Workshop with the" \
	      ".hhp project file in $(OUTDIR)/htmlhelp."

qthelp:
	$(SPHINXBUILD) -b qthelp $(ALLSPHINXOPTS) $(OUTDIR)/qthelp
	@echo
	@echo "Build finished; now you can run "qcollectiongenerator" with the" \
	      ".qhcp project file in $(OUTDIR)/qthelp, like this:"
	@echo "# qcollectiongenerator $(OUTDIR)/qthelp/techdoc.qhcp"
	@echo "To view the help file:"
	@echo "# assistant -collectionFile $(OUTDIR)/qthelp/techdoc.qhc"

devhelp:
	$(SPHINXBUILD) -b devhelp $(ALLSPHINXOPTS) $(OUTDIR)/devhelp
	@echo
	@echo "Build finished."
	@echo "To view the help file:"
	@echo "# mkdir -p $$HOME/.local/share/devhelp/techdoc"
	@echo "# ln -s $(OUTDIR)/devhelp $$HOME/.local/share/devhelp/techdoc"
	@echo "# devhelp"

epub:
	$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) $(OUTDIR)/epub
	@echo
	@echo "Build finished. The epub file is in $(OUTDIR)/epub."

latex:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(OUTDIR)/latex
	@echo
	@echo "Build finished; the LaTeX files are in $(OUTDIR)/latex."
	@echo "Run \`make' in that directory to run these through (pdf)latex" \
	      "(use \`make latexpdf' here to do that automatically)."

latexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(OUTDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(OUTDIR)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(OUTDIR)/latex."

latexpdfja:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(OUTDIR)/latex
	@echo "Running LaTeX files through platex and dvipdfmx..."
	$(MAKE) -C $(OUTDIR)/latex all-pdf-ja
	@echo "pdflatex finished; the PDF files are in $(OUTDIR)/latex."

text:
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(OUTDIR)/text
	@echo
	@echo "Build finished. The text files are in $(OUTDIR)/text."

man:
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(OUTDIR)/man
	@echo
	@echo "Build finished. The manual pages are in $(OUTDIR)/man."

texinfo:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(OUTDIR)/texinfo
	@echo
	@echo "Build finished. The Texinfo files are in $(OUTDIR)/texinfo."
	@echo "Run \`make' in that directory to run these through makeinfo" \
	      "(use \`make info' here to do that automatically)."

info:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(OUTDIR)/texinfo
	@echo "Running Texinfo files through makeinfo..."
	make -C $(OUTDIR)/texinfo info
	@echo "makeinfo finished; the Info files are in $(OUTDIR)/texinfo."

gettext:
	$(SPHINXBUILD) -b gettext $(I18NSPHINXOPTS) $(OUTDIR)/locale
	@echo
	@echo "Build finished. The message catalogs are in $(OUTDIR)/locale."

changes:
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(OUTDIR)/changes
	@echo
	@echo "The overview file is in $(OUTDIR)/changes."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(OUTDIR)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(OUTDIR)/linkcheck/output.txt."

doctest:
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(OUTDIR)/doctest
	@echo "Testing of doctests in the sources finished, look at the " \
	      "results in $(OUTDIR)/doctest/output.txt."

xml:
	$(SPHINXBUILD) -b xml $(ALLSPHINXOPTS) $(OUTDIR)/xml
	@echo
	@echo "Build finished. The XML files are in $(OUTDIR)/xml."

pseudoxml:
	$(SPHINXBUILD) -b pseudoxml $(ALLSPHINXOPTS) $(OUTDIR)/pseudoxml
	@echo
	@echo "Build finished. The pseudo-XML files are in $(OUTDIR)/pseudoxml."

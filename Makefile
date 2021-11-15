SOURCEDIR       = source
BUILDDIR        = build
OUTDIR          = $(BUILDDIR)/html
DOCTREEDIR      = $(BUILDDIR)/doctrees

SPHINXBUILD     = sphinx-build
SPHINXBUILDOPTS = -a -b html -d $(DOCTREEDIR) $(SOURCEDIR) $(OUTDIR)

AUTOBUILD       = sphinx-autobuild
AUTOBUILDOPTS   = --host 0.0.0.0 --ignore "*.sw?" --watch static --watch template --port $(AUTOPORT)
AUTOPORT        = 8000

.PHONY: clean html watch

clean:
	rm -rf $(DOCTREEDIR)/* $(OUTDIR)/*

html:
	$(SPHINXBUILD) $(SPHINXBUILDOPTS)

watch:
	$(AUTOBUILD) $(AUTOBUILDOPTS) $(SPHINXBUILDOPTS)

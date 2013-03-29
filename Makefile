# Makefile for Sphinx documentation
#
#
#	This script is designed to be used with makePydoc
#	The reference page for this software is :
#	https://sites.google.com/site/naereencorp/liste-des-projets/makepydoc
#
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='11'
#	__date__='jeudi 28/03/2013 at 12h:59m:27s '
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = .build

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .

.PHONY: help clean html dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub latex latexpdf text man changes linkcheck doctest gettext

###############################################################################
# Custom items
CP = /usr/bin/rsync --verbose --times --perms --compress --human-readable --progress --archive
#CP = scp

total:	cleanALL all notify_archive sendAll notify warnings severes errors

local:	cleanALL all notify git warnings severes errors

complete:	cleanALL all sendAll notify

all:	html scripts pdf_all

warnings:
	@echo "Searching for warnings ..."
	@grep --color=always WARNING /tmp/sphinx.log || echo "No warning : very very good job :)"

severes:
	@echo "Searching for severes ..."
	@grep --color=always SEVERE /tmp/sphinx.log || echo "No severe : very good job :)"

errors:
	@echo "Searching for errors ..."
	@grep --color=always ERROR /tmp/sphinx.log || echo "No error : good job :)"

notify:
	notify-send "Sphinx" "Generating documentation : done !"

notify_archive: archive
	notify-send "Sphinx : archiving" "Generating archive : done ! (~/web-sphinx.tar.xz)"

cleanALL: clean_build clean_pyc

archive: clean_pyc
	if [ -f ~/web-sphinx.tar.xz ]; then mv -f ~/web-sphinx.tar.xz ~/Dropbox/ ; fi
	tar -Jcvf ~/web-sphinx.tar.xz ./ > /tmp/web-sphinx.tar.xz`date "+%d_%M__%H_%m_%S"`.log

sendAll: notify_archive send

send: send_public send_dpt send_zamok

send_public:
	$(CP) -r .build/html/ .build/html/.* ~/Public/

send_dpt:
	$(CP) -r .build/html/ .build/html/.* lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/
	$(CP) ~/web-sphinx.tar.xz lbesson@ssh.dptinfo.ens-cachan.fr:~/

send_zamok:
	$(CP) -r .build/html/ .build/html/.* besson@zamok.crans.org:~/www/
	$(CP) ~/web-sphinx.tar.xz besson@zamok.crans.org:~/

pytorst:
	/usr/local/bin/pytorst.sh *.py
	@echo "Erase the conf.rst (conf.py is the Sphinx configuration file)."

clean_pyc:
	rm -f *~ *.py[co] */*~ */*.py[co] .*~ */.*~
	@echo "All *.pyc (Python compiled scripts) and *.py~ (temporary copies) files have been deleted !"

clean_build:
	rm -rf $(BUILDDIR)/doctrees
	rm -rf $(BUILDDIR)/html/[a-zA-Z]*.* $(BUILDDIR)/html/.[a-zA-Z]*
	rm -rf $(BUILDDIR)/html/_images $(BUILDDIR)/html/_static

scripts:
	mkdir --parents $(BUILDDIR)/html/_static/
	$(CP) scripts/*.js $(BUILDDIR)/html/_static/
	$(CP) -r scripts/* $(BUILDDIR)/html/_static/

pyDoc:
	/usr/local/bin/makePydoc.sh

coverage:
	$(SPHINXBUILD) -b coverage $(ALLSPHINXOPTS) $(BUILDDIR)/coverage
	@echo
	@echo "Build finished. The coverage pages are in $(BUILDDIR)/coverage."

pdf_all:	./.pdf_all.sh
	./.pdf_all.sh trademarks.rst transifex.*.rst CV_Lilian_BESSON.*.rst index.rst index_en.rst
	@echo "Build finished. The PDFs files are in $(BUILDDIR)/pdf."

cv.fr:	CV_Lilian_BESSON.fr.pdf
	rst2pdf -s ./.style.rst2pdf -l fr --default-dpi=3000 --baseurl="http://perso.crans.org/besson/" -o CV_Lilian_BESSON.fr.pdf -c CV_Lilian_BESSON.fr.rst
	$(CP) CV_Lilian_BESSON.fr.pdf .build/html/

cv.en:	CV_Lilian_BESSON.en.pdf
	rst2pdf -s ./.style.rst2pdf -l en --default-dpi=3000 --baseurl="http://perso.crans.org/besson/" -o CV_Lilian_BESSON.en.pdf -c CV_Lilian_BESSON.en.rst
#	rst2latex --title="CV Lilian BESSON (en)" -t --no-source-link --language=en --use-verbatim-when-possible -q --tab-width=4  CV_Lilian_BESSON.en.rst CV_Lilian_BESSON.en.latex
	$(CP) CV_Lilian_BESSON.en.pdf .build/html/

slides:	.slides.sh
	./.slides.sh
	@echo "Build finished. The HTML5 + S5 slides are in $(BUILDDIR)/html."

git:
	git add *.rst README.md Makefile conf.py .*.rst .templates/
	git commit -m "auto"
	git push

########################## End of custom stuffs ###############################
###############################################################################

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
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  texinfo    to make Texinfo files"
	@echo "  info       to make Texinfo files and run them through makeinfo"
	@echo "  gettext    to make PO message catalogs"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"

clean:	clean_pyc clean_build
	-rm -rf $(BUILDDIR)/*

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html 2>&1 | tee /tmp/sphinx.log
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."
	if [ -f "$(BUILDDIR)/html/transifex.fr.html" ]; then ln -f -s transifex.fr.html $(BUILDDIR)/html/transifex.html; fi

dirhtml:
	$(SPHINXBUILD) -b dirhtml $(ALLSPHINXOPTS) $(BUILDDIR)/dirhtml
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/dirhtml."

singlehtml:
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(BUILDDIR)/singlehtml
	@echo
	@echo "Build finished. The HTML page is in $(BUILDDIR)/singlehtml."

pickle:
	$(SPHINXBUILD) -b pickle $(ALLSPHINXOPTS) $(BUILDDIR)/pickle
	@echo
	@echo "Build finished; now you can process the pickle files."

json:
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(BUILDDIR)/json
	@echo
	@echo "Build finished; now you can process the JSON files."

htmlhelp:
	$(SPHINXBUILD) -b htmlhelp $(ALLSPHINXOPTS) $(BUILDDIR)/htmlhelp
	@echo
	@echo "Build finished; now you can run HTML Help Workshop with the" \
	      ".hhp project file in $(BUILDDIR)/htmlhelp."

qthelp:
	$(SPHINXBUILD) -b qthelp $(ALLSPHINXOPTS) $(BUILDDIR)/qthelp
	@echo
	@echo "Build finished; now you can run "qcollectiongenerator" with the" \
	      ".qhcp project file in $(BUILDDIR)/qthelp, like this:"
	@echo "# qcollectiongenerator $(BUILDDIR)/qthelp/LilianBessonontheweb.qhcp"
	@echo "To view the help file:"
	@echo "# assistant -collectionFile $(BUILDDIR)/qthelp/LilianBessonontheweb.qhc"

devhelp:
	$(SPHINXBUILD) -b devhelp $(ALLSPHINXOPTS) $(BUILDDIR)/devhelp
	@echo
	@echo "Build finished."
	@echo "To view the help file:"
	@echo "# mkdir -p $$HOME/.local/share/devhelp/LilianBessonontheweb"
	@echo "# ln -s $(BUILDDIR)/devhelp $$HOME/.local/share/devhelp/LilianBessonontheweb"
	@echo "# devhelp"

epub:
	$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) $(BUILDDIR)/epub
	@echo
	@echo "Build finished. The epub file is in $(BUILDDIR)/epub."

latex:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex."
	@echo "Run \`make' in that directory to run these through (pdf)latex" \
	      "(use \`make latexpdf' here to do that automatically)."

latexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	## here we have to modify the $(BUILDDIR)/latex/Makefile file
	cat $(BUILDDIR)/latex/Makefile | sed s/'pdflatex'/'pdflatex -file-line-error -interaction=nonstopmode'/ > $(BUILDDIR)/latex/Makefile~
	cat $(BUILDDIR)/latex/Makefile~ > $(BUILDDIR)/latex/Makefile
	$(MAKE) -C $(BUILDDIR)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

text:
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(BUILDDIR)/text
	@echo
	@echo "Build finished. The text files are in $(BUILDDIR)/text."

man:
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(BUILDDIR)/man
	@echo
	@echo "Build finished. The manual pages are in $(BUILDDIR)/man."

texinfo:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(BUILDDIR)/texinfo
	@echo
	@echo "Build finished. The Texinfo files are in $(BUILDDIR)/texinfo."
	@echo "Run \`make' in that directory to run these through makeinfo" \
	      "(use \`make info' here to do that automatically)."

info:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(BUILDDIR)/texinfo
	@echo "Running Texinfo files through makeinfo..."
	make -C $(BUILDDIR)/texinfo info
	@echo "makeinfo finished; the Info files are in $(BUILDDIR)/texinfo."

gettext:
	$(SPHINXBUILD) -b gettext $(I18NSPHINXOPTS) $(BUILDDIR)/locale
	@echo
	@echo "Build finished. The message catalogs are in $(BUILDDIR)/locale."

changes:
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(BUILDDIR)/changes
	@echo
	@echo "The overview file is in $(BUILDDIR)/changes."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

doctest:
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(BUILDDIR)/doctest
	@echo "Testing of doctests in the sources finished, look at the " \
	      "results in $(BUILDDIR)/doctest/output.txt."

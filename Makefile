#!/usr/bin/env /usr/bin/make
# Makefile for Sphinx web builder
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='17'
#	__date__='dimanche 29/09/2013 at 21h:59m:27s'
#   __web__='https://bitbucket.org/lbesson/web-sphinx'

# You can set these variables from the command line.
SPHINXOPTS    = -j 10 -w /tmp/sphinx.log
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
#CP = scp  ## If you do not have rsync installed
GPG = gpg --detach-sign --armor --quiet --yes

total: html gpghtml images obscure send_jarvis send_zamok send_dpt check

local: html gpghtml images obscure send_jarvis check
check: warnings severes errors

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

archive: clean
	if [ -f ~/web-sphinx.tar.xz ]; then mv -f ~/web-sphinx.tar.xz ~/Dropbox/ ; fi
	if [ -f ~/web-sphinx.tar.xz.asc ]; then mv -f ~/web-sphinx.tar.xz.asc ~/Dropbox/ ; fi
	tar -Jcvf ~/web-sphinx.tar.xz ./ > /tmp/web-sphinx.tar.xz`date "+%d_%M__%H_%m_%S"`.log
	$(GPG) ~/web-sphinx.tar.xz

obscure:
	@echo "Launching ./.obscure_email.sh ..."
	-./.obscure_email.sh
	@echo "Email addresses have been hiden :)"

fixperms:
	-chmod -vR o-w ./ | tee /tmp/sphinxperms_o.log  | grep --color=always modifi
	-chmod -vR g-w ./ | tee /tmp/sphinxperms_g.log  | grep --color=always modifi

sitemap:
	-@(cd scripts/sitemap/ && $(MAKE))

################################ GPG signs ####################################

gpgrss:
	$(GPG) rss.xml

gpghtml: ./.gpghtml.sh
	./.gpghtml.sh

gpglatex: latexpdf
	cp -fv $(BUILDDIR)/latex/cv*.pdf ./
	PDFCompress --sign cv*.pdf
	mv -fv ./cv*.pdf* $(BUILDDIR)/latex/

gpgpdf: pdf
	cp -fv $(BUILDDIR)/pdf/*.pdf ./
	PDFCompress --no-compress --no-keep --sign *.pdf
	mv -fv ./*.pdf* $(BUILDDIR)/pdf/
	-rm -fv $(BUILDDIR)/admin.*

################################# Senders #####################################

scripts:
	mkdir --parents $(BUILDDIR)/html/_static/
	$(CP) scripts/*.js $(BUILDDIR)/html/_static/
	-$(CP) .static/* $(BUILDDIR)/html/_static/

scripts-rec: scripts
	-$(CP) -r scripts/* $(BUILDDIR)/html/_static/

send_pdf: fixperms
	-$(CP) $(BUILDDIR)/pdf/*.pdf $(BUILDDIR)/pdf/*.pdf.asc  besson@zamok.crans.org:~/www/pdf/
	-$(CP) $(BUILDDIR)/pdf/*.pdf $(BUILDDIR)/pdf/*.pdf.asc ~/Public/pdf/
	-$(CP) $(BUILDDIR)/pdf/*.pdf $(BUILDDIR)/pdf/*.pdf.asc lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/pdf/

send_jarvis: fixperms
	$(CP) -r $(BUILDDIR)/html/ ~/Public/
	-mv -f ~/Public/_images/.besson.png ~/Public/_images/.moi.jpg

send_dpt: fixperms
	-rm -vf *~ .*~ .*/*~ .*/*/.*~ .*/*/*~ 
	$(CP) -r $(BUILDDIR)/html/ lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/
	-$(CP) ~/web-sphinx.tar.xz ~/web-sphinx.tar.xz.asc lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/dl/

send_zamok: fixperms
	-rm -fv *~ .*~ .*/*~ .*/*/.*~ .*/*/*~ 
	$(CP) -r $(BUILDDIR)/html/ besson@zamok.crans.org:~/www/
	-$(CP) ~/web-sphinx.tar.xz ~/web-sphinx.tar.xz.asc besson@zamok.crans.org:~/www/dl/

images:
	-$(CP) .*.gif *.gif .*.png .*.jpg *.png *.jpg $(BUILDDIR)/html/_images/

send: rss send_jarvis send_zamok send_dpt send_pdf send_latexpdf

send_latexpdf: fixperms
	-pkill gnuplot
	-$(CP) $(BUILDDIR)/latex/cv*.pdf $(BUILDDIR)/latex/cv*.pdf.asc besson@zamok.crans.org:~/www/
	-$(CP) $(BUILDDIR)/latex/cv*.pdf $(BUILDDIR)/latex/cv*.pdf.asc ~/Public/
	-$(CP) $(BUILDDIR)/latex/cv*.pdf $(BUILDDIR)/latex/cv*.pdf.asc lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/
	-$(CP) $(BUILDDIR)/latex/*.pdf $(BUILDDIR)/pdf/*.pdf.asc besson@zamok.crans.org:~/www/pdf/
	-$(CP) $(BUILDDIR)/latex/*.pdf $(BUILDDIR)/pdf/*.pdf.asc ~/Public/pdf/
	-$(CP) $(BUILDDIR)/latex/*.pdf $(BUILDDIR)/pdf/*.pdf.asc lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/pdf/

sendAll: notify_archive send

send_simple:
	-$(CP) $(BUILDDIR)/simplehtml/*.html $(BUILDDIR)/simplehtml/.*.html besson@zamok.crans.org:~/www/_images/
	-$(CP) $(BUILDDIR)/simplehtml/*.html $(BUILDDIR)/simplehtml/.*.html ~/Public/_images/
	-$(CP) $(BUILDDIR)/simplehtml/*.html $(BUILDDIR)/simplehtml/.*.html lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/_images/

################################# Builders ####################################

clean:
	#-rm -rfv /tmp/$(BUILDDIR)/
	-mv -vf $(BUILDDIR)/ /tmp/
	-mv -vf blog/ /tmp/
	-mkdir --parents $(BUILDDIR)/html/

git:
	git add *.rst README.md Makefile conf.py .*.rst .templates/ rss.xml
	git commit -m "auto"
	git push

pdf: ./.pdf_all.sh
	./.pdf_all.sh [A-Za-z]*.rst
	-rm $(BUILDDIR)/pdf/admin*pdf
	-pkill gnuplot
	@echo
	@echo "Build finished. The PDFs files are in $(BUILDDIR)/pdf."

compresspdf: 
	cd $(BUILDDIR)/pdf/ ; PDFCompress --force --no-zenity --sign *pdf ; cd ../..
	@echo
	@echo "Compression finished. The PDFs files are compressed now (in $(BUILDDIR)/pdf)."

rss:	gpgrss
	$(CP) rss.xml rss.xml.asc $(BUILDDIR)/html/
	@echo
	@echo "RSS flow -> in $(BUILDDIR)/html/."

cv.fr:	cv.fr.rst
	rst2pdf -s ./.style.rst2pdf -l fr --default-dpi=3000 --baseurl="http://perso.crans.org/besson/" -o cv.fr.pdf -c cv.fr.rst
	$(CP) cv.fr.pdf $(BUILDDIR)/html/

cv.en:	cv.en.rst
	rst2pdf -s ./.style.rst2pdf -l en --default-dpi=3000 --baseurl="http://perso.crans.org/besson/" -o cv.en.pdf -c cv.en.rst
	$(CP) cv.en.pdf $(BUILDDIR)/html/

slides:	.slides.sh
	./.slides.sh
	@echo
	@echo "Build finished. The HTML5 + S5 slides are in $(BUILDDIR)/html."

simplehtml: ./.rst2html_all.sh
	./.rst2html_all.sh *.rst .*.rst
	-rm $(BUILDDIR)/simplehtml/admin.*

rst2pdf:
	$(SPHINXBUILD) -b pdf $(ALLSPHINXOPTS) $(BUILDDIR)/pdf
	@echo
	@echo "Build finished. The PDF files are in $(BUILDDIR)/pdf."

hieroglyph:
	$(SPHINXBUILD) -b slides $(ALLSPHINXOPTS) $(BUILDDIR)/slides 2>&1
	@echo "Build finished. The HTML slides are in $(BUILDDIR)/slides."

hashlong: ./.hashlong.sh
	./.hashlong.sh
	@echo
	@echo ".templates/hashlong.html updated."

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html 2>&1
	-rm -f $(BUILDDIR)/html/.javascript.html $(BUILDDIR)/html/.special.html 
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

mkblog:
	tinker --build 2>&1

blog:
	-rm -f blog/html/.javascript.html blog/html/.special.html 
	#-mv -u -v -i -t $(BUILDDIR)/html blog/html/*
	-$(CP) -r blog/ $(BUILDDIR)
	@echo
	@echo "Build finished. The HTML pages for the blog are in blog/html."

coverage:
	$(SPHINXBUILD) -b coverage $(ALLSPHINXOPTS) $(BUILDDIR)/coverage
	@echo
	@echo "Build finished. The coverage pages are in $(BUILDDIR)/coverage."


spelling:
	mv -f -v ./gnuplot_embed.rst /tmp/
	$(SPHINXBUILD) -b spelling $(ALLSPHINXOPTS) $(BUILDDIR)/spelling
	mv -f -v /tmp/ ./gnuplot_embed.rst
	@echo
	@echo "Spelling checker messages written to $(BUILDDIR)/spelling."

#################################### Help #####################################

help:
	@echo "Help for utilities (by Lilian BESSON, https://bitbucket.org/lbesson/web-sphinx/)"
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  total      to build entirely, and send everything on every web servers"
	@echo "  local      to build entirely, and send everything only on the local web server (~/Public/)"
	@echo "  git        to make an auto git commit"
	@echo "  warnings   to check for warnings"
	@echo "  severes    to check for severes"
	@echo "  errors     to check for errors"
	@echo "  notify     to notify that the build process is done"
	@echo "  clean      to COMPLETELY clean the BUILDDIR. Not definitive, BUILDDIR/* is moved to /tmp/ :)"
	@echo "  archive    to build an archive for the project (and send the old one ~/archive.tar.xz in ~/Dropbox)"
	@echo "  obscure    to hide email addresses for HTML pages in BUILDDIR/html/"
	@echo "  fixperms   to adjust permissions of files in BUILDDIR/"
	@echo "  helpbuild  to see a more detailed help for builder comands"
	@echo "  helpsend  to see a more detailed help for sender comands"

helpsend:
	@echo "Help for custom senders (by Lilian BESSON, https://bitbucket.org/lbesson/web-sphinx/)"
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  send_jarvis   to send on the local web server (~/Public/)"
	@echo "  send_zamok    to send on the zamok web server (zamok.crans.org:~/www/)"
	@echo "  send_dpt      to send on the ssh.dptinfo web server (ssh.dptinfo.ens-cachan.fr:~/public_html/)"
	@echo "  send_simple   to send simple HTML files on every web servers"
	@echo "  send_latexpdf to send PDF from LaTeX files on every web servers"
	@echo "  send_pdf      to send PDF from rst2pdf files on every web servers"
	@echo "  images        to copy every images to BUILDDIR (sometime, sphinx does not detect one picture)"
	@echo "  scripts       to copy every scripts/*.js files to BUILDDIR"
	@echo "  scripts-rec   to copy the entire content of scripts/ files to BUILDDIR"


helpbuild:
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  blog       to make standalone HTML files with Tinkerer"
	@echo "  gpghtml    to sign every standalone HTML files"
	@echo "  gpgrss     to sign and send the RSS file (rss.xml)"
	@echo "  gpglatex   to make LaTeX files and run them through pdflatex"
	@echo "  gpgpdf     to make PDF files directly with rst2pdf"
	@echo "  epub       to make an epub"
	@echo "  gettext    to make PO message catalogs"
	@echo "  changes    to make an overview of all changed/added/deprecated items"

################################# Old Stuff ###################################

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
	@echo "Run 'make' in that directory to run these through (pdf)latex" \
	      "(use 'make latexpdf' here to do that automatically)."

latexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf clean
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."
	-pkill gnuplot

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
	@echo "Run 'make' in that directory to run these through makeinfo" \
	      "(use 'make info' here to do that automatically)."

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

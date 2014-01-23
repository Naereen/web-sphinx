#!/usr/bin/env /usr/bin/make
# Makefile for Sphinx web builder
#	__author__='Lilian BESSON'
#	__email__='lilian DOT besson AT normale D O T fr'
#	__version__='18.2'
#	__date__='Mardi 14/01/2014 at 19h:16m:27s'
#	__web__='https://bitbucket.org/lbesson/web-sphinx'

# You can set these variables from the command line.
SPHINXOPTS    = -v -j 10 -w /tmp/sphinx.log
SPHINXBUILD   = /home/lilian/.local/bin/sphinx-build
PAPER         =
BUILDDIR      = .build

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .

###############################################################################
# Custom items
CP = /usr/bin/rsync --verbose --times --perms --compress --human-readable --progress --archive
#CP = scp  ## If you do not have rsync installed
GPG = gpg --detach-sign --armor --quiet --yes

total: html gpghtml images obscure send_jarvis send_zamok send_dpt check
local: html images send_jarvis check

totalb: blog gpghtml images obscure send_jarvis send_zamok send_dpt check
localb: blog gpghtml images obscure send_jarvis check

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

############################ Archive builders ##################################

notify:
	notify-send "Sphinx" "Generating documentation : done !"

notify_archive: archive.7z
	notify-send "Sphinx : archiving" "Generating archive : done ! (~/Dropbox/web-sphinx.7z)"

archive: clean
	if [ -f ~/web-sphinx.tar.xz ]; then mv -f ~/web-sphinx.tar.xz ~/Dropbox/ ; fi
	if [ -f ~/web-sphinx.tar.xz.asc ]; then mv -f ~/web-sphinx.tar.xz.asc ~/Dropbox/ ; fi
	tar -Jcvf ~/web-sphinx.tar.xz ./ > /tmp/web-sphinx.tar.xz`date "+%d_%M__%H_%m_%S"`.log
	$(GPG) ~/web-sphinx.tar.xz

archive.7z: clean
	time 7z a -y ~/Dropbox/web-sphinx.7z ./ | tee /tmp/web-sphinx.7z`date "+%d_%M__%H_%m_%S"`.log
	$(GPG) ~/Dropbox/web-sphinx.7z

##################### Fix perms and email addresses ###########################

obscure:
	@echo "Launching ./.obscure_email.sh ..."
	-./.obscure_email.sh
	@echo "Email addresses have been hiden :)"

fixperms:
	-rm -fv *~ .*~ .*/*~ .*/*/.*~ .*/*/*~ 
	-chmod -vR o-w ./ | tee /tmp/sphinxperms_o.log  | grep --color=always modifi
	-chmod -vR g-w ./ | tee /tmp/sphinxperms_g.log  | grep --color=always modifi

sitemap:
	-@(cd scripts/sitemap/ && $(MAKE))

################################ GPG signs ####################################

gpgrss: rss
	$(GPG) rss.xml

gpghtml: ./.gpghtml.sh
	./.gpghtml.sh
	-rm -fv $(BUILDDIR)/html/_sources/admin.*  $(BUILDDIR)/html/_sources/TODO.*

gpglatex: latexpdf
	cp -fv $(BUILDDIR)/latex/cv*.pdf ./
	PDFCompress --sign cv*.pdf
	mv -fv ./cv*.pdf* $(BUILDDIR)/latex/

gpgpdf: pdf
	cp -fv $(BUILDDIR)/pdf/*.pdf ./
	PDFCompress --no-compress --no-keep --sign *.pdf
	mv -fv ./*.pdf* $(BUILDDIR)/pdf/
	-rm -fv $(BUILDDIR)/pdf/admin.*  $(BUILDDIR)/pdf/TODO.*

################################# Senders #####################################

send: rss send_jarvis send_zamok send_dpt send_pdf send_latexpdf

sendAll: notify_archive send

scripts:
	mkdir --parents $(BUILDDIR)/html/_static/
	$(CP) scripts/*.js $(BUILDDIR)/html/_static/
	-$(CP) .static/* $(BUILDDIR)/html/_static/

scripts-rec: scripts
	-$(CP) -r scripts/* $(BUILDDIR)/html/_static/

images:
	-$(CP) .*.gif .*.png .*.jpg *.png $(BUILDDIR)/html/_images/

send_pdf: fixperms
	-$(CP) $(BUILDDIR)/pdf/*.pdf $(BUILDDIR)/pdf/*.pdf.asc  besson@zamok.crans.org:~/www/pdf/
	-$(CP) $(BUILDDIR)/pdf/*.pdf $(BUILDDIR)/pdf/*.pdf.asc ~/Public/pdf/
	-$(CP) $(BUILDDIR)/pdf/*.pdf $(BUILDDIR)/pdf/*.pdf.asc lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/pdf/

send_jarvis: fixperms
	$(CP) -r $(BUILDDIR)/html/ ~/Public/
	-mv -f ~/Public/_images/.besson.png ~/Public/_images/.moi.jpg

send_dpt: fixperms
	$(CP) -r $(BUILDDIR)/html/ lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/
	-$(CP) ~/Dropbox/web-sphinx.* lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/dl/

send_zamok: fixperms
	$(CP) -r $(BUILDDIR)/html/ besson@zamok.crans.org:~/www/
	-$(CP) ~/Dropbox/web-sphinx.* besson@zamok.crans.org:~/www/dl/

send_latexpdf: fixperms
	-pkill gnuplot
	-$(CP) $(BUILDDIR)/latex/cv*.pdf $(BUILDDIR)/latex/cv*.pdf.asc besson@zamok.crans.org:~/www/
	-$(CP) $(BUILDDIR)/latex/cv*.pdf $(BUILDDIR)/latex/cv*.pdf.asc ~/Public/
	-$(CP) $(BUILDDIR)/latex/cv*.pdf $(BUILDDIR)/latex/cv*.pdf.asc lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/
	-$(CP) $(BUILDDIR)/latex/*.pdf $(BUILDDIR)/pdf/*.pdf.asc besson@zamok.crans.org:~/www/pdf/
	-$(CP) $(BUILDDIR)/latex/*.pdf $(BUILDDIR)/pdf/*.pdf.asc ~/Public/pdf/
	-$(CP) $(BUILDDIR)/latex/*.pdf $(BUILDDIR)/pdf/*.pdf.asc lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/pdf/

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
	-(cd $(BUILDDIR)/pdf/ ; PDFCompress --force --no-zenity --sign *pdf ; cd ../..)
	@echo
	@echo "Compression finished. The PDFs files are compressed now (in $(BUILDDIR)/pdf)."

rss:
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
	-@mv -vf master.rst /tmp/
	-./.rst2html_all.sh *.rst .*.rst
	-@mv -vf /tmp/master.rst ./
	-rm $(BUILDDIR)/simplehtml/admin.* $(BUILDDIR)/simplehtml/TODO.*

# Deprecated
rst2pdf:
	$(SPHINXBUILD) -b pdf $(ALLSPHINXOPTS) $(BUILDDIR)/pdf
	@echo
	@echo "Build finished. The PDF files are in $(BUILDDIR)/pdf."

# Inutile
hieroglyph:
	$(SPHINXBUILD) -b slides $(ALLSPHINXOPTS) $(BUILDDIR)/slides 2>&1
	@echo "Build finished. The HTML slides are in $(BUILDDIR)/slides."

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html 2>&1
	-rm -f $(BUILDDIR)/html/.javascript.html $(BUILDDIR)/html/.special.html 
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

mkblog:
	tinker --build 2>&1 | tee /tmp/sphinx.log

blog:   mkblog
	-rm -f blog/html/.javascript.html blog/html/.special.html 
	#-mv -u -v -i -t $(BUILDDIR)/html blog/html/*
	-$(CP) -r blog/ $(BUILDDIR)
	@echo
	@echo "Build finished. The HTML pages for the blog are in blog/html."

# FIXME: ne doit plus marcher. De toutes façons, ne sert à rien
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

changes:
	-mv -vf gnuplot_embed.rst /tmp/
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(BUILDDIR)/changes
	-mv -vf /tmp/gnuplot_embed.rst ./
	@echo
	@echo "The overview file is in $(BUILDDIR)/changes."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck | tee linkcheck.log
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

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
	@echo "  linkcheck  to test every links in the sources"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
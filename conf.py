#!/usr/bin/env /usr/bin/python
# -*- coding: utf-8 -*-
#
# Lilian Besson on the web documentation build configuration file
#
# This file is execfile()d with the current directory set to its containing dir.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

import sys, os, subprocess
import tinkerer
import tinkerer.paths

reload(sys)
sys.setdefaultencoding("UTF-8")

# Use https://pypi.python.org/pypi/ANSIColors-balises
try:
	from ANSIColors import printc
except:
	def printc(a):
		print(a)

printc("<magenta>[LOG]<white> Using python, version %s on %s." % (sys.version, sys.platform))

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#sys.path.insert(0, os.path.abspath('.'))

# -- General configuration -----------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
needs_sphinx = '1.1'

# Add any Sphinx extension module names here, as strings. They can be extensions
# coming with Sphinx (named 'sphinx.ext.*') or your custom ones.
extensions = [
	'sphinx.ext.todo', 
	'sphinx.ext.autodoc', 
	'sphinx.ext.coverage', 
	'sphinx.ext.viewcode',
	'sphinx.ext.autosummary',
	'sphinx.ext.graphviz',
	'sphinx.ext.doctest',
#	'sphinx.ext.pngmath',
	'sphinx.ext.intersphinx',
####### Sphinx Contrib
####### From https://bitbucket.org/birkenfeld/sphinx-contrib
	'sphinxcontrib.cheeseshop',
	'sphinxcontrib.gnuplot',
	'sphinxcontrib.autorun',
######## Sphinx Spelling http://sphinxcontrib-spelling.readthedocs.org/en/latest/install.html
	'sphinxcontrib.spelling',
####### From reportLab
	'rst2pdf.pdfbuilder',
####### Change the order ?
	'sphinx.ext.mathjax',
#	'sphinxcontrib.email',
####### From Pokedex
        'pokedex.doc.tabledoc',
####### New from pypi
	'sphinx_pyreverse', # .. uml:: path_to_module
	'sphinx_git', # .. git_changelog::
	'sphinxcontrib.bitbucket', # bitbucket_project_url = 'http://bitbucket.org/birkenfeld/sphinx-contrib',
	'hieroglyph', # https://github.com/nyergler/hieroglyph
	]

##############################################################################
# Here is the good place to put special options for those exterior extensions

# The path to the JavaScript file to include in the HTML files in order to load MathJax.
# The default is the http:// URL that loads the JS files from the MathJax CDN. If you want MathJax to be available offline, you have to donwload it and set this value to a different path.
# The path can be absolute or relative; if it is relative, it is relative to the _static directory of the built docs.
# For example, if you put MathJax into the static path of the Sphinx docs, this value would be MathJax/MathJax.js.
# If you host more than one Sphinx documentation set on one server, it is advisable to install MathJax in a shared location.
# You can also give a full http:// URL different from the CDN URL.
mathjax_path = "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML&amp;locale=fr"

# The output format for Graphviz when building HTML files. This must be either 'png' or 'svg'; the default is 'png'.
graphviz_output_format = 'svg'

# If this is True, todo and todolist produce output, else they produce nothing. The default is False.
todo_include_todos = True

# image format used for the different builders. ``latex`` and ``html`` fromats
#  are supported.
gnuplot_format = dict(latex='pdf', html='svg')

autorun_languages = {}
autorun_languages['pycon'] = u'python -'
autorun_languages['ocaml-stdin'] = u'ocaml -stdin'
autorun_languages['ocaml-stdin_prefix_chars'] = 2

autorun_languages['ocaml'] = u'ocaml -init /dev/null'
autorun_languages['ocaml_prefix_chars'] = 2

autorun_languages['octave'] = u'/usr/bin/octave --silent --verbose --traditional'
autorun_languages['octave_prefix_chars'] = 3

autorun_languages['pypy'] = u'pypy -S -'
autorun_languages['pypy_prefix_chars'] = 0

# sphinxcontrib.bitbucket
bitbucket_project_url = 'https://bitbucket.org/lbesson/web-sphinx'
#bitbucket_project_url = 'http://besson.qc.to/git/web-sphinx'

# String specifying the language, as understood by PyEnchant and enchant. Defaults to en_US for US English.
# spelling_lang='fr' # 'fr_FR'

# String specifying a file containing a list of words known to be spelled correctly but that do not appear in the language dictionary selected by spelling_lang.
# The file should contain one word per line. Refer to the PyEnchant tutorial for details.
spelling_word_list_filename='spelling_wordlist.txt'

# Boolean controlling whether suggestions for misspelled words are printed. Defaults to False. 
spelling_show_suggestions=False

##############################################################################

# Add any paths that contain templates here, relative to this directory.
templates_path = ['.templates']

# The suffix of source filenames.
source_suffix = u'.rst'

# The encoding of source files.
#source_encoding = 'utf-8-sig'

# The master toctree document.
master_doc = 'index.fr'

# General information about the project.
author = u'Lilian Besson'
project = u'Lilian Besson on the web'
copyright = u'2011-2013, ' + author

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
# The short X.Y version.
version = '1.9.9'
# The full version, including alpha/beta/rc tags.
release = 'public'

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
language = u"fr"

printc("<yellow>[INFO] <white>For the project %s, in version %s and release %s." % (project, version, release))
printc("<yellow>[INFO] <white>Setting language to %s. Copyright: %s." % (language, project))

# There are two options for replacing |today|: either, you set today to some
# non-false value, then it is used:
today = ''
# Else, today_fmt is used as the format for a strftime call.
today_fmt = u'%d %b %Y, %Hh:%Mm:%Ss'

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
exclude_patterns = ['.build', '.git', '.tmp', '.temp', 'tmp', 'temp', 'scripts', 'blog']

# The reST default role (used for this markup: `text`) to use for all documents.
#default_role = None

# If true, '()' will be appended to :func: etc. cross-reference text.
add_function_parentheses = True

# If true, the current module name will be prepended to all description
# unit titles (such as .. function::).
add_module_names = True

# If true, sectionauthor and moduleauthor directives will be shown in the
# output. They are ignored by default.
show_authors = True

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

# A list of ignored prefixes for module index sorting.
#modindex_common_prefix = []

# Pour trier dans l'ordre du code et non pas par ordre alphabétique
# Merci à Vincent Le Gallic pour ça.
autodoc_member_order = 'bysource'
autodoc_default_flags = ['members', 'private-members']

# Intersphinx
#intersphinx_mapping = {
#  'sqlalchemy': ('http://www.sqlalchemy.org/docs', None)
#}

# -- Options for HTML output ---------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
html_theme = 'default'

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
html_theme_options = {
# Put the sidebar on the right side. Defaults to false.
#    "rightsidebar": "true",
# Add an experimental JavaScript snippet that makes the sidebar collapsible via a button on its side. Doesn’t work together with “rightsidebar” or “stickysidebar”. Defaults to false.
    "collapsiblesidebar" : False,
# Display external links differently from internal links. Defaults to false.
    "externalrefs" : True,
# Make the sidebar “fixed” so that it doesn’t scroll out of view for long body content. This may not work well with all browsers. Defaults to false.
    "stickysidebar" : False,
###########################
# other parameters : colors (ref: http://sphinx-doc.org/theming.html)
#    footerbgcolor (CSS color): Background color for the footer line.
    "footerbgcolor"	: "#351642",
#    footertextcolor (CSS color): Text color for the footer line.
    "footertextcolor"	: "grey",
#    sidebarbgcolor (CSS color): Background color for the sidebar.
    "sidebarbgcolor"	: "#351642",
#    sidebarbtncolor (CSS color): Background color for the sidebar collapse button (used when collapsiblesidebar is true).
    "sidebarbtncolor"	: "#7E3B82",
#    sidebartextcolor (CSS color): Text color for the sidebar.
    "sidebartextcolor"	: "white",
#    sidebarlinkcolor (CSS color): Link color for the sidebar.
    "sidebarlinkcolor"	: "#F4DFF7",
#    "sidebarlinkcolor"	: "#C58ACE",
#    relbarbgcolor (CSS color): Background color for the relation bar.
    "relbarbgcolor"	: "#4D1351",
#    relbartextcolor (CSS color): Text color for the relation bar.
    "relbartextcolor"	: "white",
#    relbarlinkcolor (CSS color): Link color for the relation bar.
    "relbarlinkcolor"	: "white",
#    bgcolor (CSS color): Body background color.
    "bgcolor"	: "white",
#    textcolor (CSS color): Body text color.
    "textcolor"	: "black",
#    linkcolor (CSS color): Body link color.
    "linkcolor"	: "#A200D3",
#    visitedlinkcolor (CSS color): Body color for visited links.
    "visitedlinkcolor"	: "#FF7A32",
#    headbgcolor (CSS color): Background color for headings.
    "headbgcolor"	: "#F0E1F7",
#    headtextcolor (CSS color): Text color for headings.
    "headtextcolor"	: "#4F2070",
#    headlinkcolor (CSS color): Link color for headings.
#    "headlinkcolor"	: "blue",
#    codebgcolor (CSS color): Background color for code blocks.
    "codebgcolor"	: "#CECFE2",
#    codetextcolor (CSS color): Default text color for code blocks, if not set differently by the highlighting style.
    "codetextcolor"	: "black",
#    bodyfont (CSS font-family): Font for normal text.
#    headfont (CSS font-family): Font for headings.
}

# Add any paths that contain custom themes here, relative to this directory.
#html_theme_path = []

# The name for this set of Sphinx documents.  If None, it defaults to
# "<project> v<release> documentation".
# html_title = u"Page personnelle"
html_title = ""

# A shorter title for the navigation bar.  Default is the same as html_title.
html_short_title = u"Lilian Besson"

# The name of an image file (relative to this directory) to place at the top
# of the sidebar.
# html_logo = u".besson_transparent.png"

# The name of an image file (within the static path) to use as favicon of the
# docs.  This file should be a Windows icon file (.ico) being 16x16 or 32x32
# pixels large.
# html_favicon = u"favicon.ico"
html_favicon = u".besson.png"

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = [ '.static' ]
# , tinkerer.paths.static ] ## FIXME add this to use tinkerer

#Sphinx will add “permalinks” for each heading and description environment as paragraph signs that become visible when the mouse hovers over them.
html_add_permalinks = True

#Encoding of HTML output files. Default is 'utf-8'. Note that this encoding name must both be a valid Python encoding name and a valid HTML charset value.
html_output_encoding = u"utf-8"

try:
	longhash = subprocess.check_output(["git", "log", "--pretty=format:'%H'", "-1"])[1:-1]
except:
	longhash = "2754d048a9553079384f8d351045e1702fc0a0a8"

# This trick is DURTY. You HAVE to be SURE that templates disable use of html_logo
printc("<yellow>[INFO]<white> Using longhash <u>%s<U>..." % longhash)

# If not '', a 'Last updated on:' timestamp is inserted at every page bottom,
# using the given strftime format.
html_last_updated_fmt = u"%d %b %Y, %Hh:%Mm:%Ss"
# FIXME
#html_last_updated_fmt = "%d %b %Y, %Hh:%Mm:%Ss, v<a href='https://bitbucket.org/lbesson/web-sphinx/changeset/" + longhash + "' title='Last changed' >" + version + "</a>"
##html_last_updated_fmt = "%d %b %Y, %Hh:%Mm:%Ss (v" + version + ")"

printc("<yellow>[INFO]<white> Using html_last_updated_fmt\n<u>%s<U>..." % html_last_updated_fmt)

# If true, SmartyPants will be used to convert quotes and dashes to
# typographically correct entities.
html_use_smartypants = True

# Custom sidebar templates, maps document names to template names.
html_sidebars = {
   '**':        ['linkpdf.fr.html', 'localtoc.fr.html', 'searchbox.fr.html', 'sourcepdf.fr.html', 'relations.fr.html',
         'sidebar_gpg.fr.html', 'social_icons.fr.html', 'validator.html', 'sidebar_otherserver.fr.html'],
   '**.en':     ['linkpdf.en.html', 'localtoc.en.html', 'searchbox.en.html', 'sourcepdf.en.html', 'relations.en.html',
         'sidebar_gpg.en.html', 'social_icons.en.html', 'validator.html', 'sidebar_otherserver.en.html'],
   'index.fr':  ['linkpdf.fr.html', 'localtoc.fr.html', 'searchbox.fr.html', 'sourcepdf.fr.html', 'relations.fr.html', 'globaltoc.html',
         'sidebar_gpg.fr.html', 'social_icons.fr.html', 'validator.html', 'sidebar_otherserver.fr.html'],
   'cv.fr':     ['sourcepdfcv.fr.html', 'localtoc.fr.html', 'searchbox.fr.html', 'sourcepdfcv.fr.html',
         'sidebar_gpg.fr.html', 'social_icons.fr.html', 'validator.html', 'sidebar_otherserver.fr.html'],
   'cv.en':     ['sourcepdfcv.en.html', 'localtoc.en.html', 'searchbox.en.html', 'sourcepdfcv.en.html',
         'sidebar_gpg.en.html', 'social_icons.en.html', 'validator.html', 'sidebar_otherserver.en.html'],
   '**/*':      ['linkpdf.en.html', 'localtoc.en.html', 'searchbox.en.html', 'relations.en.html',
         'sidebar_gpg.en.html', 'social_icons.en.html', 'validator.html', 'sidebar_otherserver.en.html'],
   '201*/*':      ['linkpdf.fr.html', 'localtoc.fr.html', 'searchbox.fr.html', 'relations.fr.html',
         'sidebar_gpg.fr.html', 'social_icons.fr.html', 'validator.html', 'sidebar_otherserver.fr.html'],
}

# Additional templates that should be rendered to pages, maps page names to
# template names.
html_additional_pages = {
    'download.fr': 'download.fr.html',
    'download.en': 'download.en.html',
}

# If false, no module index is generated.
html_domain_indices = True

# If false, no index is generated.
html_use_index = False

# If true, the index is split into individual pages for each letter.
html_split_index = False

# If true, links to the reST sources are added to the pages.
html_show_sourcelink = True

# If true, "Created using Sphinx" is shown in the HTML footer. Default is True.
html_show_sphinx = True

# If true, "(C) Copyright ..." is shown in the HTML footer. Default is True.
html_show_copyright = True

# If true, an OpenSearch description file will be output, and all pages will
# contain a <link> tag referring to it.  The value of this option must be the
# base URL from which the finished HTML is served.
html_use_opensearch = 'http://perso.crans.org/besson/'

# This is the file name suffix for HTML files (e.g. ".xhtml").
# html_file_suffix = ".html"

# Output file base name for HTML help builder.
htmlhelp_basename = 'LilianBesson'

# Suffix for section numbers. Default: ". ". Set to " " to suppress the final dot on section numbers.
html_secnumber_suffix = " "


# -- Options for Tinkerer blog engine ------------------------------------------

# Change this to the tagline of your blog
tagline = 'Contenu de la variable conf.py::tagline !'

# Change this to the description of your blog
description = 'Un test de blog avec Tinkerer'

# Change this to your blog root URL (required for RSS feed)
# FIXME
website = 'http://perso.crans.org/besson/'


# -- Options for LaTeX output --------------------------------------------------

latex_elements = {
# The paper size ('letterpaper' or 'a4paper').
'papersize': 'a4paper',

# The font size ('10pt', '11pt' or '12pt').
'pointsize': '10pt',

# Get LaTeX to handle Unicode correctly
'inputenc': r'\usepackage[utf8x]{inputenc}',
'utf8extra': ''

# Additional stuff for the LaTeX preamble.
#'preamble': '',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title, author, documentclass [howto/manual]).
latex_documents = [
#  ('index.fr', 'LilianBesson.fr.tex', u'Lilian Besson - Page personnelle',
#   u'Lilian Besson', 'howto'),
#  ('index.en', 'LilianBesson.en.tex', u'Lilian Besson - Personal Page',
#   u'Lilian Besson', 'howto'),
  ('cv.en', 'cv.en.tex', u'Résumé - Lilian BESSON',
   u'Lilian Besson', 'howto'),
  ('cv.fr', 'cv.fr.tex', u'CV - Lilian BESSON',
   u'Lilian Besson', 'howto'),
]

# The name of an image file (relative to this directory) to place at the top of
# the title page.
#latex_logo = ".besson_transparent.png"

# For "manual" documents, if this is true, then toplevel headings are parts,
# not chapters.
latex_use_parts = True

# If true, show page references after internal links.
latex_show_pagerefs = False

# If true, show URL addresses after external links.
latex_show_urls = False

# Additional stuff for the LaTeX preamble.
latex_preamble = r'''
%
% Generated by Sphinx from reST sources.
%
% (c) 2011-2013 Lilian BESSON, http://perso.crans.org/besson/
%
%
\usepackage{lmodern}
\usepackage[T1]{fontenc}

\usepackage{fixltx2e} % LaTeX patches, \textsubscript
\usepackage{cmap} % fix search and cut-and-paste in Acrobat

\usepackage[babel=true]{csquotes}
\usepackage{color}

%\usepackage[pdftex]{graphicx}
% \DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg}

\usepackage[babel=true]{csquotes}
\usepackage{hyperref}
\usepackage{lastpage}
\usepackage[scale=0.80]{geometry}
%%\usepackage[top=0.9in, bottom=0.8in, left=0.6in, right=0.6in, landscape]{geometry}

\usepackage{fancyhdr}
  \pagestyle{fancy}

   \lhead{Last Changed: \today}
   \chead{Curriculum Vit\ae{}}
%   \lhead[Curriculum Vit\ae{}]{\today}
%   \rhead[\today]{Curriculum Vit\ae{}}
   \rhead{Lilian Besson}
   \lfoot{PDF\LaTeX{} from \texttt{reST}}
   \cfoot[]{}
   \rfoot{\thepage\ / \pageref{LastPage}}
   
\pagenumbering{arabic}

\authoraddress{
  %\strong{Lilian Besson}\\
  email: \email{lilian[.]besson[@]ens-cachan[.]fr}
}

\let\Verbatim=\OriginalVerbatim
\let\endVerbatim=\endOriginalVerbatim

\hypersetup{
   backref
%  ,pdfpagemode={FullScreen}
   ,pdfstartview={Fit}
   ,pdftitle={Lilian BESSON - Curriculum Vit\ae{}}
   ,colorlinks={true}
}
'''

# Documents to append as an appendix to all manuals.
#latex_appendices = []

# If false, no module index is generated.
latex_domain_indices = False


# -- Options for manual page output --------------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    ('index.fr', 'lilianbesson.fr', u'Lilian Besson sur le web',
     [u'Lilian Besson'], 1),
    ('index.en', 'lilianbesson.en', u'Lilian Besson on the web',
     [u'Lilian Besson'], 1),
]

# If true, show URL addresses after external links.
man_show_urls = True


# -- Options for Texinfo output ------------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
  ('index.fr', 'LilianBessonsurleweb', u'Lilian Besson sur le web',
   u'Lilian Besson', 'LilianBessonsurleweb', 'One line description of project.',
   'Miscellaneous'),
  ('index.en', 'LilianBessonontheweb', u'Lilian Besson on the web',
   u'Lilian Besson', 'LilianBessonontheweb', 'One line description of project.',
   'Miscellaneous'),
]

# Documents to append as an appendix to all manuals.
#texinfo_appendices = []

# If false, no module index is generated.
#texinfo_domain_indices = True

# How to display URL addresses: 'footnote', 'no', or 'inline'.
#texinfo_show_urls = 'footnote'


# -- Options for Epub output ---------------------------------------------------

# Bibliographic Dublin Core info.
epub_title = u'Lilian Besson on the web'
epub_author = u'Lilian Besson'
epub_publisher = u'Lilian Besson'
epub_copyright = u'2013, Lilian Besson'

# The language of the text. It defaults to the language option
# or en if the language is not set.
epub_language = 'fr'

# The scheme of the identifier. Typical schemes are ISBN or URL.
epub_scheme = 'URL'

# The unique identifier of the text. This can be a ISBN number
# or the project homepage.
#epub_identifier = ''

# A unique identification for the text.
#epub_uid = ''

# A tuple containing the cover image and cover page html template filenames.
#epub_cover = ()

# HTML files that should be inserted before the pages created by sphinx.
# The format is a list of tuples containing the path and title.
#epub_pre_files = []

# HTML files shat should be inserted after the pages created by sphinx.
# The format is a list of tuples containing the path and title.
#epub_post_files = []

# A list of files that should not be packed into the epub file.
#epub_exclude_files = []

# The depth of the table of contents in toc.ncx.
epub_tocdepth = 3

# Allow duplicate toc entries.
epub_tocdup = True

# -- Options for PDF output --------------------------------------------------

# Grouping the document tree into PDF files. List of tuples
# (source start file, target name, title, author, options).
#
# If there is more than one author, separate them with \\.
# For example: r'Guido van Rossum\\Fred L. Drake, Jr., editor'
#
# The options element is a dictionary that lets you override
# this config per-document.
# For example,
# ('index.fr', u'MyProject', u'My Project', u'Author Name',
# dict(pdf_compressed = True))
# would mean that specific document would be compressed
# regardless of the global pdf_compressed setting.
pdf_documents = [
  ('trademarks', u'Trademarks', u'Quoted Trademarks', u'Superman\\Lilian Besson'),
#  ('cv.fr', 'cv.fr', u'CV - Lilian BESSON',
#   u'Lilian Besson'),
#  ('cv.en', 'cv.en', u'Résumé - Lilian BESSON',
#   u'Lilian Besson')
]

# A comma-separated list of custom stylesheets. Example:
pdf_stylesheets = ['sphinx','kerning','a4']

# A list of folders to search for stylesheets. Example:
# pdf_style_path = ['.', '_styles']

# Create a compressed PDF
# Use True/False or 1/0
# Example: compressed=True
pdf_compressed = True

# A colon-separated list of folders to search for fonts. Example:
# pdf_font_path = ['/usr/share/fonts', '/usr/share/texmf-dist/fonts/']

# Language to be used for hyphenation support
pdf_language = "fr_FR"

# Mode for literal blocks wider than the frame. Can be
# overflow, shrink or truncate
#pdf_fit_mode = "shrink"

# Section level that forces a break page.
# For example: 1 means top-level sections start in a new page
# 0 means disabled
pdf_break_level = 0

# When a section starts in a new page, force it to be 'even', 'odd',
# or just use 'any'
#pdf_breakside = 'any'


# Insert footnotes where they are defined instead of
# at the end.
pdf_inline_footnotes = True

# verbosity level. 0 1 or 2
pdf_verbosity = 0

# If false, no index is generated.
pdf_use_index = True

# If false, no modindex is generated.
pdf_use_modindex = True

# If false, no coverpage is generated.
pdf_use_coverpage = True

# Name of the cover page template to use
#pdf_cover_template = 'sphinxcover.tmpl'

# Documents to append as an appendix to all manuals.
#pdf_appendices = []

# Enable experimental feature to split table cells. Use it
# if you get "DelayedTable too big" errors
#pdf_splittables = False

# Set the default DPI for images
pdf_default_dpi = 120

# Enable rst2pdf extension modules (default is only vectorpdf)
# you need vectorpdf if you want to use sphinx's graphviz support
pdf_extensions = ['vectorpdf']

# Page template name for "regular" pages
#pdf_page_template = 'cutePage'

# Show Table Of Contents at the beginning?
pdf_use_toc = True

# How many levels deep should the table of contents be?
pdf_toc_depth = 9999

# Add section number to section references
pdf_use_numbered_links = False

# Background images fitting mode
pdf_fit_background_mode = 'scale'

##############################################################################
# (c) 2011-13
# 
# Lilian Besson
# mailto:lbesson[@]ens-cachan[.]fr
#

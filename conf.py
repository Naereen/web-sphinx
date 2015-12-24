#!/usr/bin/env /usr/bin/python
# -*- coding: utf-8 -*-
#
# Lilian Besson on the web documentation build configuration file (24-12-2015)
#
# This file is execfile()d with the current directory set to its containing dir.
# All configuration values have a default; values that are commented out
# serve to show the default.

import sys, os, subprocess
# import tinkerer
# import tinkerer.paths

reload(sys)
sys.setdefaultencoding("UTF-8")

# Use https://pypi.python.org/pypi/ANSIColors-balises if possible
# (its mine, and I'm kind of proud of it !)
try:
    from ANSIColors import printc
except:
    def printc(a):
        print a

printc("<magenta>[LOG]<white> Using python, version %s on %s." % (sys.version, sys.platform))

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#sys.path.insert(0, os.path.abspath('.'))

# -- General configuration -----------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
needs_sphinx = '1.3'

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
	'sphinxcontrib.gnuplot', # FIXED: https://bitbucket.org/birkenfeld/sphinx-contrib/issue/59/gnuplot-failed-after-upgrade-to-sphinx-121
	'sphinxcontrib.autorun',
######## Sphinx Spelling http://sphinxcontrib-spelling.readthedocs.org/en/latest/install.html
	# 'sphinxcontrib.spelling',
####### From reportLab
	#'rst2pdf.pdfbuilder',
####### Change the order ?
	'sphinx.ext.mathjax',
#	'sphinxcontrib.email',
####### New from pypi
####### Install with 'sudo pip install sphinx_pyreverse sphinx_git'
	'sphinx_pyreverse', # .. uml:: path_to_module
	'sphinx_git', # .. git_changelog::
	'sphinxcontrib.bitbucket', # bitbucket_project_url = 'https://bitbucket.org/birkenfeld/sphinx-contrib',
	#'hieroglyph', # https://github.com/nyergler/hieroglyph
	'sphinxcontrib.youtube', # From 'https://pypi.python.org/pypi/sphinxcontrib.youtube/0.1.2'
####### http://sphinx-doc.org/ext/extlinks.html
  'sphinx.ext.extlinks',
	]

##############################################################################
# Here is the good place to put special options for those exterior extensions

# The path to the JavaScript file to include in the HTML files in order to load MathJax.
# The default is the http:// URL that loads the JS files from the MathJax CDN. If you want MathJax to be available offline, you have to donwload it and set this value to a different path.
# The path can be absolute or relative; if it is relative, it is relative to the _static directory of the built docs.
# For example, if you put MathJax into the static path of the Sphinx docs, this value would be MathJax/MathJax.js.
# If you host more than one Sphinx documentation set on one server, it is advisable to install MathJax in a shared location.
# You can also give a full http:// URL different from the CDN URL.

# mathjax_path = "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML&amp;locale=fr"
# NEW: to load MathJax asynchronously, I add it on .template/layout.html, and I load nprogress.js with mathjax_path instead
mathjax_path = "nprogress.js"

# The output format for Graphviz when building HTML files. This must be either 'png' or 'svg'; the default is 'png'.
graphviz_output_format = 'svg'

# If this is True, todo and todolist produce output, else they produce nothing. The default is False.
todo_include_todos = True

# image format used for the different builders. ``latex`` and ``html`` fromats
#  are supported.
gnuplot_format = dict(latex='pdf', html='svg')

autorun_languages = {}
autorun_languages['pycon'] = u'python -'

# Un ajout : (ref http://perso.crans.org/besson/runblock.html#des-ajouts)
# autorun_languages['ocaml'] = u'ocaml -init /dev/null'
autorun_languages['ocaml'] = u'ocaml -stdin'
autorun_languages['ocaml_prefix_chars'] = 2

# sphinxcontrib.bitbucket
bitbucket_project_url = 'https://bitbucket.org/lbesson/web-sphinx'

# String specifying the language, as understood by PyEnchant and enchant. Defaults to en_US for US English.
# spelling_lang='fr' # 'fr_FR'

# String specifying a file containing a list of words known to be spelled correctly but that do not appear in the language dictionary selected by spelling_lang.
# The file should contain one word per line. Refer to the PyEnchant tutorial for details.
# spelling_word_list_filename='spelling_wordlist.txt'

# Boolean controlling whether suggestions for misspelled words are printed. Defaults to False.
# spelling_show_suggestions=False

# For extlinks http://sphinx-doc.org/ext/extlinks.html#confval-extlinks
extlinks = {
  # 'alias': ('http://monsite.ext/dir/subdir/formatstring/%s', 'prefix')
  'issue': ('https://bitbucket.org/lbesson/web-sphinx/issues/%s', 'bug '),
  'wfr': ('https://fr.wikipedia.org/wiki/%s', ''),
  'wen': ('https://en.wikipedia.org/wiki/%s', ''),
  'ffaddonfr': ('https://addons.mozilla.org/fr/firefox/addon/%s', ''),
  'ffaddonen': ('https://addons.mozilla.org/en-us/firefox/addon/%s', ''),
  'stpkg': ('https://packagecontrol.io/packages/%s', ''),
}
# Demo on avoir.html / avoir.rst (works very well)

##############################################################################

# Add any paths that contain templates here, relative to this directory.
templates_path = ['.templates']

# The suffix of source filenames.
source_suffix = u'.rst'

# The recommonmark Sphinx extension adds support for Markdown files
# https://github.com/rtfd/recommonmark (and it works very well)
try:
  from recommonmark.parser import CommonMarkParser
  source_parsers = {
    '.md': CommonMarkParser,  # README.md is the only concerned file
  }
  source_suffix = [u'.rst', u'.md']
except ImportError:
  print("recommonmark.parser.CommonMarkParser was not found.\nrecommonmark can be installed with 'pip install recommonmark' (from https://github.com/rtfd/recommonmark)")

# The encoding of source files.
#source_encoding = 'utf-8-sig'

# The master toctree document.
master_doc = 'index.fr'

# General information about the project.
author = u'Lilian Besson'
project = u'Lilian Besson on the web'
copyright = u'2011 - 2016, ' + author

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
# The short X.Y version.
version = '2.5'
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
exclude_patterns = [
	'.build', '.git',  # Build and git
	'.static/mathjax', 'scripts',  # Templates and scripts
	'whatsnew.fr.rst', 'whatsnew.en.rst',  # Special files to not include
	'pokedex-doc',  # Old stuff
	# 'agreg-2014'    # New stuff
]

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
autodoc_member_order = 'bysource'
autodoc_default_flags = ['members', 'private-members']

# Intersphinx
#intersphinx_mapping = {
#  'sqlalchemy': ('http://www.sqlalchemy.org/docs', None)
#}

# -- Options for HTML output ---------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for a list of builtin themes.
html_theme = 'classic'
# 'default' html theme has been renamed to 'classic'.
# Please change your html_theme setting either to the new 'alabaster' default theme, or to 'classic' to keep using the old default.


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

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = [ '.static' ]
# , tinkerer.paths.static ] ## XXX add this to use tinkerer

# The name of an image file (within the static path) to use as favicon of the
# docs.  This file should be a Windows icon file (.ico) being 16x16 or 32x32
# pixels large.
html_favicon = u".static/.favicon.ico"
# html_favicon = u".besson.png"

# Sphinx will add “permalinks” for each heading and description environment as paragraph signs that become visible when the mouse hovers over them.
# This value determines the text for the permalink; it defaults to "¶". Set it to None or the empty string to disable permalinks.
# Changed in version 1.1: This can now be a string to select the actual text of the link. Previously, only boolean values were accepted.
html_add_permalinks = u"¶"

# Encoding of HTML output files. Default is 'utf-8'. Note that this encoding name must both be a valid Python encoding name and a valid HTML charset value.
html_output_encoding = u"utf-8"

# If not '', a 'Last updated on:' timestamp is inserted at every page bottom,
# using the given strftime format.
html_last_updated_fmt = u"%d %b %Y, %Hh:%Mm:%Ss"

printc("<yellow>[INFO]<white> Using html_last_updated_fmt: <u>%s<U>..." % html_last_updated_fmt)

# If true, SmartyPants will be used to convert quotes and dashes to
# typographically correct entities.
html_use_smartypants = True

# Custom sidebar templates, maps document names to template names.
html_sidebars = {
   '**':        ['language-selector.html', 'social_icons.fr.html', 'localtoc.fr.html', 'searchbox.fr.html', 'sourcepdf.fr.html', 'linkpdf.fr.html', 'relations.fr.html'],  # , 'sidebar_gpg.fr.html'
   '**.en':     ['language-selector.html', 'social_icons.en.html', 'localtoc.en.html', 'searchbox.en.html', 'sourcepdf.en.html', 'linkpdf.en.html', 'relations.en.html'],  # , 'sidebar_gpg.en.html'],
   'index.fr':  ['language-selector.html', 'social_icons.fr.html', 'localtoc.fr.html', 'searchbox.fr.html', 'sourcepdf.fr.html', 'linkpdf.fr.html', 'relations.fr.html', 'globaltoc.fr.html'],  # , 'sidebar_gpg.fr.html'
   'index.en':  ['language-selector.html', 'social_icons.en.html', 'localtoc.en.html', 'searchbox.en.html', 'sourcepdf.en.html', 'linkpdf.en.html', 'relations.en.html', 'globaltoc.en.html'],  # , 'sidebar_gpg.en.html'
   'cv.fr':     ['sourcepdfcv.fr.html', 'searchbox.fr.html', 'sidebar_gpg.fr.html', 'social_icons.fr.html', 'localtoc.fr.html'],
   'cv.en':     ['sourcepdfcv.en.html', 'searchbox.en.html', 'sidebar_gpg.en.html', 'social_icons.en.html', 'localtoc.en.html'],
   '**/*':      ['language-selector.html', 'social_icons.en.html', 'localtoc.en.html', 'searchbox.en.html', 'relations.en.html', 'linkpdf.en.html']  # , 'sidebar_gpg.en.html'],
}

# Additional templates that should be rendered to pages, maps page names to template names.
html_additional_pages = {
    'download.fr': 'download.fr.html',
    'download.en': 'download.en.html',
}

# If false, no module index is generated.
html_domain_indices = False

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
latex_show_urls = 'footnote'

# Additional stuff for the LaTeX preamble.
latex_preamble = r'''
%
% Generated by Sphinx from reST sources.
%
% (c) 2011-2016 Lilian BESSON, http://perso.crans.org/besson/
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
epub_copyright = u'2011-2016, Lilian Besson'

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

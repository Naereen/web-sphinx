# -*- coding: utf-8 -*-
#
# Lilian Besson on the web documentation build configuration file, created by
# sphinx-quickstart on Wed Mar  6 23:43:36 2013.
#
# This file is execfile()d with the current directory set to its containing dir.
#
# Note that not all possible configuration values are present in this
# autogenerated file.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

import sys, os

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
	'sphinx.ext.mathjax', 
	'sphinx.ext.viewcode',
	'sphinx.ext.autosummary',
	'sphinx.ext.graphviz',
#	'sphinx.ext.refcounting',
#	'sphinx.ext.extlinks',
####### Sphinx Contrib
####### From https://bitbucket.org/birkenfeld/sphinx-contrib
	'sphinxcontrib.cheeseshop',
#	'sphinxcontrib.googleanalytics',
	'sphinxcontrib.gnuplot',
	'sphinxcontrib.autorun',
#	'sphinxcontrib.ansi',
	]

##############################################################################
# Here is the good place to put special options for those exterior extensions

# The output format for Graphviz when building HTML files. This must be either 'png' or 'svg'; the default is 'png'.
graphviz_output_format = 'svg'

# Additional command-line arguments to give to dot, as a list.
# The default is an empty list.
# This is the right place to set global graph, node or edge attributes via dot’s -G, -N and -E options.
# graphviz_dot_args = ""    

# If this is True, todo and todolist produce output, else they produce nothing. The default is False.
todo_include_todos = True

# True by default, use it to turn off tracking.
# googleanalytics_enabled = True

# UA id for your site
# googleanalytics_id = u'UA-38514290-8'

# image format used for the different builders. ``latex`` and ``html`` fromats
#  are supported.
gnuplot_format = dict(latex='pdf', html='svg')

autorun_languages = {}
autorun_languages['pycon'] = u'python -'
autorun_languages['ocaml-stdin'] = u'ocaml -stdin'
autorun_languages['ocaml-stdin_prefix_chars'] = 2

autorun_languages['ocaml'] = u'ocaml -init /dev/null'
autorun_languages['ocaml_prefix_chars'] = 2

autorun_languages['octave'] = u'/usr/bin/octave --silent --verbose --traditional --persist'
autorun_languages['octave_prefix_chars'] = 3

##############################################################################

# Add any paths that contain templates here, relative to this directory.
templates_path = ['.templates']

# The suffix of source filenames.
source_suffix = '.rst'

# The encoding of source files.
#source_encoding = 'utf-8-sig'

# The master toctree document.
master_doc = 'index'

	# General information about the project.
project = u'Lilian Besson on the web'
copyright = u'2013, Lilian Besson'

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
# The short X.Y version.
version = '1.2'
# The full version, including alpha/beta/rc tags.
release = 'public'

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
language = u"fr"

# There are two options for replacing |today|: either, you set today to some
# non-false value, then it is used:
today = ''
# Else, today_fmt is used as the format for a strftime call.
# today_fmt = u'%d/%m/%Y, %Hh:%Mm:%Ss'
# today_fmt = u'%A %d %B %Y, %Hh:%Mm:%Ss'
today_fmt = u'%d %b %Y, %Hh:%Mm:%Ss'

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
exclude_patterns = ['.build']

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

# -- Options for RST generic ---------------------------------------------------

# A string of reStructuredText that will be included at the end of every source file that is read. This is the right place to add substitutions that should be available in every file.
rst_epilog = """.. (c) Lilian Besson - 2011-13"""

# A string of reStructuredText that will be included at the beginning of every source file that is read.
rst_prolog = """.. add by rst_prolog"""

 
# -- Options for HTML output ---------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
html_theme = 'default'

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
html_theme_options = {
#    "rightsidebar": "true",
#    "relbarbgcolor": "black",
    "collapsiblesidebar" : True,
    "externalrefs" : True,
# other parameters
#    footerbgcolor (CSS color): Background color for the footer line.
#    footertextcolor (CSS color): Text color for the footer line.
#    sidebarbgcolor (CSS color): Background color for the sidebar.
#    "sidebarbgcolor" : "green",
#    sidebarbtncolor (CSS color): Background color for the sidebar collapse button (used when collapsiblesidebar is true).
#    sidebartextcolor (CSS color): Text color for the sidebar.
#    sidebarlinkcolor (CSS color): Link color for the sidebar.
#    relbarbgcolor (CSS color): Background color for the relation bar.
#    relbartextcolor (CSS color): Text color for the relation bar.
#    relbarlinkcolor (CSS color): Link color for the relation bar.
#    bgcolor (CSS color): Body background color.
#    textcolor (CSS color): Body text color.
#    linkcolor (CSS color): Body link color.
#    visitedlinkcolor (CSS color): Body color for visited links.
#    headbgcolor (CSS color): Background color for headings.
#    headtextcolor (CSS color): Text color for headings.
#    headlinkcolor (CSS color): Link color for headings.
#    codebgcolor (CSS color): Background color for code blocks.
#    codetextcolor (CSS color): Default text color for code blocks, if not set differently by the highlighting style.
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
html_logo = u".besson.png"

# The name of an image file (within the static path) to use as favicon of the
# docs.  This file should be a Windows icon file (.ico) being 16x16 or 32x32
# pixels large.
html_favicon = u"favicon.ico"

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
# html_static_path = ['.static']

#Sphinx will add “permalinks” for each heading and description environment as paragraph signs that become visible when the mouse hovers over them.
html_add_permalinks = True

#Encoding of HTML output files. Default is 'utf-8'. Note that this encoding name must both be a valid Python encoding name and a valid HTML charset value.
#html_output_encoding = u"utf-8"

# If not '', a 'Last updated on:' timestamp is inserted at every page bottom,
# using the given strftime format.
# html_last_updated_fmt = u'%A %d/%m/%Y, %Hh:%Mm:%Ss'
html_last_updated_fmt = u'%d %b %Y, %Hh:%Mm:%Ss'

# If true, SmartyPants will be used to convert quotes and dashes to
# typographically correct entities.
html_use_smartypants = True

# Custom sidebar templates, maps document names to template names.
html_sidebars = {
   '**': ['localtoc.html', 'searchbox.html', 'sourcelink.html', 'globaltoc.html'],
}

# Additional templates that should be rendered to pages, maps page names to
# template names.
#html_additional_pages = {}

# If false, no module index is generated.
html_domain_indices = True

# If false, no index is generated.
html_use_index = True

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
#html_use_opensearch = ''

# This is the file name suffix for HTML files (e.g. ".xhtml").
#html_file_suffix = None

# Output file base name for HTML help builder.
htmlhelp_basename = 'LilianBesson'


# -- Options for LaTeX output --------------------------------------------------

latex_elements = {
# The paper size ('letterpaper' or 'a4paper').
#'papersize': 'letterpaper',

# The font size ('10pt', '11pt' or '12pt').
'pointsize': '10pt',

# Additional stuff for the LaTeX preamble.
#'preamble': '',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title, author, documentclass [howto/manual]).
latex_documents = [
  ('index', 'LilianBesson.tex', u'Lilian Besson on the web Documentation',
   u'Lilian Besson', 'howto'),
]

# The name of an image file (relative to this directory) to place at the top of
# the title page.
latex_logo = ".besson.png"

# For "manual" documents, if this is true, then toplevel headings are parts,
# not chapters.
latex_use_parts = False

# If true, show page references after internal links.
latex_show_pagerefs = True

# If true, show URL addresses after external links.
latex_show_urls = True

# Documents to append as an appendix to all manuals.
#latex_appendices = []

# If false, no module index is generated.
#latex_domain_indices = True


# -- Options for manual page output --------------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    ('index', 'lilianbesson', u'Lilian Besson on the web Documentation',
     [u'Lilian Besson'], 1)
]

# If true, show URL addresses after external links.
man_show_urls = True


# -- Options for Texinfo output ------------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
  ('index', 'LilianBessonontheweb', u'Lilian Besson on the web Documentation',
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

# (c) 2011-13
# 
# Lilian Besson
# mailto:lbesson@ens-cachan.fr
#
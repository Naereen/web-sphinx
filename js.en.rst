.. meta::
   :description lang=en: Description of JavaScript scripts in my web pages
   :description lang=fr: Page décrivant les scripts JavaScript utilisés pour mes pages

##########################################################################
 Description of JavaScript scripts in my web pages
##########################################################################

---------------------------------------------------------------------

About this page
---------------
This page describes some **JavaScript scripts stored in this git repository**
`web-sphinx-scripts <https://bitbucket.org/lbesson/web-sphinx-scripts>`_.

But it also describes **some features implemented in JavaScript for some pages in this website**.

.. sidebar:: Go back to home page

    If this page does not intereste you, go to `the main home page <index.html>`_.

------------------------------------------------------------------------------

List of usage of JavaScript here
--------------------------------
* Smart embedding of Google Analytics (one single script for pages hosted on different servers),
* To have ``alert`` windows in `<gnuplot.html>`_, `<ocaml.en.html>`_ or `<python.html>`_,
* To embed a graphic on `<transifex.en.html>`_ and `<transifex.fr.html>`_,
* To embed a file hosted on Bitbucket in `<bitbucket-features.en.html>`_,
* To experiment some things in `<avoir.html>`_,
* Pour les terminaux in `<try-ocaml.html>`_, `<skulpt.html>`_, `<python.html>`_, `<gnuplot.html>`_ and  `<gnuplot_embed.html>`_.
* To display the current air quality in Paris in `<plume-air-paris.en.html>`_,

I removed these old features in December 2017 to adopt a lighter style.

* (removed) To know which webserver was used (and adapt the image in the footer, to show the NGinx or Apache HTTPD logo) en bas,
* (removed) To embed `SquirtFR`_, with keyboard shortcut "q",
* (removed) To allow a change in the website style, with keyboard shortcut "s", to change between colors (purple, orange, or green),

------------------------------------------------------------------------------

List of scripts
---------------
Not mine
^^^^^^^^^^^^^
* `jQuery <_static/jquery.js>`_,
  The famous JS library. It is included by default by Sphinx
  (to handle the sidebar and other things).

* `ace <_static/ace-new/>`_,
  a nice text editor in JS, used for the consoles for Python (`<python.html>`_ and `<skulpt.html>`_) or for a demo (`<ace.html>`_).

* `gnuplot.js <_static/gnuplot.js>`_ and `gnuplot_api.js <_static/gnuplot_api.js>`_
  for `the embedded GNUPlot console <gnuplot.html>`_.

* `skulpt.js <_static/skulpt.js>`_ and `python.js <_static/python/>`_
  for the embeded Python consoles (`<skulpt.html>`_ and `<python.html>`_).

* `toplevel.js <_static/toplevel.js>`_ and `try-ocaml <_static/try-ocaml/>`_
  for the embeded OCaml consoles (`<ocaml.en.html>`_ and `<try-ocaml.en.html>`_).

* (removed) `mousetrap.min.js <_static/mousetrap.min.js>`_ to easily define keyboard shortcuts
  (Go on, try it ! Hit 'h' or 'i' or '→' or '←' or 'n' or 'p', or 'u' for instance).

jQuery plugins
^^^^^^^^^^^^^^
* `jquery.scrollUp.min.js <_static/jquery.scrollUp.min.js>`_ adds a button to go to the top of the page,
  in the side bar *(bottom left !)*,

* `jquery.smooth-scroll.min.js <_static/jquery.smooth-scroll.min.js>`_ allows a smooth scroll when clicking an *internal* link in a page (to a header),

* (removed) `jquery.timeago.js <_static/jquery.timeago.js>`_ to display the date of the last change on this website, with keyboard shortcut "u".

Not my scripts but adapted
^^^^^^^^^^^^^^^^^^^^^^^^^^
* `horloge.js <_static/horloge.js>`_ for `<time.html>`_ (in French),

* (removed) `simpleimagetrail.js <_static/simpleimagetrail.js>`_ (disabled),

* (removed) `nprogress.js <_static/nprogress.js>`_ and `nprogress.ccs <_static/nprogress.ccs>`_
  to display a slick progress bar when loading the next page (in :cyan:`cyan`),

* (removed) `forkit.js <_static/forkit.js>`_ (the *banner* "On Bitbucket?" which was moving on top right corner, :red:`disabled`) and `fokus.min.js <_static/fokus.min.js>`_  come from `hakim.se <http://hakim.se/>`_. Thanks to him!

My scripts
^^^^^^^^^^
* (removed) `referrer.js <_static/referrer.js>`_
  was used to display nicer information messages on the error pages (`<404.html>`_ or `<403.html>`_),

* (used for folder views) `StrapDown.js <_static/md/>`_ is an awesome Markdown > HTML compiler,

* (used for folder views) `SquirtFR <_static/squirt/>`_ is a *bookmarklet* to read very quickly a webpage.

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

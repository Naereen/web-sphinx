.. meta::
   :description lang=en: How to use Google Analytics in a Sphinx project
   :description lang=fr: Utiliser Google Analytics dans un projet Sphinx

#################################################
 How to use Google Analytics in a Sphinx project
#################################################
.. include:: .special.rst
.. note:: This short page is focusing on Google Analytics

   For more informations, it might be useful to consult first one of these pages:
    * `en.wikipedia.org/wiki/Google_Analytics <https://en.wikipedia.org/wiki/Google_Analytics>`_,
    * `www.google.com/analytics <http://www.google.com/analytics/>`_.


.. note:: This short page is also focusing on Sphinx

   Therefore, for more informations, it might be useful to have in mind how Sphinx works, 
   and in particular how to use HTML templating support `sphinx-doc.org/templating.html <http://sphinx-doc.org/templating.html>`_.


«Vanilla» Google Analytics code
-------------------------------
The default code to add in every page is the following piece of JavaScript:

.. code-block:: javascript

   (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
   (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
   m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
   })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
   ga('create', 'UA-38514290-15', 'ga-beacon.appspot.com');
   ga('send', 'pageview');


The first and intuitive solution is, *of course*, to modify the main *template* document
(usually, it should be ``_templates/layout.html`` ou ``.templates/layout.html``)
and to add it this code, between two tags ``<script type="text/javascript">`` and ``</script>``.

If possible, you have to add this piece of code at *the end of the page*, to reduce the page's loading time.

A smaller piece of code
-----------------------
*(And also easier to maintain !)*
You just have to create a small ``ga.js`` script contenaning 
the previous piece of code, and add it somewhere on your website.

For instance: `ga.js <http://besson.qc.to/_static/ga.js>`_.

Then you have to load it in every webpage with one-line of ``HTML`` code
at the end of the file (in the ``<bottom>`` paragraph or at the end of ``<body>``) :

.. code-block:: html

   <script type="text/javascript" async src="http://besson.qc.to/_static/ga.js"></script>


Moreover, the ``async`` tag will improve the speed of the page, by
loading asynchronously the ``ga.js`` script. Awesome!

How and where adding it
-----------------------
For example, you can take a look at my `layout.html <https://bitbucket.org/lbesson/web-sphinx/src/master/.templates/layout.html#cl-290>`_.

------------------------------------------------------------------------------

Other solutions (not tested)
----------------------------

.. warning:: Still writting this section !

.. seelso::

   GA-Beacon (`<beacon.html>`_)
      How to use a *one-pixel* image to use Google Analytics
      to measure the audience of a page, or an email.


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
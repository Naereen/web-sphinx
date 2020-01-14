.. meta::
   :description lang=en: Description and examples of some hidden features of Bitbucket
   :description lang=fr: Page décrivant des fonctionnalités peu connues de Bitbucket

###############################################################
 Examples of concrete use of some hidden features of Bitbucket
###############################################################

.. include:: .javascript.en.rst

---------------------------------------------------------------------

About this page
---------------
This page demonstrates some hidden features of the awesome website `Bitbucket <https://Bitbucket.org>`_
(you know, the Australian concurrent of `GitHub <https://GitHub.com>`_, to which `I participated in his French translation <transifex.html>`_ and that I enjoy very much).

---------------------------------------------------------------------

Direct links
------------
Complete historic for a file
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For example: for my script `bin/PDFCompress <https://bitbucket.org/lbesson/bin/history-node/master/PDFCompress>`_.

To a specific line
^^^^^^^^^^^^^^^^^^
For example: for my file `.bashrc <https://bitbucket.org/lbesson/bin/src/master/.bashrc#cl-441>`_, directly to the line 441.

Direct file
^^^^^^^^^^^
For example: for my script `bin/series.sh <https://bitbucket.org/lbesson/bin/raw/master/series.sh>`_.

Include a file with ``?t=embed``
--------------------------------
How does it work?
^^^^^^^^^^^^^^^^^
Pattern
~~~~~~~
`Bitbucket.org <https://Bitbucket.org>`_ allows to include a file (with syntax coloring)
easily, with the following piece of ``HTML`` code:

.. code-block:: html

   <script type="text/javascript" src="https://bitbucket.org/NAME/REPOSITORY/src/master/PATH?t=embed"></script>


Example
~~~~~~~
You have to replace:

 #. ``NAME`` by your Bitbucket username (for me, it is `lbesson <https://bitbucket.org/lbesson>`_);
 #. ``REPOSITORY`` by the name of the repository (for instance, for me, `bin <https://bitbucket.org/lbesson/bin>`_);
 #. ``PATH`` by the complete path to the file (for instance, `pdflatex <https://bitbucket.org/lbesson/bin/src/master/pdflatex>`_ which is also `here bin/pdflatex localement <bin/pdflatex>`_).

And so, in the example below, the ``HTML`` code embedded is:

.. code-block:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/src/master/pdflatex?t=embed"></script>


In reStructuredText
~~~~~~~~~~~~~~~~~~~
And finally, we can include this in a webpage generated with Sphinx thanks to the following piece of ``rST`` code:

.. code-block:: rst

   .. raw:: html

      <script type="text/javascript" src="https://bitbucket.org/lbesson/src/master/pdflatex?embed=t">File bin/pdflatex</script>
      <noscript>Javascript is disabled, impossible to include this file <a href="https://bitbucket.org/lbesson/raw/master/pdflatex">bin/pdflatex</a>.</noscript>


Examples
^^^^^^^^
bin/pdflatex
~~~~~~~~~~~~

.. raw:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/bin/src/master/pdflatex?embed=t">File bin/pdflatex</script>
   <noscript>Javascript is disabled, impossible to include this file <a href="https://bitbucket.org/lbesson/bin/raw/master/pdflatex">bin/pdflatex</a>.</noscript>


A rST file (the source code of this page!)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. raw:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/web-sphinx/src/master/bitbucket-features.en.rst?embed=t">File bitbucket-features.en.rst</script>
   <noscript>Javascript is disabled, impossible to include this file <a href="https://bitbucket.org/lbesson/web-sphinx/raw/master/bitbucket-features.en.rst">bitbucket-features.en.rst</a>.</noscript>


.. (c) Lilian Besson, 2011-2020, https://bitbucket.org/lbesson/web-sphinx/

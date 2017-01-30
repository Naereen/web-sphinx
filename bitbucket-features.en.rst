.. meta::
   :description lang=en: Description and examples of some hidden features of Bitbucket
   :description lang=fr: Page décrivant des fonctionnalités peu connues de Bitbucket

###############################################################
 Examples of concrete use of some hidden features of Bitbucket
###############################################################

.. include:: .javascript.en.rst

---------------------------------------------------------------------

.. todo:: Finish this translation!

À-propos
--------
Cette page est là pour décrire et tester des fonctionnalités sympas offertes par `Bitbucket <https://Bitbucket.org>`_
(vous savez, le concurrent de `GitHub <https://GitHub.com>`_, pour lequel `j'ai participé activement à la traduction <transifex.html>`_ et que j'apprécie beaucoup).


.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter `celle là <index.html>`_.


---------------------------------------------------------------------

Liens directs
-------------
Historique complet pour un fichier
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Par exemple : pour mon script `bin/PDFCompress <https://bitbucket.org/lbesson/bin/history-node/master/PDFCompress>`_.

Une ligne spécifique
^^^^^^^^^^^^^^^^^^^^
Par exemple : pour mon fichier `.bashrc <https://bitbucket.org/lbesson/bin/src/master/.bashrc#cl-441>`_, à la ligne 441.

Fichier direct
^^^^^^^^^^^^^^
Par exemple : pour mon script `bin/series.sh <https://bitbucket.org/lbesson/bin/raw/master/series.sh>`_.

Inclure un fichier avec ``?t=embed``
------------------------------------
Comment ça marche ?
^^^^^^^^^^^^^^^^^^^
Motif
~~~~~
`Bitbucket.org <https://Bitbucket.org>`_ permet d'inclure un fichier (avec coloration syntaxique et tout)
facilement, avec le morceau de code ``HTML`` suivant :

.. code-block:: html

   <script type="text/javascript" src="https://bitbucket.org/PSEUDO/REPOSITORY/src/master/PATH?t=embed"></script>


Exemple
~~~~~~~
Il faut remplacer :

 #. ``PSEUDO`` par votre nom d'utilisateur bitbucket (pour moi, c'est `lbesson <https://bitbucket.org/lbesson>`_);
 #. ``REPOSITORY`` par le nom du dépôt (par exemple, pour moi, `bin <https://bitbucket.org/lbesson/bin>`_);
 #. ``PATH`` par le chemin du fichier (par exemple, `pdflatex <https://bitbucket.org/lbesson/bin/src/master/pdflatex>`_ qui est aussi `ici bin/pdflatex localement <bin/pdflatex>`_).

Ainsi, donc dans l'exemple plus bas, le code ``HTML`` embarqué dans l'exemple plus bas est :

.. code-block:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/src/master/pdflatex?t=embed"></script>


En reStructuredText
~~~~~~~~~~~~~~~~~~~
Enfin, j'inclue ça dans une page générée avec Sphinx avec le code ``rST`` suivant :

.. code-block:: rst

   .. raw:: html

      <script type="text/javascript" src="https://bitbucket.org/lbesson/src/master/pdflatex?embed=t">Fichier bin/pdflatex</script>
      <noscript>Pas de JavaScript pour inclure le fichier <a href="https://bitbucket.org/lbesson/raw/master/pdflatex">bin/pdflatex</a>.</noscript>


Exemples
^^^^^^^^
bin/pdflatex
~~~~~~~~~~~~

.. raw:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/bin/src/master/pdflatex?embed=t">Fichier bin/pdflatex</script>
   <noscript>Pas de JavaScript pour inclure le fichier <a href="https://bitbucket.org/lbesson/bin/raw/master/pdflatex">bin/pdflatex</a>.</noscript>


Un fichier rST (celui de cette page !)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. raw:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/web-sphinx/src/master/embed.rst?embed=t">Fichier embed.rst</script>
   <noscript>Pas de JavaScript pour inclure le fichier <a href="https://bitbucket.org/lbesson/web-sphinx/raw/master/embed.rst">embed.rst</a>.</noscript>


.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

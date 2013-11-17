.. meta:: 
   :description lang=fr: Page décrivant des scripts sympas sur lesquels je travaille (expérimental)
   :description lang=en: Description of some nice scripts I work on (experimental)

############################################################################################
 Scripts et terrain de jeu : utilisation concrète de certaines fonctionnalités de Bitbucket
############################################################################################
.. include:: .special.rst
.. include:: .javascript.rst

---------------------------------------------------------------------

À-propos
--------
Cette page est là pour décrire certains **scripts** (en Bash, Python, JavaScript notamment)
stockés dans les dépôts
`web-sphinx-scripts <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, et 
`home <https://bitbucket.org/lbesson/home>`_.

Mais aussi pour tester des fonctionnalités sympas offertes par `bitbucket <https://bitbucket.org>`_
(vous savez, le concurrent de github, dont je `participe activement à la traduction <transifex.html>`_).


.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter `celle là <index.html>`_.


---------------------------------------------------------------------

Liens directs
-------------
Historique pour un fichier
^^^^^^^^^^^^^^^^^^^^^^^^^^
Par exemple: pour `bin/PDFCompress <https://bitbucket.org/lbesson/home/history-node/master/bin/PDFCompress>`_.

Une ligne spécifique
^^^^^^^^^^^^^^^^^^^^
Par exemple: pour `.bashrc <https://bitbucket.org/lbesson/home/src/master/.bashrc#cl-463>`_ à la ligne 463.

Fichier direct
^^^^^^^^^^^^^^
Par exemple: pour `bin/series.sh <https://bitbucket.org/lbesson/home/raw/master/bin/series.sh>`_.

Inclure un fichier avec ``?t=embed``
------------------------------------
Comment ça marche ?
^^^^^^^^^^^^^^^^^^^
Motif
~~~~~
Bitbucket.org permet d'inclure un fichier (avec coloration syntaxique et tout)
facilement, avec le morceau de code ``HTML`` suivant :

.. code-block:: html

   <script type="text/javascript" src="https://bitbucket.org/PSEUDO/REPOSITORY/src/master/PATH?t=embed"></script>


Exemple
~~~~~~~
Il faut remplacer :

 #. *PSEUDO* par votre nom d'utilisateur bitbucket (pour moi, c'est `lbesson <https://bitbucket.org/lbesson>`_);
 #. *REPOSITORY* par le nom du dépôt (par exemple, pour moi, `home <https://bitbucket.org/lbesson/home>`_);
 #. *PATH* par le chemin du fichier (par exemple, `bin/pdflatex <https://bitbucket.org/lbesson/home/src/master/bin/pdflatex>`_ qui est aussi `ici bin/pdflatex <bin/pdflatex>`_).

Ainsi, donc dans l'exemple plus bas, le code ``HTML`` embarqué dans l'exemple plus bas est :

.. code-block:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/home/src/master/bin/pdflatex?t=embed"></script>


En reStructuredText
~~~~~~~~~~~~~~~~~~~
Enfin, j'inclue ça dans une page générée avec Sphinx avec le code ``rST`` suivant :

.. code-block:: rst

   .. raw:: html

      <script type="text/javascript" src="https://bitbucket.org/lbesson/home/src/master/bin/pdflatex?embed=t">Fichier bin/pdflatex</script>
      <noscript>Pas de JavaScript pour inclure le fichier <a href="https://bitbucket.org/lbesson/home/raw/master/bin/pdflatex">bin/pdflatex</a>.</noscript>


Exemples
^^^^^^^^
bin/pdflatex
~~~~~~~~~~~~

.. raw:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/home/src/master/bin/pdflatex?embed=t">Fichier bin/pdflatex</script>
   <noscript>Pas de JavaScript pour inclure le fichier <a href="https://bitbucket.org/lbesson/home/raw/master/bin/pdflatex">bin/pdflatex</a>.</noscript>


Un fichier rST
~~~~~~~~~~~~~~

.. raw:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/web-sphinx/src/master/embed.rst?embed=t">Fichier embed.rst</script>
   <noscript>Pas de JavaScript pour inclure le fichier <a href="https://bitbucket.org/lbesson/web-sphinx/raw/master/embed.rst">embed.rst</a>.</noscript>


.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
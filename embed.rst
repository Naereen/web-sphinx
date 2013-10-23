.. meta:: 
   :description lang=fr: Page décrivant des scripts sympas sur lesquels je travaille (expérimental)
   :description lang=en: Description of some nice scripts I work on (experimental)

############################################################################################
 Scripts et terrain de jeu : utilisation concrète de certaines fonctionnalités de Bitbucket
############################################################################################
.. include:: .special.rst
.. include:: .javascript.rst

.. warning:: En cours de rédaction (le 23-10-2013) !

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

Expérimentations
----------------

Comment ça marche ?
^^^^^^^^^^^^^^^^^^^

Bitbucket.org permet d'inclure un fichier (avec coloration syntaxique et tout)
facilement, avec le morceau de code ``HTML`` suivant :

.. code-block:: html

   <script type="text/javascript" src="https://bitbucket.org/PSEUDO/REPOSITORY/src/master/PATH"></script>


Il faut remplacer :

 #. *PSEUDO* par votre nom d'utilisateur bitbucket (pour moi, c'est `lbesson <https://bitbucket.org/lbesson>`_);
 #. *REPOSITORY* par le nom du dépôt (par exemple, pour moi, `home <https://bitbucket.org/lbesson/home>`_);
 #. *PATH* par le chemin du fichier (par exesmple, `bin/pdflatex <https://bitbucket.org/lbesson/home/src/bin/pdflatex>`_).

Ainsi, donc dans l'exemple plus bas, le code ``HTML`` embarqué dans l'exemple plus bas est :

.. code-block:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/home/src/master/bin/pdflatex"></script>


Enfin, j'inclue ça dans une page générée avec Sphinx avec le code ``rST`` suivant :

.. code-block:: rst

   .. raw:: html

      <script type="text/javascript" src="https://bitbucket.org/lbesson/home/src/master/bin/pdflatex?embed=t">Fichier bin/pdflatex</script>
      <noscript>Pas de JavaScript pour inclure le fichier <a href="http://besson.qc.to/git/home/src/master/bin/pdflatex">bin/pdflatex</a>.</noscript>



bin/pdflatex
^^^^^^^^^^^^

.. raw:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/home/src/master/bin/pdflatex?embed=t">Fichier bin/pdflatex</script>
   <noscript>Pas de JavaScript pour inclure le fichier <a href="http://besson.qc.to/git/home/src/master/bin/pdflatex">bin/pdflatex</a>.</noscript>


bin/PDFCompress
^^^^^^^^^^^^^^^

.. raw:: html

   <script type="text/javascript" src="https://bitbucket.org/lbesson/home/src/master/bin/PDFCompress?embed=t">Fichier bin/PDFCompress</script>
   <noscript>Pas de JavaScript pour inclure le fichier <a href="http://besson.qc.to/git/home/src/master/bin/PDFCompress">bin/PDFCompress</a>.</noscript>


.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
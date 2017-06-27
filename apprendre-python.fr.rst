.. meta::
   :description lang=en: Advice to start learning Python
   :description lang=fr: Recommandation pour commencer à apprendre Python

###################################################
 Recommandations pour commencer à apprendre Python
###################################################


Pour se lancer et apprendre Python, je recommande...
----------------------------------------------------

.. note:: Qu'est-ce que Python ?

   Un `langage de programmation <https://fr.wikipedia.org/wiki/Language_de_programmation>`_ très populaire. Gratuit, libre, multi-plateforme, simple à apprendre, écrire et lire.

.. seealso:: Un site de référence ?

   Ce site en français est une référence pour l'installation et l'utilisation de Python,
   en prépa scientifique (CPGE) : `python-prepa.github.io <https://python-prepa.github.io/index.html>`_.
   Leur page `pour installer Python <https://python-prepa.github.io/preparation.html>`_ est très bien rédigée.


#. L'installeur `Anaconda <http://continuum.io/downloads>`_, qui permet de "tout" installer en un seul clic (un seul gros fichier de presque 400 Mo, gratuit), sur Windows, Linux ou Mac OS. `Canopy (par Enthougt) <https://www.enthought.com/products/canopy/>`_ est une excellente alternative pour installer Python en un clic, comme décrit par cette vidéo :

.. raw:: html

   <center><iframe width="640" height="360" src="https://www.youtube.com/embed/e7M-_K4B7Lg" frameborder="0" allowfullscreen></iframe></center>


#. Pour écrire des programmes Python, `Spyder <https://pythonhosted.org/spyder/>`_ (avec `IPython <http://ipython.org/>`_) est une combinaison simple mais efficace. Surtout pour faire du Python numérique/scientifique. L'interface utilisateur ressemble assez à celle de MATLAB (code à gauche, sortie à droite, un bouton vert à cliquer pour exécuter *etc*), et le logiciel entier est vraiment parfait. Seule la *recherche d'aide* est (un peu) moins bien que MATLAB, le reste me semble (objectivement) mieux conçu pour Spyder. Mais une recherche sur Internet (avec `DuckDuckGo <https://duckduckgo.com>`_ bien sûr, et pas Gouuuugle) marche bien généralement.

#. Un éditeur plus complet de niveau professionnel est `PyCharm par JetBrains <https://www.jetbrains.com/pycharm/download/>`_, moins facile à prendre en main mais PyCharm est très puissant !

#. Pour apprendre Python, `les bases sont bien abordées ici (en anglais) <http://introtopython.org/var_string_num.html>`_ (et dans les pages suivantes). Sachant que la plupart des éléments de syntaxes et des concepts sont très faciles d'approche, en particulier si vous avez déjà une expérience de programmation.

#. Pour *« faire du numérique »*, le standard de facto est la combinaison `NumPy/SciPy <http://www.numpy.org/>`_ + `MatPlotLib <http://matplotlib.org/>`_. Tout ça est installé avec `Anaconda`_, et marche parfaitement tout de suite après l'installation. Un `bon tutoriel pour NumPy/SciPy est disponible <https://docs.scipy.org/doc/numpy-dev/user/quickstart.html>`_ et un autre apprendre `comment faire des dessin avec MatPlotLib <https://scipy-lectures.github.io/intro/matplotlib/matplotlib.html>`_ (écrit par deux français du Labri !). La page `"NumPy for MATLAB Users" <https://docs.scipy.org/doc/numpy-dev/user/numpy-for-matlab-users.html>`_ peut aussi aider si vous connaissez déjà MatLab.

#. Et pour lire quelques démos, j'en ai écrit une soixantaine ici `bitbucket.org/lbesson/python-demos <https://bitbucket.org/lbesson/python-demos/src/master/>`_, qui couvrent rapidement des domaines aussi variés que le traitement d'images, l'apprentissage statistique, le calcul numérique (`résolution d'une EDP <https://bitbucket.org/lbesson/python-demos/src/master/PDE_02_2015/>`_), la production de graphiques (notamment des histogrammes et des camembers pour de fausses notes pour des examens), l'algèbre linéaire, le calcul symbolique (avec `SymPy <https://www.sympy.org/>`_), et des morceaux d'algorithmique de base...

------------------------------------------------------------------------------

.. seealso::

   Cet article, en anglais, est une excellente présentation pour apprendre Python : `dataquest.io/blog/learn-python-the-right-way <https://www.dataquest.io/blog/learn-python-the-right-way/>`_.

.. seealso::

   Cet `article de blog <http://www.pgbovine.net/python-teaching.htm>`_ par `Philip Guo <http://www.pgbovine.net/>`_ est aussi intéressant, il explique pourquoi Python est un excellent choix de langage de programmation pour commencer à programmer et découvrir l'informatique.

.. seealso::

   Ces listes (en anglais) donnent aussi de très bons conseils, voir `kirang89/pycrumbs <https://github.com/kirang89/pycrumbs>`_, `svaksha/pythonidae <https://github.com/svaksha/pythonidae>`_, `vinta/awesome-python <https://github.com/vinta/awesome-python>`_.

.. note:: MATLAB est une marque déposée de MathWorks ®. Et Python c'est super !

.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

.. meta::
   :description lang=en: Advices to start learning Python
   :description lang=fr: Recommandation pour commencer à apprendre Python

###################################################
 Recommandations pour commencer à apprendre Python
###################################################
.. include:: .special.rst

Pour se lancer et apprendre Python, je recommande...
----------------------------------------------------

.. note:: Qu'est-ce que Python ?

   Un `language de programmation <https://fr.wikipedia.org/wiki/Language_de_programmation>`_ très populaire. Gratuit, libre, multi-plateforme, simple à apprendre, écrire et lire.


#. L'installeur `Anaconda <http://continuum.io/downloads>`_, qui permet de "tout" installer en un seul clic (un seul gros fichier de presque 400 Mo, gratuit bien sûr), sur Windows, Linux ou Mac OS.

#. Pour écrire des programmes Python, `Spyder <https://pythonhosted.org/spyder/>`_ (avec `iPython <http://ipython.org/>`_) est franchement une combinaison superbe. Surtout pour faire du Python numérique/scientifique. L'interface utilisateur ressemble assez à celle de Matlab (code à gauche, sortie à droite, un bouton vert à cliquer pour exécuter *etc*), et le logiciel entier est vraiment parfait. Seule la *recherche d'aide* est (un peu) moins bien que Matlab, le reste me semble (objectivement) mieux conçu pour Spyder. Mais une recherche sur Internet (avec `DuckDuckGo <https://duckduckgo.com>`_ bien sûr, et pas Gougle) marche bien généralement.

#. Pour apprendre Python, `les bases sont bien abordées ici <http://introtopython.org/var_string_num.html>`_ (et dans les pages suivantes). Sachant que la plupart des éléments de syntaxes et des concepts sont très faciles d'approche, en particulier si vous avez déjà une expérience de programmation.

#. Pour *« faire du numérique »*, le standard de facto est la combinaison `NumPy/SciPy <http://www.numpy.org/>`_ + `MatPlotLib <http://matplotlib.org/>`_. Tout ça est installé avec `Anaconda`_, et marche parfaitement tout de suite après l'installation. Un `bon tutoriel pour NumPy/SciPy est disponible <http://wiki.scipy.org/Tentative_NumPy_Tutorial>`_ et un autre apprendre `comment faire des dessin avec MatPlotLib <https://scipy-lectures.github.io/intro/matplotlib/matplotlib.html>`_ (écrit par deux français du Labri !). La page `"NumPy for Matlab Users" <http://wiki.scipy.org/NumPy_for_Matlab_Users>`_ peut aussi aider si vous connaissez déjà MatLab.

#. Et pour lire quelques démos, j'en ai écrit un certains nombres ici `BitBucket.org/lbesson/python-demos <https://bitbucket.org/lbesson/python-demos/src/master/>`_, qui couvrent rapidement des domaines aussi variés que le traitement d'images, l'apprentissage statistique, le calcul numérique (`résolution d'une EDP <https://bitbucket.org/lbesson/python-demos/src/master/PDE_02_2015/>`_), la production de graphiques (notamment des histogrammes et des camembers pour de fausses notes pour des examens), l'algèbre linéaire, le calcul symbolique (avec `SymPy <https://www.sympy.org/>`_), et des morceaux d'algorithmique de base...

------------------------------------------------------------------------------

.. note:: Matlab est une marque déposée de MathWorks.

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

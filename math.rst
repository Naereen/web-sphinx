################
Écrire des maths
################

Des maths ?
-----------
 Je teste ici la fonctionnalité "expérimentale" d'embarquer des maths 
 écrits avec une balise ``.. math::``, et censées être rendues avec **MathJax**.

 **MathJax** ? Allez voir `la page officielle <http://www.mathjax.org/>`_
 pour plus de détails.
 Il faut seulement savoir que **MathJax** permet d'afficher *facilement*
 des maths (écrites avec un code ``LaTeX``) joliment.

Exemples
--------
On remarque qu'on peut tout d'abord écrire des maths sans passer
à la ligne :math:`a^2 + b^2 = c^2` (dans un triangle rectangle),
avec la balise de texte interprété ``:math:`code math```.

Identités remarquables
~~~~~~~~~~~~~~~~~~~~~~
.. math::

   (a + b)^2 = a^2 + 2ab + b^2
   
   (a - b)^2 = a^2 - 2ab + b^2

Démonstration
~~~~~~~~~~~~~
.. math::

   (a + b)^2  &=  (a + b)(a + b) \\
              &=  a^2 + 2ab + b^2

On peut aussi utiliser la balise ``.. math::`` sans retourner à la ligne :

.. math:: (a + b)^2 = a^2 + 2ab + b^2

Encore des exemples
-------------------
 L'option ``:label:`` permet ensuite de faire référence à l'équation.

.. math:: e^{i\pi} + 1 = 0
   :label: euler

J'aime l'équation :eq:`euler` 
(qui a été élue 'plus belle formule' de l'Histoire des mathématiques en 1991 !)


On peut aussi faire comme ``$ math code $`` en LaTeX avec ``:math:`math code```.

Comme :math:`\int_{0}^{1} x^2 dx = \frac{1}{3}`.

------------------------------------------------------------------------------

Autres **expérimentations** : des couleurs ?
--------------------------------------------

J'utilise la balise ``.. raw:: html`` pour embarquer des définitions de 
styles (CSS) dans les fichiers **.rst** écrits pour ces pages webs.

Et j'utilise la balise ``.. role::`` pour déclarer des rôles aux différentes
couleurs : black gray silver white maroon red magenta fuchsia pink orange 
yellow lime green olive teal cyan aqua blue navy purple.

Exemples :

 * la couleur :black:`black`;
 * la couleur :gray:`gray`;
 * la couleur :silver:`silver`;
 * la couleur :white:`white`;
 * la couleur :maroon:`maroon`;
 * la couleur :red:`red`;
 * la couleur :magenta:`magenta`;
 * la couleur :fuchsia:`fuchsia`;
 * la couleur :pink:`pink`;
 * la couleur :orange:`orange`;
 * la couleur :yellow:`yellow`;
 * la couleur :lime:`lime`;
 * la couleur :green:`green`;
 * la couleur :olive:`olive`;
 * la couleur :teal:`teal`;
 * la couleur :cyan:`cyan`;
 * la couleur :aqua:`aqua`;
 * la couleur :blue:`blue`;
 * la couleur :navy:`navy`;
 * la couleur :purple:`purple`;
 * ceci est :u:`underlined`.

.. include:: .bottom.fr.rst
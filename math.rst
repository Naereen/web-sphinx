###############################
 Écrire des *maths* en **rST**
###############################

Des maths ?
-----------
 Je teste ici la possibilité d'embarquer des formules de maths
 écrites avec une balise ``.. math::``, et censées être rendues avec **MathJax**.

 **MathJax** ? Allez voir `la page officielle <http://www.mathjax.org/>`_
 pour plus de détails.
 Il faut seulement savoir que **MathJax** permet d'afficher *facilement*
 des maths (écrites en ``LaTeX`` ou en ``MathML``) joliment.

Exemples
--------
On remarque qu'on peut tout d'abord écrire des maths sans passer
à la ligne :math:`a^2 + b^2 = c^2` (dans un triangle rectangle),
avec la balise de texte interprété ``:math:`code math```.

Identités remarquables
~~~~~~~~~~~~~~~~~~~~~~
Mais je peux aussi utiliser la directive ``.. math::`` pour faire un
paragraphe de formules :

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
Par exemple, la formule dite d'Euler sera indiquée avec l'option
``:label:euler``.

.. math:: e^{i\pi} + 1 = 0
   :label: euler

J'aime l'équation :eq:`euler` 
(qui a été élue 'plus belle formule' de l'histoire des Mathématiques en 1991 !)
donc j'y fait référence, avec le code ``:eq:`euleur```.

On peut aussi faire comme ``$ math code $`` en ``LaTeX`` avec ``:math:`math code```.
J'ai intégré sans redoubler, donc j'ai intégré en :math:`\frac{3}{2}`
(on rappelle que :math:`\int_{0}^{2} x .dx = \frac{3}{2}`).

------------------------------------------------------------------------------

Voir aussi
----------
D'autres pages parlent de l'utilisation de **Sphinx** pour embarquer :
 * des graphiques GNU Plot :ref:`gnuplot`;
 * des graphis, écrits en **DOT Graph**, visualisés avec GraphViz, `<graph.html>`_;
 * un toplevel **Python**, `<python.html>`_;
 * un toplevel **GNU Plot**, `<ocaml.html>`_;
 * un toplevel **OCaml**, `<ocaml.html>`_.

Autres **expérimentations** : des couleurs ?
--------------------------------------------
J'utilise la balise ``.. raw:: html`` pour embarquer des définitions de 
styles (CSS) dans les fichiers **.rst** écrits pour ces pages webs.

Et j'utilise la balise ``.. role::`` pour déclarer des rôles aux différentes
couleurs : black gray silver white maroon red magenta fuchsia pink orange 
yellow lime green olive teal cyan aqua blue navy purple, et le role spécial
``u`` pour souligner.

Exemples :

 * la couleur :black:`black`;
 * la couleur :gray:`gray`;
 * la couleur :silver:`silver`;
 * la couleur :white:`white` (white);
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
###############################
 Écrire des *maths* en **rST**
###############################
.. include:: .special.rst

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

Soucis à l'importation des modules
----------------------------------
.. warning:: Ne fonctionnait plus, mais là c'est de nouveau bon...

   Le samedi 30 mars ~ 16h, cette page n'affichait plus correctement
   les codes LaTeX avec MathJax.
   Le problème venait de l'ordre d'importation des extensions **Sphinx**.
   
   Dans ``conf.py``, il y a le paragraphe : ::
   
       extensions = [ 'sphinx.ext.todo', ..., 'sphinx.ext.mathjax' ]
   
   Eh bien il se trouve que **MathJax** se désactive si on importe
   ``rst2pdf.pdfbuilder`` après ``sphinx.ext.mathjax`` !

Une syntaxe encore plus concise ?
---------------------------------
.. versionadded:: 1.9.7

Un exemple sympa
^^^^^^^^^^^^^^^^
Savoir s'il est possible d'utiliser ``\(code LaTeX inliné\)`` et
``$$code LaTeX non inliné$$`` **directement en rST** !

Et bien, testons le code *rst* suivant :

.. code-block:: rst 

   Quand \\(a > 0\\) alors il y a deux solutions à $$ax^2 + bx + c = 0$$
   et elles sont exactement 
   $$x = \\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}.$$


Ce qui donne :

Quand \\(a > 0\\) alors il y a deux solutions à $$ax^2 + bx + c = 0$$
et elles sont exactement 
$$x = \\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}.$$

.. warning:: Un léger défaut

   Avec ``$$code ... encore du code$$``, et donc aussi
   ``\(code LaTeX\)`` il *faut* échapper les
   ``\`` sinon rien ne marche.
   
   Il suffit donc d'écrire ``\\`` quand du "vrai" code \(LaTeX\)
   n'utilise que ``\``.


.. warning:: Deux syntaxes équivalents !

   Normalement, ``\[code LaTeX non inliné\]``
   devrait faire comme ``$$code LaTeX non inliné$$`` !


------------------------------------------------------------------------------

Autres **expérimentations** : des couleurs ?
--------------------------------------------
J'utilise la balise ``.. raw:: html`` pour embarquer des définitions de 
rôles dans les fichiers **.rst** écrits pour ces pages webs,
et ces rôles sont mis en relation avec des styles CSS définis dans
`.templates/layout.html <https://bitbucket.org/lbesson/web-sphinx/src/master/.templates/layout.html>`_
le template Jinja qui contrôle l'apparence et le rendu de toutes mes pages produites avec Sphinx.

Notamment, les différentes couleurs suivantes sont disponibles :
black gray silver white maroon red magenta fuchsia pink orange 
yellow lime green olive teal cyan aqua blue navy purple.

Ceci est rendu possible avec
 * `.special.rst <https://bitbucket.org/lbesson/web-sphinx/raw/master/.special.rst>`_ inclus en haut de chaque fichier rST (nécessaire)
 * `hacks.css <https://bitbucket.org/lbesson/web-sphinx/src/master/.static/hacks.css>`_ inclus dans chaque page web via les templates.

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
 * la couleur :purple:`purple`.

D'autres exemples sont disponibles là `<avoir.html>`_.

.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
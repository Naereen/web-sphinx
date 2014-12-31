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
donc j'y fait référence, avec le code ``:eq:`euler```.

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
~~~~~~~~~~~~~~~~
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

   Il suffit donc d'écrire ``\\`` quand du "vrai" code \\(\\LaTeX{}\\)
   n'utilise que ``\``.


.. warning:: Deux syntaxes équivalents !

   Normalement, ``\[code LaTeX non inliné\]``
   devrait faire comme ``$$code LaTeX non inliné$$`` !


------------------------------------------------------------------------------

Tests de plusieurs syntaxes pour MathJax
----------------------------------------
.. versionadded:: 1.9.7

En rST
~~~~~~
Normalement, on peut inclure des maths avec ``:math:`code LaTeX```
ou alors avec ``.. math:: code LaTeX sur une seule ligne``
ou enfin avec ``.. math:: \n\n    code LaTeX\n    sur plusieurs lignes``
(où ``\n`` est un sauté de ligne).

Ceci est bien détaillé dans `<math.html>`_.

.. code-block:: rst

   Quand :math:`a > 0` alors il y a deux solutions à

   .. math:: ax^2 + bx + c = 0

   et elles sont exactement

   .. math::

      x = {-b \pm \sqrt{b^2 - 4ac} \over 2a}.


Ce qui donne :

Quand :math:`a > 0` alors il y a deux solutions à

.. math:: ax^2 + bx + c = 0

et elles sont exactement

.. math::

   x = {-b \pm \sqrt{b^2 - 4ac} \over 2a}.


En HTML
~~~~~~~
Mais il semblerait qu'on puisse aussi, *en HTML*, utiliser ``\(code LaTeX\)`` (inliné)
ou ``$$code LaTeX$$`` (non inliné).
Une autre méthode est d'utiliser une balise ``<script>``
de type ``math/tex`` (un type inventé par et pour `MathJax <http://mathjax.org>`_).

.. code-block:: html

   Quand \(a > 0\) alors il y a deux solutions à
   $$ax^2 + bx + c = 0$$
   et elles sont exactement
   $$x = {-b \pm \sqrt{b^2 - 4ac} \over 2a}.$$


Ce qui donne (en incluant du HTML avec ``.. raw:: html``):

.. raw:: html

   Quand \(a > 0\) alors il y a deux solutions à
   $$ax^2 + bx + c = 0$$
   et elles sont exactement
   $$x = {-b \pm \sqrt{b^2 - 4ac} \over 2a}.$$


Ce que je voulais expérimenter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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

.. warning::

   Avec ``$$code ... encore du code$$``, et donc aussi
   ``\(code LaTeX\)`` il *faut* échapper les
   ``\`` sinon rien ne marche.

   Il suffit donc d'écrire ``\\`` quand du "vrai" code \\(\\LaTeX{}\\)
   n'utilise que ``\``.


.. warning::

   Normalement, ``\[code LaTeX non inliné\]``
   devrait faire comme ``$$code LaTeX non inliné$$`` !


:cyan:`Alors ?! Ça marche bien :)` Normalement, les trois paragraphes
(en rST avec ``:math:``, en HTML avec ``.. raw:: html`` et directement avec ``\(code LaTeX\)``)
affichent la même chose.

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/
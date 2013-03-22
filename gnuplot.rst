Des graphes avec GNU Plot
=========================

 Je teste ici la fonctionnalité "expérimentale" d'embarquer des graphes 
 écrits avec une balise ``.. gnuplot::``.

Exemples
--------

Premier, :math:`x \mapsto \sin(x)` (avec une grille mise avec ``set grid``) :

.. gnuplot::
   :title: Sinus
   
   set grid 
   plot sin(x)


Second, :math:`x \mapsto \cos(x*x+1.3)`. 
On peut forcer la taille avec l'option ``:size:`` pour la 
directive ``.. gnuplot::`` :

.. gnuplot::
   :title: Cosinus
   :size: 600,500
   
   plot cos(x*x+1.3)


Troisième, la fonction **sigmoïde** :math:`x \mapsto \frac{1}{1+\exp(-x)}`.
On peut mettre plusieurs graphiques sur une même fenêtre, 
avec la commande ``replot``, qui gère les couleurs pour pouvoir
différencier les différents graphiques :

.. gnuplot::
   :title: Sigmoide(s)
   :size: 1100,700
   
   plot 1/(1+exp(-0.25*x))
   replot 1/(1+exp(-x))
   replot 1/(1+exp(-4*x))

Tableaux
--------

On peut aussi faire des graphes, et en faire des colonnes :

+--------------------------+----------------------------+----------------------------+
| .. gnuplot::             | .. gnuplot::               | .. gnuplot::               |
|    :title: Arctangente   |    :title: Sigmoide        |    :title: Signe           |
|    :size: 400,400        |    :size: 400,400          |    :size: 400,400          |
|                          |                            |                            |
|    plot 0.5+atan(x)/pi   |    plot 1/(1+exp(-x))      |    plot 0.5*(1+sgn(x))     |
+--------------------------+----------------------------+----------------------------+
|.. centered:: Arctangente |.. centered:: Sigmoide      |.. centered:: Signe         |
+--------------------------+----------------------------+----------------------------+

Mais des fois, c'est plus commode de mettre trois graphes 
dans un seul (avec ``replot``) :

.. gnuplot::
   :title: Arctangente, Sigmoide et Signe
   :size: 1100,700

   plot 0.5+atan(x)/pi
   replot 1/(1+exp(-x))
   replot 0.5*(1+sgn(x))

En 3D
-----

.. gnuplot::
   :title: Surface
   :size: 1100,700
   
   set xrange [0:1]
   set yrange [0:1]
   splot x**4 + y**4
   replot x**2 + y**2
   replot abs(x)+abs(y)


Conclusion
----------

Ces exemples montrent un peu ce qu'on peut faire, 
très facilement, grâce aux extensions 'non-officielles' de Sphinx 
(en l'occurence, l'extension **gnuplot** dans ce cas là).

------------------------------------------------------------------------------

Espace d'expérimentation
------------------------

Pour les citations et les notes de bas de pages

Footnote
~~~~~~~~

Lorem ipsum [#f1]_ dolor sit amet ... [#f2]_

Citation
~~~~~~~~

Lorem ipsum [c1]_ dolor sit amet ... [c2]_


A la fin de la page :

----

.. rubric:: Footnotes

.. [#f1] Text of the first footnote.
.. [#f2] Text of the second footnote.

.. rubric:: Citations

.. [c1] Text of the first citation.
.. [c2] Text of the second citation.


.. include:: .bottom.fr.rst
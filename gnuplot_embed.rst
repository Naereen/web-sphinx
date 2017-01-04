##################################
 Des graphiques avec **GNU Plot**
##################################


Je teste ici la fonctionnalité "expérimentale" d'embarquer des graphiques
ou des graphes de fonctions écrits avec une directive **rST** ``.. gnuplot::``
(et ça marche très bien !).

.. seealso::

   Boucle *ripl*
      J'ai aussi intégré un boucle *ripl* dans ma page `<gnuplot.html>`_,
      qui permet de voir (*en temps réel*) la sortie graphique évoluer
      :maroon:`dès que l'entrée du toplevel change`.


.. warning::

   Si les graphes suivants ne sont pas affichés, c'est probablement
   parce que votre navigateur ne supporte pas les images ``SVG``.
   Dans ce cas, un seul conseil : adoptez **Mozilla Firefox** :) !


Exemples
--------
Sinus, simple
^^^^^^^^^^^^^
Premier, :math:`x \mapsto \sin(x)` :

.. gnuplot::
   :title: Sinus

   plot sin(x)


Cosinus, avec une grille
^^^^^^^^^^^^^^^^^^^^^^^^
Second, :math:`x \mapsto \cos(x*x+1.3)` (avec une grille mise avec ``set grid``).
On peut forcer la taille avec l'option ``:size:`` pour la
directive ``.. gnuplot::`` :

.. gnuplot::
   :title: Cosinus
   :size: 300,300

   set grid
   plot cos(x*x+1.3)


Plusieurs graphiques sur une même fenêtre
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Troisième, la fonction **sigmoïde** :math:`x \mapsto \frac{1}{1+\exp(-x)}`.

.. note:: À propos de la sigmoïde

   Cette fonction est très utilisé dans le cours de *Machine Learning*,
   que j'ai suivis au S2 de mon M1 d'info,
   en tant que **fonction de transfert pour les réseaux neuronaux**.

   Je présente donc quelques graphes de cette fonction,
   ainsi que d'autres alternatives avec l'``arctangente``
   ou la fonction ``signe``.


.. warning:: Changement de GNU Plot 4.4 à 4.6.6

   J'ai mis à jour **GNU Plot** sur ma machine le mardi 26 mars 2014,
   et la nouvelle version semble avoir brisé la rétrocompatibilité,
   notamment le comportement de la commande ``replot``.

   Avant, on pouvait mettre plusieurs graphiques sur une même fenêtre,
   avec la commande ``replot``, qui gère les couleurs pour pouvoir
   différencier les différents graphiques.


Désormais, j'utilise ``plot f1(x),f2(x)``.

.. gnuplot::
   :title: Sigmoide(s)
   :size: 1100,700

   set grid
   plot 1/(1+exp(-0.25*x)),1/(1+exp(-x)),1/(1+exp(-4*x))


Tableau(x)
----------
On peut aussi faire des graphes, et en faire des colonnes :

+--------------------------+----------------------------+----------------------------+
| .. gnuplot::             | .. gnuplot::               | .. gnuplot::               |
|    :title: Arctangente   |    :title: Sigmoide        |    :title: Signe           |
|    :size: 400,400        |    :size: 400,400          |    :size: 400,400          |
|                          |                            |                            |
|    set grid              |    set grid                |    set grid                |
|    plot 0.5+atan(x)/pi   |    plot 1/(1+exp(-x))      |    plot 0.5*(1+sgn(x))     |
+--------------------------+----------------------------+----------------------------+
|.. centered:: Arctangente |.. centered:: Sigmoide      |.. centered:: Signe         |
+--------------------------+----------------------------+----------------------------+

Mais des fois, c'est plus commode de mettre trois graphes
dans un seul (plus comme ``plot f1(x)`` puis
``replot f2(x)``, mais avec ``plot f1(x),f2(x)``) :

.. gnuplot::
   :title: Arctangente, Sigmoide et Signe
   :size: 1100,700

   set grid
   plot 0.5+atan(x)/pi,1/(1+exp(-x)),0.5*(1+sgn(x))


En 3D : une surface
-------------------
.. gnuplot::
   :title: Surface
   :size: 1200,700

   set xrange [0:1]
   set yrange [0:1]
   splot x**4 + y**4, abs(x)+abs(y)


Une seconde surface
-------------------
.. gnuplot::
   :title: 3D gnuplot demo - contour plot on base grid
   :size: 1200,700

   set view 60, 30, 0.85, 1.1
   set samples 20, 20
   set isosamples 21, 21
   set contour base
   set cntrparam levels auto 10
   set xlabel "X axis"
   set ylabel "Y axis"
   set zlabel "Z axis"
   set zlabel  offset character 1, 0, 0 font "" textcolor lt -1 norotate
   splot x**2-y**2


Un dernier exemple
------------------
Inspiré de `ce script <http://gnuplot.sourceforge.net/demo/fillcrvs.6.gnu>`_.

.. gnuplot::
   :title: Let's smile with parametric filled curves
   :size: 1200,700

   unset border
   set dummy t,y
   set grid nopolar
   set grid xtics nomxtics ytics nomytics noztics nomztics \
   nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
   set grid layerdefault   linetype 0 linewidth 1.000,  linetype 0 linewidth 1.000
   unset key
   set label 1 "gnuplot" at 0, 1.2, 0 centre norotate front nopoint offset character 0, 0, 0
   set label 2 "gnuplot" at 0.02, -0.6, 0 centre norotate front nopoint offset character 0, 0, 0
   set arrow 1 from -0.1, 0.26, 0 to 0.18, -0.17, 0 head front nofilled linetype 5 linecolor rgb "#f0e442"  linewidth 4.000 size first 0.100,40.000,90.000
   set parametric
   set size ratio 1 1,1
   set noxtics
   set noytics
   set xrange [ -1.00000 : 1.00000 ] noreverse nowriteback
   set yrange [ -1.00000 : 1.60000 ] noreverse nowriteback
   plot [t=-pi:pi] 	sin(t),cos(t) with filledcurve xy=0,0 lt 15,		sin(t)/8-0.5,cos(t)/8+0.4 with filledcurve lt 3,		sin(t)/8+0.5,cos(t)/8+0.4 with filledcurve lt 3,		t/5,abs(t/5)-0.8 with filledcurve xy=0.1,-0.5 lt 1, 	t/3,1.52-abs(t/pi) with filledcurve xy=0,1.8 lt -1


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
^^^^^^^^
Lorem ipsum [#f1]_ dolor sit amet ... [#f2]_.
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Citation
^^^^^^^^
Lorem ipsum [c1]_ dolor sit amet ... [c2]_.
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


------------------------------------------------------------------------------

A la fin de la page :
^^^^^^^^^^^^^^^^^^^^^

.. rubric:: Footnotes

.. [#f1] Texte de la première note de bas de page.
.. [#f2] Texte de la seconde note de bas de page.

.. rubric:: Citations

.. [c1] Texte de la première citation.
.. [c2] Texte de la seconde citation.


.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

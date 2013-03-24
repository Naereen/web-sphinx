#############################
Des graphes DOT avec GraphViz
#############################

Des graphes ?
-------------
 Je teste ici la fonctionnalité "expérimentale" d'embarquer des **graphes** 
 écrits avec une balise ``.. graphviz::``, et censés être rendus avec ``GraphViz``.

 Cette directive ``graphviz`` utilise le langage **DOT Graph** de description
 de graphe (dirigé ou non). Ce langage est un standard dans le monde 
 informatique : ingénieurs, chercheurs, enseignants, tous l'utilisent !

.. warning::

   Si les graphes suivants ne sont pas affichés, c'est probablement
   parce que votre navigateur ne supporte pas les images ``SVG``.
   Dans ce cas, un seul conseil : adoptez **Mozilla Firefox** :) !

   Une autre raison possible est un soucis du **serveur Apache**
   qui héberge ces pages.


Exemples
--------
``.. graphviz::``:
~~~~~~~~~~~~~~~~~~
**Sphinx** permet de réaliser la transformation suivante :

.. graphviz::

   digraph Sphinx {
      "fichiers texte (.rst)" -> "pages web (.html)";
   }


``.. digraph::``:
~~~~~~~~~~~~~~~~~
**Sphinx autodoc** permet de réaliser la transformation suivante :

.. digraph:: autodoc

   ".py" -> ".rst" -> ".html";


``.. graph::``:
~~~~~~~~~~~~~~~
**pdflatex** permet de réaliser la transformation suivante :

.. graph:: latex

   ".tex" -- ".pdf";


**HeVeA** permet de réaliser la transformation suivante :

.. graph:: hevea

   ".tex" -- ".html" -- ".htoc";


``.. graphviz::``
~~~~~~~~~~~~~~~~~
 On peut aussi aller chercher un fichier externe.
 Voici par exemple un graphe de dépendances (pour mon prjoet réseau)
 généré via ``pyreverse``, et inclus via ``.. graphviz:: graph1.dot``
 (le fichier est `<graph1.dot>`_).

.. graphviz:: graph1.dot

------------------------------------------------------------------------------

Cette page permet aussi de tester la fonctionnalité ajouté par l'extension
*non-officielle* ``sphinx.ext.todolist``.
Cette extension ajoute une directive ``.. todo::`` qui permet de déclarer
un **TODO**, *i.e.* une chose à régler.

.. todo::
   
   Chercher a diminuer l'échelle du graphe embarqué par le fichier d'exemple.


Et ensuite, il est possible d'afficher une **liste des TODOs** via la directive
``.. totolist::``, comme par exemple dans la page `todo <todo.html>`_.

.. todo::
   
   Comprendre pourquoi les **.svg** sont bien rendus sur ``perso.crans.org``
   mais pas sur ``www.dptinfo.ens-cachan.fr``.

.. todo::
   
   Trouver un butineur Android qui affiche bien les **SVG**.

.. include:: .bottom.fr.rst
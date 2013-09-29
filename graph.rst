###################################
 Des graphes DOT avec **GraphViz**
###################################
.. include:: .special.rst

Des graphes ?
-------------
Je teste ici la fonctionnalité "expérimentale" d'embarquer des **graphes** 
écrits avec une balise ``.. graphviz::``, et censés être rendus avec 
`GraphViz <http://www.graphviz.org/>`_.

Cette directive ``graphviz`` utilise le langage **DOT Graph** de description
de graphe (dirigé ou non). Ce langage est un standard dans le monde 
informatique : ingénieurs, chercheurs, enseignants, tous l'utilisent !

.. warning::

   Si les graphes suivants ne sont pas affichés, c'est probablement
   parce que votre navigateur ne supporte pas les images ``SVG``.
   Dans ce cas, un seul conseil : adoptez **Mozilla Firefox** :) !


Exemples
--------
``.. graphviz::``:
~~~~~~~~~~~~~~~~~~
**Sphinx** permet de réaliser la transformation suivante :

.. graphviz::

   digraph Sphinx {
      "fichiers texte (.rst)" -> "pages web (.html)";
      "fichiers texte (.rst)" -> "pages de manuel (.1)";
      "fichiers texte (.rst)" -> "fichiers LaTeX (.tex)";
      "fichiers texte (.rst)" -> "pages web (.epub)";
   }


``.. digraph::``:
~~~~~~~~~~~~~~~~~
Cette directive sert à décrire des graphes **dirigés**.

**Sphinx autodoc** et mon script ``pytorst.py`` permettent 
de réaliser la transformation suivante :

.. digraph:: autodoc

   ".py" -> ".rst" -> ".html";

``.. graph::``:
~~~~~~~~~~~~~~~
Cette directive sert à décrire des graphes **non-dirigés**.

**LaTeX**
^^^^^^^^^
**pdflatex** permet de réaliser la transformation suivante
(avec comme exemple mon CV écrit en **LaTeX**) :

.. graph:: latex

   "fichier LaTeX" -- "fichier PDF"
   ".tex" -- ".pdf";
   "cv.tex" -- "cv.pdf";

**HeVeA** permet de réaliser la transformation suivante
(avec comme exemple mon CV écrit en **LaTeX**) :

.. graph:: hevea

   "fichier LaTeX" -- "page web (HTML)"
   ".tex" -- ".html";
   "cv.tex" -- "cv.hevea.html";

Les Hautes-Alpes
^^^^^^^^^^^^^^^^
Je suis né et j'ai vécu dans les *Hautes-Alpes* jusqu'à mes **16 ans**,
avant de partir étudier au Lycée Thiers de Marseille.

Dans les Hautes-Alpes, il y a notamment les villes suivantes :

.. graph:: alpes
   
   "Bri" [color="red", style="bold", label="Briançon"];
   "Veynes" -- "Gap" -- "Chorges" -- "Embrun" -- "Mont-Dauphin" -- "L'Argentière" -- "Bri";
   "Mont-Dauphin" -- "Guillestre";
   "L'Argentière" -- "Valouise" -- "Puit St-Vincent";
   "Bri" -- "Montgenèvre";
   "Embrun" -- "Les Orres";

Un fichier externe
~~~~~~~~~~~~~~~~~~
On peut aussi aller chercher un *fichier externe*.
Voici par exemple un graphe de dépendances (pour mon projet réseau)
généré via ``pyreverse``, et inclus via ``.. graphviz:: .graph.dot``
(le fichier est **.graph.dot**).

.. graphviz:: .graph.dot

------------------------------------------------------------------------------

Extension ``sphinx.ext.todolist``
---------------------------------
Cette page permet aussi de tester la fonctionnalité ajouté par l'extension
*non-officielle* ``sphinx.ext.todolist``.
Cette extension ajoute une directive ``.. todo::`` qui permet de déclarer
un **TODO**, *i.e.* une chose à régler.

.. todo:: Chercher a diminuer l'échelle du graphe embarqué par le fichier d'exemple.

Et ensuite, il est possible d'afficher une **liste des TODOs** via la directive
``.. totolist::``, comme dans la page `todo <todo.html>`_.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
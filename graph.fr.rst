.. meta::
   :description lang=en: Embed a DOT graph with GraphViz in a Sphinx-generated page
   :description lang=fr: Inclure des graphes DOT avec GraphViz dans une page Sphinx

###################################
 Des graphes DOT avec **GraphViz**
###################################
.. include:: .special.rst

Des graphes ?
-------------
Je teste ici la fonctionnalité "expérimentale" d'embarquer des **graphes**
écrits avec une balise ``.. graphviz::``, et censés être rendus avec
`GraphViz <http://www.graphviz.org/>`_.

Cette fonctionnalité est ajoutée par l'extension `sphinx.ext.graphviz <http://sphinx-doc.org/ext/graphviz.html>`_,
incluse par défaut dans `sphinx <http://sphinx-doc.org/>`_ depuis sa version ``0.6``.

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

**Sphinx autodoc** (et un script comme `pytorst.py <./bin/pytorst.sh>`_)
permettent de réaliser la transformation suivante :

.. digraph:: autodoc

   ".py" -> ".rst" -> ".html";


``.. graph::``:
~~~~~~~~~~~~~~~
Cette directive sert à décrire des graphes **non-dirigés**.

**LaTeX**
^^^^^^^^^
**pdflatex** permet de réaliser la transformation suivante
(avec comme exemple `mon CV <cv.fr.pdf>`_ écrit en **LaTeX**) :

.. graph:: latex

   "fichier LaTeX" -- "fichier PDF"
   ".tex" -- ".pdf";
   "cv.fr.tex" -- "cv.fr.pdf";


**HeVeA** permet de réaliser la transformation suivante :

.. graph:: hevea

   "fichier LaTeX" -- "page web (HTML)"
   ".tex" -- ".html";
   "cv.tex" -- "cv.hevea.html";


Les Hautes-Alpes
^^^^^^^^^^^^^^^^
Je suis né et j'ai vécu à :red:`Briançon`,
dans les *Hautes-Alpes* jusqu'à mes **16 ans**,
avant de partir étudier au Lycée Thiers de Marseille.

Dans les Hautes-Alpes, il y a notamment les villes suivantes
(un arc signifie que les deux villes sont dans la même vallée,
*ie.* reliées entre elles par une rivière !) :

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
Voici par exemple un graphe de dépendances (pour `un vieux jeu en réseau écrit en 2012 <./publis/Bomberman/>`_)
généré via `pyreverse <https://www.logilab.org/2560>`_, et inclus via ``.. graphviz:: .graph.dot``
(le fichier s'appelle **.graph.dot**).

.. warning:: Soucis de zoom pour ce graphe...

.. graphviz:: .graph.dot

------------------------------------------------------------------------------

Utiliser ceci pour la doc de scipy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Pour le module `scipy.sparse.csgraph <https://github.com/scipy/scipy/blob/master/scipy/sparse/csgraph/__init__.py>`_ du projet `scipy <http://scipy.org>`_,
la page principale de `documentation <http://docs.scipy.org/doc/scipy/reference/sparse.csgraph.html#module-scipy.sparse.csgraph>`_
utilise deux petits graphes comme exemples, qui étaient montrés en ASCII au début, mais nous avons ajouté deux fichiers SVG à la place (c'est moins moche !).

`J'avais ouvert ce ticket (#5344) <https://github.com/scipy/scipy/issues/5344>`_, et `ce commentaire est aussi relié <https://github.com/scipy/scipy/commit/5e243220af15398d57a678869d52550890d9192d#commitcomment-13705121>`_.

------------------------------------------------------------------------------

Un autre extension : ``sphinx.ext.todolist``
--------------------------------------------
Cette page permet aussi de tester la fonctionnalité ajouté par l'extension
`sphinx.ext.todolist <http://sphinx-doc.org/ext/todo.html>`_.
Cette extension ajoute une directive ``.. todo::`` qui permet de déclarer
un **TODO**, *i.e.* une chose à régler.

.. todo:: Chercher a diminuer l'échelle du graphe embarqué par le fichier d'exemple.

Et ensuite, il est possible d'afficher une **liste des TODOs** via la directive
``.. totolist::``, comme dans la page `todo <todo.html>`_.

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

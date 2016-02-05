.. meta::
   :description lang=en: Embed a DOT graph with GraphViz in a Sphinx-generated page
   :description lang=fr: Inclure des graphes DOT avec GraphViz dans une page Sphinx

###################################
 Des graphes DOT avec **GraphViz**
###################################


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
utilise deux petits graphes comme exemples, qui étaient montrés en ASCII au début, ainsi je voulais ajouter deux fichiers SVG à la place.

`J'avais ouvert ce ticket (#5344) <https://github.com/scipy/scipy/issues/5344>`_, et `ce commentaire est aussi relié <https://github.com/scipy/scipy/commit/5e243220af15398d57a678869d52550890d9192d#commitcomment-13705121>`_.
`La demande d'ajout (#5345) n'était pas satisfaisante <https://github.com/scipy/scipy/pull/5345>`_ : le fichier SVG inclus dans la page rST ne fonctionne pas pour une sortie PDF ni pour l'inspection de la docstring (avec IPython ou autre).

Graphe G1 :

.. raw:: html

   <!-- Title: Graphe G1 Pages: 1 -->
   <svg width="134pt" height="131pt"
    viewBox="0.00 0.00 134.00 131.00" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
   <g id="graph0" class="graph" transform="scale(1 1) rotate(0) translate(4 127)">
   <title>Graph G1</title>
   <polygon fill="white" stroke="none" points="-4,4 -4,-127 130,-127 130,4 -4,4"/>
   <!-- 0 -->
   <g id="node1" class="node"><title>0</title>
   <ellipse fill="none" stroke="black" stroke-width="2" cx="63" cy="-105" rx="27" ry="18"/>
   <text text-anchor="middle" x="63" y="-101.3" font-family="Times,serif" font-size="14.00">0</text>
   </g>
   <!-- 1 -->
   <g id="node2" class="node"><title>1</title>
   <ellipse fill="none" stroke="black" stroke-width="2" cx="27" cy="-18" rx="27" ry="18"/>
   <text text-anchor="middle" x="27" y="-14.3" font-family="Times,serif" font-size="14.00">1</text>
   </g>
   <!-- 0&#45;&#45;1 -->
   <g id="edge2" class="edge"><title>0&#45;&#45;1</title>
   <path fill="none" stroke="black" d="M55.8876,-87.2067C49.5353,-72.2083 40.2853,-50.368 33.9752,-35.4692"/>
   <text text-anchor="middle" x="51.5" y="-57.8" font-family="Times,serif" font-size="14.00">2</text>
   </g>
   <!-- 2 -->
   <g id="node3" class="node"><title>2</title>
   <ellipse fill="none" stroke="black" stroke-width="2" cx="99" cy="-18" rx="27" ry="18"/>
   <text text-anchor="middle" x="99" y="-14.3" font-family="Times,serif" font-size="14.00">2</text>
   </g>
   <!-- 0&#45;&#45;2 -->
   <g id="edge1" class="edge"><title>0&#45;&#45;2</title>
   <path fill="none" stroke="black" d="M70.1124,-87.2067C76.4647,-72.2083 85.7147,-50.368 92.0248,-35.4692"/>
   <text text-anchor="middle" x="86.5" y="-57.8" font-family="Times,serif" font-size="14.00">1</text>
   </g>
   </g>
   </svg>


Graphe G2 :

.. raw:: html

   <!-- Title: Graphe G2 Pages: 1 -->
   <svg width="134pt" height="131pt"
    viewBox="0.00 0.00 134.00 131.00" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
   <g id="graph0" class="graph" transform="scale(1 1) rotate(0) translate(4 127)">
   <title>Graph G2</title>
   <polygon fill="white" stroke="none" points="-4,4 -4,-127 130,-127 130,4 -4,4"/>
   <!-- 0 -->
   <g id="node1" class="node"><title>0</title>
   <ellipse fill="none" stroke="black" stroke-width="2" cx="63" cy="-105" rx="27" ry="18"/>
   <text text-anchor="middle" x="63" y="-101.3" font-family="Times,serif" font-size="14.00">0</text>
   </g>
   <!-- 1 -->
   <g id="node2" class="node"><title>1</title>
   <ellipse fill="none" stroke="black" stroke-width="2" cx="27" cy="-18" rx="27" ry="18"/>
   <text text-anchor="middle" x="27" y="-14.3" font-family="Times,serif" font-size="14.00">1</text>
   </g>
   <!-- 0&#45;&#45;1 -->
   <g id="edge2" class="edge"><title>0&#45;&#45;1</title>
   <path fill="none" stroke="black" d="M55.8876,-87.2067C49.5353,-72.2083 40.2853,-50.368 33.9752,-35.4692"/>
   <text text-anchor="middle" x="51.5" y="-57.8" font-family="Times,serif" font-size="14.00">2</text>
   </g>
   <!-- 2 -->
   <g id="node3" class="node"><title>2</title>
   <ellipse fill="none" stroke="black" stroke-width="2" cx="99" cy="-18" rx="27" ry="18"/>
   <text text-anchor="middle" x="99" y="-14.3" font-family="Times,serif" font-size="14.00">2</text>
   </g>
   <!-- 0&#45;&#45;2 -->
   <g id="edge1" class="edge"><title>0&#45;&#45;2</title>
   <path fill="none" stroke="red" d="M70.1124,-87.2067C76.4647,-72.2083 85.7147,-50.368 92.0248,-35.4692"/>
   <text text-anchor="middle" x="86.5" y="-57.8" font-family="Times,serif" font-size="14.00">0</text>
   </g>
   </g>
   </svg>

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


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

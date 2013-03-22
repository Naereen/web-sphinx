Embarquer des graphes DOT avec rST
==================================

rST ?
-----

 Je génère ces pages web à partir de document écrits en **reStructuredText**,
 un petit langage à balise inventé pour le projet `docutils <http://docutils.sourceforge.net/>`_,
 et j'utilise l'outil `sphinx <http://sphinx-doc.org>`_ pour transformer ces pages ``rST`` en ``HTML``.

Des graphes ?
-------------

 Je teste ici la fonctionnalité "expérimentale" d'embarquer des **graphes** 
 écrits avec une balise ``.. graphviz::``, et censées être rendues avec Graphviz.

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


``.. graphviz::``
~~~~~~~~~~~~~~~~~

 On peut aussi aller chercher un fichier externe.
 Voici par exemple un graphe de dépendances (pour mon prjoet réseau)
 généré via ``pyreverse`` :

.. graphviz:: graph1.dot

----

.. todo::
   
   Chercher a diminuer l'échelle du graphe embarqué par le fichier d'exemple.

.. todo::
   
   Comprendre pourquoi les **.svg** sont bien rendus sur ``perso.crans.org``
   mais pas sur ``www.dptinfo.ens-cachan.fr``.

.. include:: .bottom.fr.rst
.. meta::
   :description lang=en: Embed a DOT graph with GraphViz in a Sphinx-generated page
   :description lang=fr: Inclure des graphes DOT avec GraphViz dans une page Sphinx

#############################################
 HOW-TO: Embed a DOT graph with **GraphViz**
#############################################
.. include:: .special.rst

Graphes?
--------
I am showing here an "experimental" Sphinx feature, to easily embed **graphs**
written in plain text with a rST tag ``.. graphviz::``, and converted to nice 
images with the world-famous software `GraphViz <http://www.graphviz.org/>`_.

This feature is provided by the `sphinx.ext.graphviz <http://sphinx-doc.org/ext/graphviz.html>`_ extension,
included by default in `sphinx <http://sphinx-doc.org/>`_ since its version ``0.6``.

This directive ``graphviz`` uses the **DOT Graph** language to describe
a graph (directed or not). This language is a world-standard in Computer Science,
everyone uses it: engineers, researchers, professors etc.

.. warning::

   If the following graphs are not well displayed, that is probably
   because your browser does not support the ``SVG`` format.
   Try to use **Mozilla Firefox** instead.


Examples
--------
``.. graphviz::``:
~~~~~~~~~~~~~~~~~~
**Sphinx** is a software than basically implements these conversion steps:

.. graphviz::

   digraph Sphinx {
      "rST text files (.rst)" -> "web pages (.html)";
      "rST text files (.rst)" -> "man pages (.1)";
      "rST text files (.rst)" -> "LaTeX files (.tex)";
      "rST text files (.rst)" -> "web pages (.epub)";
   }


``.. digraph::``:
~~~~~~~~~~~~~~~~~
We can also write **directed graphs**.

For instance **Sphinx autodoc** (and a script like `pytorst.py <./bin/pytorst.sh>`_)
implements this conversion step:

.. digraph:: autodoc

   "Python file (.py)" -> "rST text file (.rst)" -> "web pages (.html)";


``.. graph::``:
~~~~~~~~~~~~~~~
This directive is for **non-directed** graphs.

**LaTeX**
^^^^^^^^^
**pdflatex** implements this conversion
(for example with `my resume <cv.en.pdf>`_, written in **LaTeX**):

.. graph:: latex

   "LaTeX file" -- "PDF file"
   ".tex" -- ".pdf";
   "cv.en.tex" -- "cv.en.pdf";


**HeVeA** does another transformation:

.. graph:: hevea

   "LaTeX file" -- "web page (HTML)"
   ".tex" -- ".html";
   "cv.tex" -- "cv.hevea.html";


The "Hautes-Alpes" region in France
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
I was born and I grew up in :red:`Briançon`,
in the *Hautes-Alpes*, until I was **16**,
before leaving to study at the Lycée Thiers in Marseille.

In the *Hautes-Alpes*, the main cities are the following
(an edge means that the two towns are in the same valley
*ie.* connected with a river!):

.. graph:: alpes

   "Bri" [color="red", style="bold", label="Briançon"];
   "Veynes" -- "Gap" -- "Chorges" -- "Embrun" -- "Mont-Dauphin" -- "L'Argentière" -- "Bri";
   "Mont-Dauphin" -- "Guillestre";
   "L'Argentière" -- "Valouise" -- "Puit St-Vincent";
   "Bri" -- "Montgenèvre";
   "Embrun" -- "Les Orres";


An external file
~~~~~~~~~~~~~~~~
This rST command can also automatically fetch an *external file*.
For instance here is a dependance graph
(for `an old network game project I wrote in 2012 <./publis/Bomberman/>`_)
generated via `pyreverse <https://www.logilab.org/2560>`_, and included here with ``.. graphviz:: .graph.dot``
(the file is called **.graph.dot**).

.. warning:: This graph is not correctly scaled...

.. graphviz:: .graph.dot

------------------------------------------------------------------------------

Another extension: ``sphinx.ext.todolist``
------------------------------------------
This page also tests the feature provided by the `sphinx.ext.todolist <http://sphinx-doc.org/ext/todo.html>`_ extension.
This extension adds a directive ``.. todo::`` which allows to add a **TODO**, *i.e.* one thing to do, to fix or to work on.

.. todo:: For example, try to reduce the zoom factor of the last graph embedded above.

And then, you can display a **TODO list** with the directive
``.. totolist::``, like I do in the `<todo.html>`_ page.

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

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

Using this for the scipy doc
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For `scipy <http://scipy.org>`_ `scipy.sparse.csgraph <https://github.com/scipy/scipy/blob/master/scipy/sparse/csgraph/__init__.py>`_ module,
its `documentation <http://docs.scipy.org/doc/scipy/reference/sparse.csgraph.html#module-scipy.sparse.csgraph>`_
shows two small graphs, initially written in ASCII, but I wanted to try to add nice SVG files instead.

`I opened the issue (#5344) <https://github.com/scipy/scipy/issues/5344>`_, `this comment is related also <https://github.com/scipy/scipy/commit/5e243220af15398d57a678869d52550890d9192d#commitcomment-13705121>`_.
`This pull request (#5345) was not interesting <https://github.com/scipy/scipy/pull/5345>`_: the raw SVG included in the rST page is not working for PDF output neither docstring inspection (with IPython or other).

Graph G1:

.. raw:: html

   <!-- Title: Graph G1 Pages: 1 -->
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


Graph G2:

.. raw:: html

   <!-- Title: Graph G2 Pages: 1 -->
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

Another extension: ``sphinx.ext.todolist``
------------------------------------------
This page also tests the feature provided by the `sphinx.ext.todolist <http://sphinx-doc.org/ext/todo.html>`_ extension.
This extension adds a directive ``.. todo::`` which allows to add a **TODO**, *i.e.* one thing to do, to fix or to work on.

.. todo:: For example, try to reduce the zoom factor of the last graph embedded above.

And then, you can display a **TODO list** with the directive
``.. totolist::``, like I do in the `<todo.html>`_ page.

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

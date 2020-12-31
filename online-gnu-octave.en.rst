.. meta::
   :description lang=en: HOWTO: Use GNU Octave in your browser
   :description lang=fr: Utiliser GNU Octave dans son navigateur

#######################################
 HOWTO: Use GNU Octave in your browser
#######################################

This short article explains two ways to use `GNU Octave <https://octave.org/>`_,
the `world-famous free and open-source software <https://www.gnu.org/software/octave/>`_,
the most serious alternative to `MATLAB <https://en.wikipedia.org/wiki/MATLAB>`_
(`SciLab <https://www.scilab.org>`_ is also a good `FOSS <https://en.wikipedia.org/wiki/Free_and_open_source_software>`_ alternative, if you are interested).

Both solutions are free to use, and should work on any modern browser (desktop for sure, mobile not so much).

`octave-online.net <http://octave-online.net/>`_
------------------------------------------------
A pretty good web-application, kinda *ugly styled*, but work really well.
The script or the figures can be saved on your desktop if neeeded.

`nclab.com <https://www.nclab.com>`_
------------------------------------
They offer quite a lot of `free to use web-applications <https://nclab.com/login-free>`_,
and Octave is one of them: `Octave on NClab.com <https://desktop.nclab.com/viewer/518443ea1f2c438da71852f83a23e7e9>`_.
It also work pretty well!

.. seealso:: They also offer `LaTeX editing <https://desktop.nclab.com/viewer/472c63697aa944088cc8d40113b29c8b>`_, `R coding <https://desktop.nclab.com/viewer/22a11d1b28614676bfe24977598e7712>`_, `Javascript coding <https://desktop.nclab.com/viewer/25968f5006f7410d96298b87a9b99683>`_, and `Python coding <https://desktop.nclab.com/viewer/7d5b7f1dfbea4bd59595768ef70e031e>`_.
.. warning:: The links to their webapp could change, so if it is broken, you can find it on their `web-applications page <https://nclab.com/login-free>`_.

`SAGE Cell <https://sagecell.sagemath.org/static/about.html>`_
--------------------------------------------------------------
SAGE cells are a component of the SAGE project, which allow to embed an editor for different languages, one being GNU Octave, directly in a web page:

.. html::

    <iframe scr="https://sagecell.sagemath.org/?z=eJxLSSxJVLBVSC7NLS7N1ShKzEvJ0zA00FEw1NTkKsjJL9FIASrQBADxIQv5&lang=octave&interacts=eJyLjgUAARUAuQ==" allowtransparency="true" frameborder="0" scrolling="0" width="1000" height="400"></iframe>

By following `the instructions to embed it <https://sagecell.sagemath.org/static/about.html>`_.
Thanks to `Harald Shilly <http://harald.schil.ly/>`_ for sharing this link with me!

`cocalc.com <https://cocalc.com/>`_
-----------------------------------
Propose `an online editor for Octave <https://cocalc.com/doc/octave.html>`_.

---------------------------------------------------------------------

Other online interpreters?
--------------------------
I tried to find an easy-to-install Octave interpreter in Javascript (to embed on a webpage here), but found none.
I will keep looking once in a while, and I ever find one, it will be included here.

In the mean time, did you know that there is already two online interpreters on my website, `one for Python <https://www.python.org/>`_, `one for OCaml <https://ocaml.org/>`_ and `one for GNU Plot <http://gnuplot.info/>`_ ?

.. seealso:: `Python (v2.7) online interpreter <skulpt.html>`_, on *my* website, and even `another one for Python <python.html>`_.
.. seealso:: `OCaml (v3.12) online interpreter <ocaml.fr.html>`_, on *my* website.
.. seealso:: `GNU Plot (v4.6.6) online interpreter <gnuplot.html>`_, on *my* website.

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

Web Pages Sphinx
================

The new generation of my web pages, generated with Sphinx.
Currently this *projet* is in version 1.7 !

Where are those pages ?
-----------------------

### On line :
 * [perso.crans.org/besson](<http://perso.crans.org/besson/> "Check this one !") ;
 * [www.dptinfo.ens-cachan.fr/~lbesson](<http://www.dptinfo.ens-cachan.fr/~lbesson/> "And this one too !") .

About
-----

Some pages host my résumé, others are just experiments.
A few pages talks about some point I am interesting on.

Other repo
----------

To limit the size of this one, I used an other repo to store
the scripts/ folder : [web-sphinx-scripts](<https://bitbucket.org/lbesson/web-sphinx-scripts/> "Hehe").

This second repo mainly hosts some Javascript scripts 
(GNU Plot & OCaml & Python toplevel, shortcuts.js, simpletrailimage.js), 
and also a **complete** Python distribution, 
used with python.opt.js to embed a Python toplevel in my web pages (I know, it's useless, but so funny !).

----

### Author:
Lilian Besson.

### Languages:
 * reStructuredText (mainly)
 * Jinja Templating (for changing appearance of the web pages)
 * Javascript (for some interactive stuff)
 * Python (for Sphinx parametring)

----

Requirements ?
--------------

This project use the following software :

 * Python 2.7+;
 * LaTeX (pdflatex & hevea);
 * GNU Make;
 * git;
 * rsynx (or scp);
 * ack-grep or grep;
 * Sphinx (v1+);
 * GNU Plot & GNU Octave;
 * GNU PG (OpenPGP);
 * GraphViz & Dot graph;
 * rst2pdf, rst2html, rst2s5;
 * and the following Sphinx contrib extensions :

    * cheeseshop;
    * gnuplot;
    * autorun;
    * graphviz;

 * (optional) ocaml, octave, to embed examples.

License
-------

This project is released under the **GPLv3 license**, for more details,
take a look at the LICENSE file in the source.
*Basically, that allow you to use all or part of the project for you own business.*

Web Pages Sphinx
================

The new generation of my web pages, generated with [Sphinx](<http://sphinx-doc.org>) v*1.2b2*.
Currently this *projet* is in version *1.9.7* (*public* release) !

Where are those pages ?
-----------------------

### On line :
 * [perso.crans.org/besson](<http://perso.crans.org/besson/> "Check this one !") ;
 * [www.dptinfo.ens-cachan.fr/~lbesson](<http://www.dptinfo.ens-cachan.fr/~lbesson/> "And this one too !") .
 * [jarvis.crans.org/](<http://jarvis.crans.org/> "On my own machine") for test only (and only from the crans local network) ;

About
-----

Some pages host my résumé, others are just experiments, about Sphinx and many other things.
A few pages talk about some points I am interesting on (GNU Nano, gedit, Pokémon etc)...

Other repos
-----------

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
 * LaTeX (pdflatex, and hevea);
 * Gnu Make (other versions of Make should *NOT* work);
 * git (not required);
 * rsynx (or scp);
 * ack-grep or grep;
 * Sphinx (v1.2+);
 * GnuPlot and Gnu Octave;
 * GnuPG;
 * GraphViz, Dot graph;
 * rst2pdf, rst2html, rst2s5 (included in the docutils package);
 * and the following Sphinx contrib extensions :

    * cheeseshop;
    * gnuplot;
    * autorun;
    * graphviz;

 * (optional) ocaml, octave, to embed examples;
 * many others, but cannot list them all.

License
-------

This project is released under the **GPLv3 license**, for more details,
take a look at the [LICENSE file](http://besson.qc.to/LICENSE.html) in the source.

*Basically, that allow you to use all or part of the project for you own business.*

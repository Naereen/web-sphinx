# Web Pages Sphinx
The new generation of my web pages, generated with [Sphinx](<http://sphinx-doc.org>) v*1.4a0+*.
Currently this *projet* is in version *2.5* (*public* release) !

## Where are those pages ?

### On line :
 * [perso.crans.org/besson](<http://perso.crans.org/besson/> "Check this one !") ;
 * [www.dptinfo.ens-cachan.fr/~lbesson](<http://www.dptinfo.ens-cachan.fr/~lbesson/> "And this one too !") is now just a redirection to the precedent one.

## About
Some pages host my résumé, others are just experiments, about Sphinx and many other things.
A few pages talk about some points I am interesting to (GNU Nano, Sublime Text 3, Firefox, hitch-hiking, maths, Pokémon etc)...

## Other repos
To limit the size of this one, I used an other repo to store
the scripts/ folder : [web-sphinx-scripts](<https://bitbucket.org/lbesson/web-sphinx-scripts/> "Hehe").

This second repo mainly hosts some Javascript scripts
(GNU Plot & OCaml & Python toplevel, `shortcuts.js`, `simpletrailimage.js` etc),
and also a **complete** Python distribution,
used with python.opt.js to embed a Python toplevel in my web pages (I know, it's useless, but so funny !).

----

### Author
© Lilian Besson, 2011-2016.

### Languages
 * reStructuredText (mainly, for the content of the pages),
 * Jinja Templating (for changing appearance of the web pages),
 * Javascript (for some interactive stuff),
 * CSS (for styling),
 * HTML5 (to include a few web components in some pages),
 * Python (for Sphinx parametring),
 * And probably another I forgot!

----

## Requirements ?

This project use the following software :

 * Python 2.7+;
 * Python Sphinx (v1.2+);
 * GNU Make (other versions of Make should *NOT* work);
 * LaTeX (pdflatex, and hevea) (*not* required for building html);
 * git (not required for building);
 * rsync (or scp), for uploading;
 * ack-grep (or grep);
 * GnuPlot (but not Gnu Octave);
 * GnuPG (pgp);
 * GraphViz and Dot graph;
 * rst2pdf, rst2html, rst2s5 (included in the docutils package) (*not* required for building html);
 * and the following Sphinx contrib extensions :

    * cheeseshop;
    * gnuplot;
    * autorun;
    * graphviz;
    * youtube;
    * many other, see [the conf.py](conf.py) file.

 * (optional) ocaml, octave, to embed examples;
 * many others, but cannot list them all.

## License
This project is released under the **GPLv3 license**, for more details,
take a look at the [LICENSE file](http://besson.qc.to/LICENSE.html) in the source.

*Basically, that allow you to use all or part of the project for you own business.*

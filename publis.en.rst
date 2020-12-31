.. meta::
   :description lang=en: Description of publications in folder publis/
   :description lang=fr: Page décrivant les publications du dossier publis/

####################################################
 Description of publications in folder `<publis/>`_
####################################################

About this page
---------------
This page describes all the tiny (and less tiny) technical projects published in the folder `<publis/>`_.

This folder contains a lot of small productions (softwares, scripts, configuration etc); and some of my more serious projects.

.. sidebar:: Go back to the homepage?

   If this page has no interest for you, please go back to the main page `<index.html>`_.


.. note:: Conditions of distribution

   Every file or projects listed here is *freely* and *publicly* distributed, under the conditions of the `GPLv3 license <LICENSE.html>`_!

---------------------------------------------------------------------

Main projects
-------------
Here is a list of the main projects published in the folder `<publis/>`_, ordered by importance.

`ansicolortags <publis/ansicolortags/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. pypi-release:: ansicolortags
   :prefix: The latest version is here (the cheeseshop Sphinx extension should add a link to the zip file of the project)
   :class: sidebar

**ansicolortags** is a small `Python <python.html>`_ module, supporting both version 2 (2.7+) and 3 (3.4+),
designed to easily and efficiently use ``ANSI`` colors
in a terminal application from Python, on **UNIX** or **Linux** (or on **Windows via Cygwin**, or on **Mac OS X**).

.. image::  https://badge.fury.io/py/ansicolortags.svg
   :target: https://pypi.org/project/ansicolortags
.. image::  https://readthedocs.org/projects/ansicolortags/badge/?version=latest
   :target: http://ansicolortags.readthedocs.io/

* It is available from `Pypi <https://pypi.org/project/ansicolortags>`_ (v0.4), and can be install with a simple command: ``pip install ansicolortags`` !
* The complete documentation for the module is here: `<http://ansicolortags.readthedocs.io/>`_.
* This new package is based on my old `ANSIColors-balises <https://pypi.org/project/ANSIColors-balises>`_, which was too old and only supported Python 2. ANSIColors-balises has been downloaded about 5000 times during march 2013 and February 2016.
* A small example of its use (the output is not displayed with colors here because Sphinx does not support including colors in the output of such code samples): ::

   >>> # The good way (and safe) to use ansicolortags:
   >>> try:
   …     from ansicolortags import printc
   >>> except ImportError:
   …     def printc(a): print(a)  # Placeholder
   >>> printc("<red>This is red!<white> That's white.<blue> And that is blue.<reset> (not working here)")
   This is red! That's white. And that is blue. (not working here)

* But in a terminal, this code will give: ":red:`This is red!` :white:`That's white.` :blue:`And that is blue.` (not working here)".

:State: *Up-to-date* (July 2016), and works very well.

`StrapDown.js <publis/StrapDown.js>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
An awesome piece of Javascript to quickly publish nice documents, written in Markdown. Cf. `github.com/Naereen/StrapDown.js <https://github.com/Naereen/StrapDown.js>`_.

:State: *Up-to-date* (July 2016), works very well.

`nautilus-terminal <publis/nautilus-terminal/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Nautilus-Terminal, a plugin for `Gnome Nautilus <http://doc.ubuntu-fr.org/Nautilus>`_ to embed a terminal in your file explorer, open-source `on Bitbucket <https://bitbucket.org/lbesson/nautilus-terminal/>`_.

:State: *Up-to-date* (February 2016), it works.

`latex <publis/latex/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Some files and useful tiny programs to use \\(\\LaTeX{}\\).

In particular, `autotex <publis/latex/autotex>`_ is the tiny Bash script I use on a regular basis to write \\(\\LaTeX{}\\) documents without having to manually write the header part (with ``\usepackage`` and other useless parts).
I wrote a small `autonomize.sh <publis/latex/autonomize.sh>`_ script and a template `template_minimalist.tex <publis/latex/template_minimalist.tex>`_, to make autonomous a document which was using `autotex`_.

:State: *Works well* (March 2016).

`snippets <publis/snippets>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Small snippets of code, from `Bitbucket snippets <https://bitbucket.org/snippets/lbesson/>`_.

:State: *Active* (July 2016), small snippets of code.

---------------------------------------------------------------------

Small projects on `my GitHub <https://github.com/Naereen/>`_
------------------------------------------------------------

`ama <publis/ama>`_
^^^^^^^^^^^^^^^^^^^
Ask me anything in English ! `On GitHub (ama) <https://github.com/Naereen/ama>`_ / `On Bitbucket (ama) <https://bitbucket.org/lbesson/ama>`_.

:State: *Up-to-date* (July 2016), useless.

`ama.fr <publis/ama.fr>`_
^^^^^^^^^^^^^^^^^^^^^^^^^
Ask me anything in French! Demandez-moi n'importe quoi ! `On GitHub (ama.fr) <https://github.com/Naereen/ama.fr>`_ / `On Bitbucket (ama.fr) <https://bitbucket.org/lbesson/ama.fr>`_.

:State: *Up-to-date* (July 2016), useless.

`Nginx-Fancyindex-Theme <publis/Nginx-Fancyindex-Theme>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A `open-source, clean and pretty theme <https://github.com/Naereen/Nginx-Fancyindex-Theme>`_ for the ``FancyIndex`` module for the `nginx <http://nginx.org/>`_ web-server.

:State: *Up-to-date* (June 2016), works well.

`generate-word-cloud.py <publis/generate-word-cloud.py>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A Python v2 or v3 script to produce a nice-looking Cloud of Words from one or more text files, open-source `on GitHub <https://github.com/Naereen/generate-word-cloud.py/>`_.

:State: *Up-to-date* (March 2016), works well.

`naereen.github.io <publis/naereen.github.io>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The `naereen.github.io <http://naereen.github.io/>`_ website, open-source `on GitHub <https://github.com/Naereen/naereen.github.io/>`_.

:State: *Active* (July 2016).

`notebooks <publis/notebooks>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Common repository for `Jupyter notebooks <https://www.jupyter.org/>`_, open-source `on GitHub <https://github.com/Naereen/notebooks/>`_. Readables on `nbviewer.jupyter.org <https://nbviewer.jupyter.org/github/Naereen/notebooks/>`_.

:State: *Active* (July 2016), still in development.

`slides <publis/slides>`_
^^^^^^^^^^^^^^^^^^^^^^^^^
Common repository for `remark.js slide-shows <http://remarkjs.com/>`_, open-source `on GitHub <https://github.com/Naereen/slides/>`_. Readables on `naereen.github.io/slides <https://naereen.github.io/slides/>`_.

:State: *Active* (July 2016), still in development.

---------------------------------------------------------------------

Press (Autumn 2014)
-------------------
* `this press article was published in « Le Monde », about the future École Centrale Casablanca <publis/29_10_2014__LeMonde.fr.html>`_ engineering school in Morocco (`also translated in English (29_10_2014__LeMonde.en.html) <publis/29_10_2014__LeMonde.en.html>`_, and `in PDF (29_10_2014__LeMonde.fr.pdf) <publis/29_10_2014__LeMonde.fr.pdf>`_),
* `this press article was published in « Libération », about the new Mahindra École Centrale <publis/10_10_2014__Liberation.fr.html>`_ engineering school in India (`also in English (10_10_2014__Liberation.en.html) <publis/10_10_2014__Liberation.en.html>`_, and `in PDF (10_10_2014__Liberation.en.pdf) <publis/10_10_2014__Liberation.fr.pdf>`_).

---------------------------------------------------------------------

Scripts and binary programs
---------------------------
Please read the page `<bin.html>`_ for more description of some of the scripts and binary programs that are available in this folder `<publis/bin/>`_.

The associated git repository is very active (improvements and new script on a weekly basis), and it is `here on bitbucket.org/lbesson/bin <https://bitbucket.org/lbesson/bin>`_.

---------------------------------------------------------------------

Configuration files
-------------------
For `Sublime Text 3 <sublimetext.en.html>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This folder `<publis/ST3/>`_ contains my configuration file, snippets and building scripts for `Sublime Text 3 <http://www.sublimetext.com/3>`_.
And the page `<sublimetext.en.html>`_ contains a lot more information !

 * For instance, `newpython.sublime-snippet <publis/ST3/newpython.sublime-snippet>`_ make it easy to create a new `Python script <python.html>`_, and `newscript.sublime-snippet <publis/ST3/newscript.sublime-snippet>`_ does the same for a GNU Bash script.
 * Use `autotex.sublime-snippet <publis/ST3/autotex.sublime-snippet>`_ to create a blank LaTeX file powered by `autotex`_, which can then easily be compiled to PDF by using this building script `autotex.sublime-build <publis/ST3/autotex.sublime-build>`_
 * `StrapDownJS.sublime-snippet <publis/ST3/StrapDownJS.sublime-snippet>`_ also make it easy to create an HTML file powered by my awesome `StrapDownJS <http://lbesson.bitbucket.io/md/>`_ project !
 * I wrote a few snippets to write LaTeX documents quicker; and a lot of other things.

:State: *Actively maintained* (July 2016).

`munstrap <publis/munstrap/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
I translated in French a responsive theme for `Munin 2.x <http://munin-monitoring.org/>`_, based on Twitter Bootstrap, from the `original munstrap <https://github.com/jonnymccullagh/munstrap>`_.
Open-sourced on Bitbucket : `bitbucket.org/lbesson/munstrap <https://bitbucket.org/lbesson/munstrap/>`_.

:State: Up-to-date.* (September 2014)

`conky <publis/conky/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
My configuration for `GNU Conky <http://conky.sourceforge.net/>`_.

:State: *Not actively maintained, but it works.* (January 2014)

`xpadder <publis/xpadder>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Some configuration files for my use of the `XPadder tool <https://en.wikipedia.org/wiki/Xpadder/>`_ on Windows (map a gamepad to keyboard buttons).

:State: *Old* (2014), but should work well.

`byobu-conf <publis/byobu-conf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Configuration files for the awesome `Byobu <https://byobu.co/>`_ terminal multiplexer.

:State: *Up-to-date* (February 2016), works well.

`python <python/>`_
^^^^^^^^^^^^^^^^^^^
Some configuration files for my daily use of the `Python programming language <https://www.python.org/>`_.

:State: *Up-to-date* (June 2016), basic but work well.

`firefox <publis/firefox>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Some `user scripts <https://openuserjs.org/>`_ and `user styles <https://userstyles.org/>`_ for my daily use of the `Mozilla Firefox web browser <https://www.mozilla.org/en-US/firefox/new/>`_.

:State: *Tiny* (2015).

`muttrc <publis/muttrc/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
My configuration for `Mutt <http://www.mutt.org/>`_, the best command-line email software.

:State: *Not actively maintained, but it works.* (January 2014)

`irssi <publis/irssi>`_
^^^^^^^^^^^^^^^^^^^^^^^
(Old) Configuration files for the `Irssi <https://irssi.org/>`_ command line IRC client.

:State: *Old* (2014), but should work well.

`nautilus-scripts <publis/nautilus-scripts/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Some old scripts for **Gnome Nautilus**.

:State: *Not at all maintained.* (Nov 2011 to July 2013)

`gedit-coloration <publis/gedit-coloration/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Some improvements on the **GTK-SourceView** configuration (C++ library for the source code syntactic coloring, used by gedit and gobby).

:State: *Not at all maintained.* (Nov 2011 to July 2013)

`gedit-tools <publis/gedit-tools/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Some old scripts for **Gnome Gedit**, with the plug-in *Exterior tools*.

:State: *Not at all maintained.* (Summer 2012)

---------------------------------------------------------------------

Teaching related projects
-------------------------
A few programming projects related to previous teaching activities:

`hackathon <publis/hackathon>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Some assignments for programming hackathons, given in 2015 at `Mahindra Ecole Centrale <http://www.mahindraecolecentrale.edu.in/>`_ for the `CS101 course <../cs101/>`_.

:State: *Teaching* (in India, in 2015).

`mec-cs101-integrals <publis/mec-cs101-integrals>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
`Complete solution to a programming project on « Numerical Integration » <http://mec-cs101-integrals.readthedocs.io/>`_, given at `Mahindra Ecole Centrale <http://www.mahindraecolecentrale.edu.in/>`_ in 2015 for the `CS101 course <../cs101/>`_.

:State: *Teaching* (in India, in 2015).

`mec-cs101-matrices <publis/mec-cs101-matrices>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
`Complete solution to a programming project on « Linear Algebra and Matrices » <http://mec-cs101-matrices.readthedocs.io>`_, given at `Mahindra Ecole Centrale <http://www.mahindraecolecentrale.edu.in/>`_ in 2015 for the `CS101 course <../cs101/>`_.

:State: *Teaching* (in India, in 2015).

`2048-agreg <publis/2048-agreg>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A modified version of `the famous 2048 game <2048>`_, for mathematical geeks (in French).

:State: *Old* (2014), but works well (on mobile or desktop).

---------------------------------------------------------------------

Older projects
--------------
These projects are older, but some can still be interesting:

`selfspy-vis <publis/selfspy-vis>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Tool to visualize a `selfspy <https://github.com/gurgeh/selfspy>`_ database, open-source `on GitHub <https://github.com/Naereen/selfspy-vis/>`_.

:State: *Old* (2016), pretty limited.

`puzzle <publis/puzzle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
A small game of Tetravex, written in *OCaml* for a programming course in my Bachelor (3rd year, Avril 2012). I had a grade of 17/20.
Cleaned-up in March 2014, and open-source on my bitbucket account: `bitbucket.org/lbesson/projet-puzzle-ocaml-2012 <https://bitbucket.org/lbesson/projet-puzzle-ocaml-2012>`_.

:State: *Works well* but not maintained.

`Zenity <publis/Zenity/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
A tiny library for ``OCaml``, to use the **GNU Zenity** tool in a simple, efficient and well-typed manner (but the code is dirty).
Open-sourced on my bitbucket account: `bitbucket.org/lbesson/zenity-ocaml <https://bitbucket.org/lbesson/zenity-ocaml>`_.

It works *"like this"* : no need for any installation, you just have to include the source file ``zenity.ml`` and ``zenity.mli`` in your OCaml project.
For instance, in a OCaml console or in a program:

.. code-block:: ocaml

   open Zenity;;
   let my_color = color_selection ~title:"Choose a color please" () ;;
   (* Will ask the user to select a color, and return it as a string,
   it does the same as calling 'zenity --color-selection --title="Choose a color please"', in a terminal. *)


:State: *Not actively maintained* (April 2014), but it works with the latest versions of OCaml (4.03.0) and Zenity.

`kaggle <publis/kaggle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
A small project, for the **Introduction to Machine Learning** in my Bachelor (3rd year) at `ENS Cachan <http://www.ens-cachan.fr/version-anglaise/>`_ in May 2013.
Nothing especially interesting, except that I used ``Python 2.7`` to handle *all* the different aspects of this learning project (scripts, programs, documentation, report, slides etc). I had a grade of 15/20.

:State: *Old!* (May 2013)

`Bomberman <publis/Bomberman/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A small **Bomberman** game, with multi-player support on a local network (multi machines), written in Python 2.7, between Nov. 2012 and Feb. 2013
for the networking project in my Master 1 (course *1-21 MPRI*), for which I received 16.9/20 (second best grade). Open-sourced: `bitbucket.org/lbesson/mpri-bomberman <https://bitbucket.org/lbesson/mpri-bomberman>`_.

:State: *No longer maintained !* (March 2013)

`PDE_02_2015 <publis/PDE_02_2015>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Mathematical and numerical solution to a real-world Partial Dynamic Equation.
Implementation in several languages, in pure `Python 2 <python.html>`_ (`PDE_02_2015 <PDE_02_2015/>`_), and in `MATLAB/Octave <matlab-clones.en.html>`_ (`PDE_09_2014 <PDE_09_2014/>`_, and also in `pure OCaml <ocaml.en.html>`_ with `GnuPlot <gnuplot.html>`_ for the display).

:State: *Research* (2014, 2015), but it worked well.

`f6_sphinx_theme <publis/f6_sphinx_theme>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A clean and white theme for `Sphinx doc <http://sphinx-doc.org/>`_, open-source `on GitHub <https://github.com/Naereen/f6_sphinx_theme/>`_.

:State: *Up-to-date* (2016), works well.

`MOcamlPlot <publis/MOcamlPlot.zip>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A tiny ``OCaml`` library, designed to draw graphical plots **in a console**.
This project was implementing a very dirty operators overloading (something that OCaml, a fully statically type language, should NOT allow), and commands for plotting  « *like Maple* »
(e.g., ``plot("cos((x+5)/2.16)",0--10)``), and other cool stuff.
I didn't find the time to keep it up-to-date.

:State: *Not maintained* (Feb 2012). Might work. Probably not.

`ColorML <publis/ColorML>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Experiments to use colors in a OCaml v3.12 command line program.

:State: *Very old* (2012).

---------------------------------------------------------------------

Miscellaneous
-------------
Old (useless) documents.

`webcomics.pdf <publis/webcomics.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 A French one-page article on `<http://questionablecontent.net>`_ for the ENS Cachan student newspaper, in January 2014 (`<http://www.lasauce.ens-cachan.fr/archives.php>`_).

`seminaire_crans.pdf <publis/seminaire_crans/seminaire_crans.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Slides for a technical workshop on documentation tools, given in March 2013 for the `CRANS <http://www.crans.org>`_.


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

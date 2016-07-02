.. meta::
   :description lang=en: Description of publications in folder publis/
   :description lang=fr: Page décrivant les publications du dossier publis/

####################################################
 Description of publications in folder `<publis/>`_
####################################################

.. todo:: Translate this page to English!

About this page
---------------
This page tries to describe all the tiny (and less tiny) technical projects published in the folder `<publis/>`_.

This folder contains a lot of small productions (softwares, scripts, configuration etc); and some of my more serious projects.

.. todo:: Keep this page up-to-date. For now, it is not AT ALL up-to-date!

.. sidebar:: Go back to the homepage?

   If this page has no interest for you, please go back to the main page `<index.html>`_.


.. note:: Conditions of distribution

   Every file or projects listed here is *freely* and *publicly* distributed, under the conditions of the `GPLv3 license <LICENSE.html>`_!

---------------------------------------------------------------------

Projects
--------
Here is a **partial** list of projects published in the folder `<publis/>`_.

.. warning:: Not all of them are explained here.


`nautilus-terminal <publis/nautilus-terminal/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
`A plug-in for GNU Nautilus <https://bitbucket.org/lbesson/nautilus-terminal>`_.

`latex <publis/latex/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Some files and useful tiny programs to use \\(\\LaTeX{}\\).

In particular, `autotex <./publis/latex/autotex>`_ is the tiny Bash script I use on a regular basis to write \\(\\LaTeX{}\\) documents without having to manually write the header part (with ``\usepackage`` and other useless parts).
I wrote a small `autonomize.sh <./publis/latex/autonomize.sh>`_ script and a template `template_minimalist.tex <./publis/latex/template_minimalist.tex>`_, to make autonomous a document which was using `autotex`_.

:State: *Works well* and actively maintained (March 2016).

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
   (* Will ask the user to select a color, a return it as a string,
   it does the same as calling $ zenity --color-selection --title="Choose a color please", in a terminal. *)


:State: *Not actively maintained* (April 2014), but it works with the latest versions of OCaml (4.03.0) and Zenity.

`ansicolortags <publis/ansicolortags/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. pypi-release:: ansicolortags
   :prefix: The latest version is here (the cheeseshop Sphinx extension should add a link to the zip file of the project)
   :class: sidebar

**ansicolortags** is a small `Python <python.html>`_ module, supporting both version 2 (2.7+) and 3 (3.4+),
designed to easily and efficiently use ``ANSI`` colors
in a terminal application from Python, on **UNIX** or **Linux** (or on **Windows via Cygwin**, or on **Mac OS X**).

.. image::  https://badge.fury.io/py/ansicolortags.svg
   :target: https://pypi.python.org/pypi/ansicolortags
.. image:: https://readthedocs.org/projects/ansicolortags/badge/?version=latest
   :target: http://ansicolortags.readthedocs.io/

* It is available from `Pypi <https://pypi.python.org/pypi/ansicolortags>`_ (v0.4), and can be install with a simple command: ``pip install ansicolortags`` !
* The complete documentation for the module is here: `<http://ansicolortags.readthedocs.io/>`_.
* This new package is based on my old `ANSIColors-balises <https://pypi.python.org/pypi/ANSIColors-balises>`_, which was too old and only supported Python 2. ANSIColors-balises has been downloaded about 5000 times during march 2013 and February 2016. (Some *partial* statistics, for May 2013 `are here <http://pypi-ranking.info/module/ANSIColors-balises>`_ and others `here <http://developers.dazzit.com/item/en/US/Python-Packages/ANSIColors-balises/>`_, `or also on pypi-ranking.info <http://pypi-ranking.info/module/ANSIColors-balises>`_.)
* A small example of its use (the output is not displayed with colors here because Sphinx does not support including colors in the output of such code samples): ::

   >>> # The good way (and safe) to use ansicolortags:
   >>> try:
   ...     from ansicolortags import printc
   >>> except ImportError:
   ...     def printc(a): print(a)  # Placeholder
   >>> printc("<red>This is red!<white> That's white.<blue> And that is blue.<reset> (not working here)")
   This is red! That's white. And that is blue. (not working here)

* But in a terminal, this code will give: ":red:`This is red!` :white:`That's white.` :blue:`And that is blue.` (not working here)".

:State: *Up-to-date* (July 2016), and works very well.

`kaggle <publis/kaggle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
A small project, for the **Introduction to Machine Learning** in my Bachelor (3rd year) at `ENS Cachan <http://www.ens-cachan.fr/version-anglaise/>`_ in May 2013.
Nothing really interesting, except that I used ``Python 2.7`` to handle *all* the different aspects of this learning project (scripts, programs, documentation, report, slides etc). I had a grade of 15/20.
As this `Kaggle.com <https://www.kaggle.com/>`_ challenge is one of the "training challenge" nowadays, `I am no longer shown as a participant for this challenge <https://www.kaggle.com/naereen/results>`_...

:State: *Old!* (May 2013)

`Bomberman <publis/Bomberman/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A small **Bomberman** game, with multi-player support on a local network (multi machines), written in Python 2.7, between Nov. 2012 and Feb. 2013
for the networking project in my Master 1 (course *1-21 MPRI*), for which I received 16.9/20 (second best grade). Open-sourced: `bitbucket.org/lbesson/mpri-bomberman <https://bitbucket.org/lbesson/mpri-bomberman>`_.

:State: *No longer maintained !* (March 2013)

`MOcamlPlot <publis/MOcamlPlot.zip>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A tiny ``OCaml`` library, designed to draw graphical plots **in a console**.
This project was implementing a very dirty operators overloading (something that OCaml, a fully statically type language, should NOT allow), and commands for plotting  « *like Maple* »
(e.g., ``plot("cos((x+5)/2.16)",0--10)``), and other cool stuff.
I didn't find the time to keep it up-to-date.

:State: *Not maintained* (Feb 2012). Might work. Probably not.

---------------------------------------------------------------------

Press (Autumn 2014)
-------------------
* `this press article was published in Le Monde, about the future École Centrale Casablanca <publis/29_10_2014__LeMonde.fr.html>`_ (`also translated in English (29_10_2014__LeMonde.en.html) <publis/29_10_2014__LeMonde.en.html>`_, and `in PDF (29_10_2014__LeMonde.fr.pdf) <publis/29_10_2014__LeMonde.fr.pdf>`_),
* `this press article was published in Libération, about the new Mahindra École Centrale <publis/10_10_2014__Liberation.fr.html>`_ (`also in English (10_10_2014__Liberation.en.html) <publis/10_10_2014__Liberation.en.html>`_, and `in PDF (10_10_2014__Liberation.en.pdf) <publis/10_10_2014__Liberation.fr.pdf>`_).

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
This folder `<ST3/>`_ contains my configuration file, snippets and building scripts for `Sublime Text 3 <http://www.sublimetext.com/3>`_.
And the page `<sublimetext.en.html>`_ contains a lot more information :).

 * For instance, `newpython.sublime-snippet <./publis/ST3/newpython.sublime-snippet>`_ make it easy to create a new `Python script <python.html>`_, and `newscript.sublime-snippet <./publis/ST3/newscript.sublime-snippet>`_ does the same for a GNU Bash script.
 * Use `autotex.sublime-snippet <./publis/ST3/autotex.sublime-snippet>`_ to create a blank LaTeX file powered by `autotex`_, which can then easily be compiled to PDF by using this building script `autotex.sublime-build <./publis/ST3/autotex.sublime-build>`_
 * `StrapDownJS.sublime-snippet <./publis/ST3/StrapDownJS.sublime-snippet>`_ also make it easy to create an HTML file powered by my awesome `StrapDownJS <http://lbesson.bitbucket.org/md/>`_ project !

:State: *Actively maintained* (June 2016).

`munstrap <publis/munstrap/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
I translated in French a responsive theme for `Munin 2.x <http://munin-monitoring.org/>`_, based on Twitter Bootstrap, from the `original munstrap <https://github.com/jonnymccullagh/munstrap>`_.
Open-sourced on Bitbucket : `bitbucket.org/lbesson/munstrap <https://bitbucket.org/lbesson/munstrap/>`_.

:State: Up-to-date.* (September 2014)

`conky <publis/conky/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
My configuration for `GNU Conky <http://conky.sourceforge.net/>`_.

:State: *Not actively maintained, but it works.* (January 2014)

`muttrc <publis/muttrc/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
My configuration for `Mutt <http://www.mutt.org/>`_, the best command-line email software.

:State: *Not actively maintained, but it works.* (January 2014)

`gedit-coloration <publis/gedit-coloration/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Some improvements on the **GTK-SourceView** configuration (C++ library for the source code syntactic coloring, used by gedit and gobby).

:State: *Not at all maintained.* (Nov 2011 to July 2013)

`gedit <publis/gedit/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Some plugins for **Gnome Gedit**.

:State: *Not at all maintained.* (Nov 2011 to July 2013)

`nautilus-scripts <publis/nautilus-scripts/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Some old scripts for **Gnome Nautilus**.

:State: *Not at all maintained.* (Nov 2011 to July 2013)

`gedit-tools <publis/gedit-tools/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Some old scripts for **Gnome Gedit**, with the plug-in *Exterior tools*.

:State: *Not at all maintained.* (Summer 2012)

---------------------------------------------------------------------

Miscellaneous
-------------
`webcomics.pdf <publis/webcomics.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 A French one-page article on `<http://questionablecontent.net>`_ for the ENS Cachan student newspaper, in January 2014 (`<http://www.lasauce.ens-cachan.fr/archives.php>`_).

`seminaire_crans.pdf <publis/seminaire_crans/seminaire_crans.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Slides for a technical workshop on documentation tools, given in March 2013 for the `CRANS <http://www.crans.org>`_.


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

.. meta::
   :description lang=en: Description of scripts in folder bin/
   :description lang=fr: Page décrivant les binaires and les scripts du dossier bin/

############################################
 Description of scripts in folder `<bin/>`_
############################################

About this page
---------------
.. note:: New git repository:

    All my scripts and small programs are publicly published on this
    `bin.git <https://bitbucket.org/lbesson/bin/>`_ repository (and more information about the license is `README.html <bin/README.html>`_).


This page explains how to use **some** of the scripts published in the folder `<bin/>`_,
it contains a lot of small softwares, scripts and command line tools.
Most of them have been written by `me <index.html>`_.

.. todo:: Add explanations about other important scripts.

.. sidebar:: Go back to the homepage?

   If this page has no interest for you, please go back to the main page `<index.html>`_.

------------------------------------------------------------------------------

.. warning:: Only on Ubuntu

   Warning: these scripts have been written on and for my personal laptop, running on (X)Ubuntu 15.10,
   and have only been tested on this distribution and this OS.
   Most of them should work on other Linux distribution, they should also work on Windows, with `cygwin <https://www.cygwin.org/>`_, and on Mac OS X with Bash.

.. warning:: Disclaimer

   All these scripts are provided "AS IS", in any case I cannot be held responsible for any consequence of the use of any of these script.


GNU Bash
--------

* `.bashrc <bin/.bashrc>`_,
  My profile for GNU Bash, highly optimized over the years.

  :State: *DONE*.


* `.bash_aliases <bin/.bash_aliases>`_,
  Additional file for my GNU Bash profile Bash, defining aliases and functions. Extremely complete.

  :State: *Done*, but constantly improved.

------------------------------------------------------------------------------

Partial list of my scripts
--------------------------

.. note:: Contribute ?

    Most of these scripts works on my personal laptop ((X)Ubuntu 15.10, GNU Bash v4.3).
    But for some of them, certain options or certain features could be broken, failing or unavailable for you.
    **Any feedback on any of these scripts is the most welcome**.

    You can use this `feedback form to notify me of a bug <https://bitbucket.org/lbesson/home/issues/new>`_,
    or just send me an email.

    *And* any contribution is welcome, and will be merged in the next version of the concerned script
    (these files are distributed under the conditions of the `GPLv3 license <LICENSE.html>`_).


Small wrapper script to color the output of some commands
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `ocamlc <bin/ocamlc>`_ and `ocamlopt <bin/ocamlopt>`_,
  are two tiny scripts to color nicely the output of the `OCaml compilers <https://ocaml.org/learn/tutorials/compiling_ocaml_projects.html#ocamlcandocamlopt>`_ ``ocamlc`` and
  ``ocamlopt`` to make it simpler to read (highlights the important parts, underline the mistake in red, etc).
  **Warning** you might have to modify yourself the path the ``ocamlc`` or ``ocamlopt`` binary: it is ``/usr/local/bin/ocamlc`` on my machine, but is probably ``/usr/bin/ocamlc`` on yours.

  :State: *Stable and efficient*


* `CP <bin/CP>`_,
  colors the output of the ``rsync`` tool (cf. `<https://rsync.samba.org/>`_) to make it nicer to read and easier to parse.
  *rsync* is used with all the good options, to allow an efficient and pretty file transfer in a terminal,
  (with a progression bar in the terminal, like we usually have in a graphical shell),
  through a network
  (for example, ``CP *.pdf super@man.fr:~/web/pdf/`` will copy all the PDF files in the current folder to the folder ``~/web/pdf/`` on the distant computer *man.fr* for user *super*),
  but also locally (e.g., ``CP *.{rst,md,txt} /tmp/``).

  :State: *Stable and efficient*


* `pdflatex <bin/pdflatex>`_ and `chktex <bin/chktex>`_
  are two scripts coloring the output of the LaTeX tools ``pdflatex`` and ``chktex`` (compiling ``.``tex to ``.pdf``, and checking the errors in a ``.tex`` file).

  :State: *Stable and efficient*


Scripts to generate a photo gallery or a music player
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `generateglisse.sh <bin/generateglisse.sh>`_ (demo? → `<generateglisse.sh/>`_ here),
  generates a nice-looking photo gallery (purely static, in pure HTML + js + CSS).
  It uses files available in the folder `<bin/generateglisse/>`_.
  You need to download them all, and copy this folder ``generateglisse/`` in your folder *$HOME/bin/*
  (or in any folder that has been added to your ``$PATH``).

  :State: *Nice and efficient*


* `generatejplayer.sh <bin/generatejplayer.sh>`_ (demo? → `<generatejplayer.sh/>`_ here),
  generates a nice-looking photo gallery (purely static, in pure HTML + js + CSS).
  It uses files available in the folder `<bin/generatejplayer/>`_.
  You need to download them all, and copy this folder ``generatejplayer/`` in your folder *$HOME/bin/*
  (or in any folder that has been added to your ``$PATH``).

  :State: *Quite good* (there is a few bugs with weird non-UTF8 characters in some URL, and it only supports ``mp3``, and not ``ogg`` etc).


Some useful command line programs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `autotex <bin/autotex>`_,
  is a *highly experimental* tool (will probably work only in GNU/Linux)
  to quickly write \\(\\LaTeX{}\\) documents, without to write any header, **just the LaTeX content**.
  It uses the file `naereen.sty <publis/latex/naereen.sty>`_ as a stylesheet, and `template.en.tex <publis/latex/template.en.tex>`_ (or `template.fr.tex <publis/latex/template.fr.tex>`_ in French), that you have to download and save in your ``$HOME`` (``~``).
  A few other templates are available in the folder `<publis/latex/>`_
  (e.g., `template_twocolumns.tex <publis/latex/template_twocolumns.tex>`_ for a document with two columns, and ``autotex`` uses this automatically if the input file has "twocolumns" in in his name).

  :State: *Experimental* but works quite well!


* `gravatar.py <bin/gravatar.py>`_,
  is a simple example using the `Gravatar <https://fr.gravatar.com/>`_ API to display the avatar of someone based on their email.

  :State: *Demonstration only*.


* `PDFCompress <bin/PDFCompress>`_,
  is a mature script to automatically signed, compressed or change the meta-data of one or more PDF documents, from the command line.
  Very useful, mostly if you plan to send your PDF document by email or upload them on a website.
  It varies between documents, and the kind of PDF, but the compression efficiency can be between 5% *to 400%* !

  I added a check of the efficiency of the compression, because the process might fail and produce a file *heavier* than it was before. In this case, don't worry, the untouched version is kept in ``/tmp/``.

  This script has its own bash completion file, `PDFCompress.bash_completion <bin/PDFCompress.bash_completion>`_ :
  with my ``.bashrc`` you only have to download and save this file in the folder ``~/.bash_completion.d``.
  Or you can simply save it to ``/etc/bash_completion.d/`` (might require the sudo rights).

  :State: *Stable and efficient*.


* `series.sh <bin/series.sh>`_,
  is a simple'n dirty script to automatically play the next episode for your current TV show.
  It reads a file ``~/current`` to know the folder of the TV show you are currently watching, and then it reads a file ``current_Snn_Emm`` where ``nn`` is the season number (e.g., ``06``) and ``mm`` the episode number (e.g., ``10``).
  More details in the script itself.

  This script has its own bash completion file, `series.sh.bash_completion <bin/series.sh.bash_completion>`_ :
  with my ``.bashrc`` you only have to download and save this file in the folder ``~/.bash_completion.d``.
  Or you can simply save it to ``/etc/bash_completion.d/`` (might require the sudo rights).

  :State: *Great*.


* `obscureemail.sh <bin/obscureemail.sh>`_,
  can hide all the email addresses in the ALL the files in a directory (recursively).
  It hides them by replace a.b@c.d with a.b[AT]c.d or something like this.
  By default, it searches on only the email domain I use (e.g., NOT @gmail.com, but @crans.org),
  and only touches *plain/text* file.

  :State: *Dangerous use* (be cautious).


* `save_disk_daily.sh <bin/save_disk_daily.sh>`_,
  is a small script to automatically save your entire Ubuntu distribution,
  if your laptop runs an Ubuntu installed by `Wubi <https://help.ubuntu.com/community/Wubi>`_, and saves it on an external hard drive.

  :State: *Done*.


* `.color.sh <bin/.color.sh>`_,
  is a small script which defines a lot of (GNU Bash) variables
  to use ANSI colors in your GNU Bash session and any scripts.
  For example: ``echo -e "${red}This is red.${white} That's plain white.${blue}${u} And blue underlined.${reset}"``.
  This file is generated with my Python module `ansicolortags.py <publis/ansicolortags.py/>`_.
  They are used by most of my other scripts (but are optional), by sourcing it (``. ~/.color.sh``), and looking for it in your ``$HOME``.

  :State: *Perfect*. Honestly the GNU Bash script I am the most proud of!


* `searchgpg.sh <bin/searchgpg.sh>`_,
  can be used to search in the `GPG keys <gpg.html>`_ MIT database
  (on the server `<http://pgp.mit.edu:11371/pks>`_) for a name or a firstname.

  :State: *Done*. More experimental than useful.


* `randomgifts.sh <bin/randomgifts.sh>`_,
  is a Secret Santa generator from the command line.
  It automatically attribute to each of your friends a friend to whom they have to find and offer a gift.
  It will read the file ``~/bin/addresses.txt`` to know the name and email addresses of your friends
  (under the form "Firstname Name <firstname.name@domain.com>" or "addresse@dom.com"),
  and find a non-fix-point permutation of your friends.
  Each person receives an email stating his "target",
  by using ``mutt`` and my configuration files from the `<publis/muttrc/>`_ folder, to send an email from the command line,
  by using the email template `randomgifts.template.txt <bin/randomgifts.template.txt>`_.

  :State: *Cool* but still pretty experimental. `For real use, check-out this website <https://secretsantagenerator.net/pages/about>`_.


A few scripts to play with "quotes"
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `quotes.sh <bin/quotes.sh>`_,
  download some quotes (randomly or not) from `<https://www.wikiquote.org>`_.

  :State: *Simple but works*.


* `makequotes.sh <bin/makequotes.sh>`_,
  builds a list of quotes
  (a text file with one full quote on each line).
  It requires `quotes.sh`, and helped to generate `<publis/.quotes.txt>`_ !

  :State: *Stable*.

* `RandQuote.sh <bin/RandQuote.sh>`_,
  displays a random quote (graphically with *zenity*),
  read from the file `.quotes.txt <publis/.quotes.txt>`_ (which has to be downloaded and saved to your ``$HOME``).

  :State: *Pretty cool*, isn't it?

* `MailRandQuote.sh <bin/RandQuote.sh>`_,
  does the same but by sending the quote by email. It uses `<bin/mail_ghost.py>`_.

  :State: *Cool*.


* `changemotd.sh <bin/changemotd.sh>`_,
  is a script to display or edit the "message of the day" (motd) file (``~/motd``),
  in a terminal by using ``dialog`` or graphically using ``zenity``.

  :State: *Works*.


A geeky experiment: receive unsolved maths problems by email?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
These scripts are based on the famous French website `<http://mp.cpgedupuydelome.fr>`_, which hosts thousands of maths problems and exercises (level ~= 1st and 2nd year of Bachelor).

* `Exercice.sh <bin/Exercice.sh>`_,
  downloads a random exercise, and launches *elinks* on the page, except it it has the ``--static`` option, in which case the *raw* TeX code for the exercise (still experimental).

  :State: *Works*.

* `MailExercice.sh <bin/MailExercice.sh>`_,
  sends such a random exercise by email. It can be called with the ``html`` option
  to *try* to send an HTML-formated email, more readable (which embeds another experiment,
  the audience analytic with *ga-beacon*, cf. this page `<beacon.html>`_ for more information).
  The HTML formatting is still experimental.

  :State: *Pretty cool*.


To improve the use of some *toplevel*
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `mocaml <bin/mocaml>`_,
  is a small overload of the ``OCaml``. It uses the linux tools *rlwrap* and *ledit*.
  It works even better with this list of OCaml keywords (which allows to have a nice tab-completion feature):
  `keyword_mocaml_rlwrap.txt <bin/keyword_mocaml_rlwrap.txt>`_, to be downloaded and save in your ``$HOME``.

  :State: *Works, so fine*. Note: if you can, install `utop <https://github.com/diml/utop>`_, it is a FAR BETTER toplevel for ``OCaml``.


* Similarly, `iocaml <bin/iocaml>`_ and `ocm <bin/ocm>`_
  are two experiments to try to use more cleverly the ``OCaml`` toplevel.

  :State: *Experimental*.


* `octave <bin/octave>`_ and `octave-gui <bin/octave-gui>`_,
  are two scripts to start ``GNU Octave`` interface, the toplevel or the GUI, with the good options.

  :State: *Done*.


* `.pythonrc <bin/.pythonrc>`_,
  initialisation file for the ``Python`` toplevel.

  :State: *Done*, quite convenient (for Python 2, the readline interface was not loaded by default).


* `.ocamlinit <bin/.ocamlinit>`_,
  initialisation file for the ``OCaml`` toplevel.

  :State: *OK*.


Manipulate volume or hibernation from command line
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `GoingSleep.sh <bin/GoingSleep.sh>`_,
  to make your laptop sleep, and it even works through an SSH connexion.

  :State: *Experimental*, works on my machine (not tested elsewhere)...


* `Volume.sh <bin/Volume.sh>`_,
  to handle the volume of your laptop from command line (e.g., ``Volume.sh ++``, ``Volume.sh --`` to increase or decrease the volume).

  :State: *Experimental*, works on my machine (not tested elsewhere)...


.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

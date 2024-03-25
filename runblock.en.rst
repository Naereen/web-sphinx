.. meta::
   :description lang=en: Testing the ``autorun`` Sphinx extension
   :description lang=fr: Test de l'extension ``runblock`` pour Sphinx

##########################################
 Testing the ``autorun`` Sphinx extension
##########################################

.. todo:: This `autorun (runblock) Sphinx extension <https://github.com/sphinx-contrib/autorun>`_ seems to be broken with the most recent versions of Sphinx. It is 12/15 years old... I don't have time to fix it, or try `runcmd <https://github.com/sphinx-contrib/sphinxcontrib-runcmd>`_.

In this page, I am testing an "experimental" feature of `Sphinx <http://www.sphinx-doc.org/en/stable/>`_,
the `autorun extension <https://pypi.org/project/sphinxcontrib-autorun/>`_, which provides a ``.. runblock::`` directive,
to execute arbitrary code when generating a Sphinx-powered web-page.

.. seealso:: For a list of possibly useful Sphinx extensions, `this page gives a good overview <http://sphinxext-survey.readthedocs.io/en/latest/index.html>`_.

Examples
--------
pycon
~~~~~
The first directive is ``..runblock:: pycon``.
It uses `the Python <https://www.python.org/>`_ language,
but accepts the syntax of an interactive interpreter session.

For instance, this snippet of code:

.. code-block:: rst

   .. runblock:: pycon

       >>> for i in range(5):
       ...     print(i)


will produce this output (raw included in the HTML web-page):

.. runblock:: pycon

    >>> for i in range(5):
    …  print(i)


We can also check which version of Python used by the extension:

.. runblock:: pycon

    >>> import sys
    >>> print(sys.version)


This ``.. runblock:: pycon`` directive is interesting to give example or short demonstration, when writing tutorials or documentation for instance.

But this **runcode** extension allows to do way more!

------------------------------------------------------------------------------

A few more interesting examples
-------------------------------
``.. runblock:: console``
~~~~~~~~~~~~~~~~~~~~~~~~~
This directive accepts the syntax of a shell or Bash session, where the code starts with a *$ * symbol.


For instance, the current date and directory:

.. runblock:: console

    $ echo "Date: $(date). Directory: $(pwd)."

We can also ask for a list of the `reStructuredText <demo.html>`_ files ``.rst`` (the source code of each of these web-pages) in the current directory:

.. runblock:: console

    $ ls -larth ./{,.}*.rst

We can look for the 10 longest filenames of the `reStructuredText`_ files in the current directory:

.. runblock:: console

    $ for i in $(find -iname '*'.rst | sort); do echo "${#i} : $i" | sed s/'^\([0-9]\) '/'0\1 '/; done | sort | tail | awk '{ print $3 }'

We can also ask *GPG* to produce (*on the fly*) a signature of the current file (for more information about *GPG*, see `<pgp.html>`_):

.. runblock:: console

    $ gpg --quiet -o - --armor --detach-sign runblock.en.rst

Other examples
~~~~~~~~~~~~~~

*figlet* can print text in a nice "ASCII art" form:

.. runblock:: console

    $ figlet "Isn't  it  pretty  ?"


My script `<bin/series.sh>`_ was conceived to automatically play the next episode for your current TV show,
and it uses a *~/current* file to know which folder to use.
We can use it to display the TV show I am currently watching:

.. runblock:: console

    $ echo -e "These days, I am watching the TV show : $(basename "$(cat /home/lilian/current | tr _ ' ')") :)"


Current state of the git repository (shows which files are new (*N*), modified (*M*) or deleted (*D*)) :

.. runblock:: console

    $ git status --porcelain


A stupid example with an elk:

.. runblock:: console

    $ cowthink -W 160 -f /usr/share/cowsay/cows/moose.cow "And you think this is funny?"


We can go crazy, and try to display a picture **in ASCII** text :

.. runblock:: console

    $ convert ~/.link.ico jpg:- | jp2a -b - --size=31x20


The same, even bigger (*fyi*, this image is `the favicon of this website <https://bitbucket.org/lbesson/web-sphinx/src/master/.static/.favicon.ico>`_):

.. runblock:: console

    $ convert ~/.link.ico jpg:- | jp2a -b - --size=62x30


A few statistics about `this git repository <https://bitbucket.org/lbesson/web-sphinx/>`_:

.. runblock:: console

   $ echo "Number of commits per author (on this git repository) :"
   $ git --no-pager shortlog -sn --all


A small calendar, showing in ASCII the active days in this git repository (`with this other script <https://bitbucket.org/lbesson/bin/src/master/git-cal>`_, note that `this web-page is a nice looking version of this ASCII "calendar" <https://bitbucket.org/lbesson/web-sphinx/addon/bitbucket-graphs/graphs-repo-page>`_):

.. runblock:: console

   $ git-cal --ascii


Adding support for another language: OCaml?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the Sphinx configuration file, `conf.py <https://bitbucket.org/lbesson/web-sphinx/src/master/conf.py#conf.py-96>`_,
we can easily add shortcuts to use this **runblock** extension with other languages.

First, we have to create an empty *dictionary* called ``autorun_languages``:

.. code-block:: python

   autorun_languages = {}


Then, add a value ``truc`` (which has to be a valid command-line program, like `gnuplot <gnuplot.html>`_ or `ocaml <ocaml.fr.html>`_)
and ``truc_prefix_chars`` (size of the prefix)
to enable a new directive ``.. code-block:: truc`` in all your reStructuredText document (in *this* project only):

.. code-block:: python

   # Add these two lines in your 'conf.py' file
   autorun_languages['ocaml'] = u'ocaml -stdin'
   autorun_languages['ocaml_prefix_chars'] = 2
   autorun_languages['ocaml_input_language'] = 'utf_8'
   autorun_languages['ocaml_output_language'] = 'utf_8'

``.. runblock:: ocaml`` now works
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
With this trick, we can now include example of code snippet in OCaml:

.. runblock:: ocaml

   # let rec f = function 0 -> 1 | n -> n *(f (n-1)) in
   # print_int (f 11);;
   # Printf.printf "\n        OCaml version %s\n" Sys.ocaml_version;;

Pour plus de détails, cf. `le code source de l'extension autorun.py <https://bitbucket.org/birkenfeld/sphinx-contrib/src/default/autorun/sphinxcontrib/autorun.py#cl-58>`_.

------------------------------------------------------------------------------

A weird bug of ``pygments``
^^^^^^^^^^^^^^^^^^^^^^^^^^^
This ``runblock`` extension uses the great `pygments <http://pygments.org/>`_ Python library to color the code.

Sometimes, I have seen the ``pygments`` or ``pygmentize`` command-line tool break completely,
and the only bugfix I found was to :red:`manually` delete the "experimental" support of ``pkg_resources``
in the pygments file `plugin.py <https://bitbucket.org/birkenfeld/pygments-main/src/default/pygments/plugin.py#plugin.py-41>`_,
by :red:`manually` forcing ``pkg_resources = None``
(`at line 41 <https://bitbucket.org/birkenfeld/pygments-main/src/default/pygments/plugin.py#plugin.py-41>`_).
:red:`It's durty`, but it fixes my bug…

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

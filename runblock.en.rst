.. meta::
   :description lang=en: Testing the ``autorun`` Sphinx extension
   :description lang=fr: Extension ``runblock``

##########################################
 Testing the ``autorun`` Sphinx extension
##########################################

In this page, I am testing an "experimental" feature of `Sphinx <http://www.sphinx-doc.org/en/stable/>`_,
the `autorun extension <https://pypi.python.org/pypi/sphinxcontrib-autorun/>`_, which provides a ``.. runblock::`` directive,
to execute arbitrary code when generating a Sphinx-powered web-page.

.. seealso:: For a list of possibly useful Sphinx extensions, `this page gives a good overview <http://sphinxext-survey.readthedocs.io/en/latest/index.html>`_.
.. seealso:: `More details on runblock and autorun <http://pvbookmarks.readthedocs.io/en/latest/devel/documentation/doc_generators/sphinx/extensions/contributed_extensions/autorun.html>`_.

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
       ...  print(i)


will produce this output (raw included in the HTML web-page):

.. runblock:: pycon

    >>> for i in range(5):
    ...  print(i)


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


For instance, the current date and folder:

.. runblock:: console

    $ LANG=en ; echo "Date: `date`. Folder: `pwd`."

We can also ask for a list of the `reStructuredText <demo.html>`_ files ``.rst`` in the current repository:

.. runblock:: console

    $ LANG=en ls -larth ./{,.}*.rst

We can also ask *GPG* to produce (*on the fly*) a signature of the current file (for more information about *GPG*, see `<pgp.html>`_):

.. runblock:: console

    $ LANG=en gpg --quiet -o - --armor --detach-sign runblock.en.rst

Other examples
~~~~~~~~~~~~~~

*figlet* can print text in a nice "ASCII art" form:

.. runblock:: console

    $ LANG=en figlet "Isn't  it  pretty  ?"


My script `<bin/series.sh>`_ was conceived to automatically play the next episode for your current TV show,
and it uses a *~/current* file to know which folder to use.
We can use it to display the TV show I am currently watching:

.. runblock:: console

    $ LANG=en echo -e "These days, I am watching the TV show : $(basename "$(cat /home/lilian/current | tr _ ' ' | recode utf8..tex | iconv -c -s -t ascii)") :)"


Current state of the git repository (shows which files are new (*N*), modified (*M*) or deleted (*D*)) :

.. runblock:: console

    $ LANG=en git status --porcelain | recode utf8..tex | iconv -c -s -t ascii


A stupid example with an elk:

.. runblock:: console

    $ cowthink -W 160 -f /usr/share/cowsay/cows/moose.cow "And you think this is funny?"


We can go crazy, and try to display a picture **in ASCII** text :

.. runblock:: console

    $ convert ~/.link.ico jpg:- | jp2a -b - --size=31x20 | recode utf8..tex | iconv -c -s -t ascii


The same, even bigger (*fyi*, this image is `the favicon of this website <https://bitbucket.org/lbesson/web-sphinx/src/master/.static/.favicon.ico>`_):

.. runblock:: console

    $ convert ~/.link.ico jpg:- | jp2a -b - --size=62x30 | recode utf8..tex | iconv -c -s -t ascii


A few statistics about `this git repository <https://bitbucket.org/lbesson/web-sphinx/>`_:

.. runblock:: console

   $ echo "Number of commits per author (on this git repository) :"
   $ git --no-pager shortlog -sn --all | iconv -c -s -t ascii


A small calendar, showing in ASCII the active days in this git repository (`with this other script <https://bitbucket.org/lbesson/bin/src/master/git-cal>`_, note that `this web-page is a nice looking version of this ASCII "calendar" <https://bitbucket.org/lbesson/web-sphinx/addon/bitbucket-graphs/graphs-repo-page>`_):

.. runblock:: console

   $ git-cal --ascii | iconv -c -s -t ascii


Adding support for another language: OCaml?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the Sphinx configuration file, `conf.py <https://bitbucket.org/lbesson/web-sphinx/src/master/conf.py#conf.py-96>`_,
we can easily add shortcuts to use this **runblock** extension with other languages.

First, we have to create an empty *dictionary* called ``autorun_languages``:

.. code-block:: python

   autorun_languages = {}


Then, add a value ``truc`` (which has to be a valid command-line program, like `gnuplot <gnuplot.html>`_ or `ocaml <ocaml.html>`_)
and ``truc_prefix_chars`` (size of the prefix)
to enable a new directive ``.. code-block:: truc`` in all your reStructuredText document (in *this* project only):

.. code-block:: python

   # Add these two lines in your 'conf.py' file
   autorun_languages['ocaml'] = u'ocaml -stdin'
   autorun_languages['ocaml_prefix_chars'] = 2

``.. runblock:: ocaml`` now works
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
With this trick, we can now include example of code snippet in OCaml:

.. runblock:: ocaml

   # let rec f = function 0 -> 1 | n -> n *(f (n-1)) in
   # print_int (f 11);;
   # Printf.printf "\n        OCaml version %s\n" Sys.ocaml_version;;

------------------------------------------------------------------------------

A weird bug of ``pygments``
^^^^^^^^^^^^^^^^^^^^^^^^^^^
This ``runblock`` extension uses the great `pygments <http://pygments.org/>`_ Python library to color the code.

Sometimes, I have seen the ``pygments`` or ``pygmentize`` command-line tool break completely,
and the only bugfix I found was to :red:`manually` delete the "experimental" support of ``pkg_resources``
in the pygments file `plugin.py <https://bitbucket.org/birkenfeld/pygments-main/src/default/pygments/plugin.py#plugin.py-41>`_,
by :red:`manually` forcing ``pkg_resources = None``
(`at line 41 <https://bitbucket.org/birkenfeld/pygments-main/src/default/pygments/plugin.py#plugin.py-41>`_).
:red:`It's durty`, but it fixes my bug...

.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

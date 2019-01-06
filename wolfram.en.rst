.. meta::
   :description lang=en: Using Wolfram|Alpha from the command line
   :description lang=fr: Utiliser Wolfram|Alpha (en ligne de commande)

###########################################
 Using Wolfram|Alpha from the command line
###########################################

Wolfram|Alpha ?
---------------
 If you don't know this famous tool, just go visit the main page:
 `www.wolframalpha.com/ <http://www.wolframalpha.com/>`_.

 Thanks to `Romain Vernoux <http://vernoux.fr>`_ for introducing this tool to me!

  * **Wolfram|Alpha** is © and ® of the Wolfram Research Company;
  * ``wolf`` (ruby cli) is © `Gabriel Horner <https://github.com/cldwalker/wolf>`_;
  * ``wolfram`` (ruby cli) is also © `Gabril Horner <https://github.com/cldwalker/wolfram>`_.
  * ``ruby`` and ``nokogiri`` are the property of their respective authors.

------------------------------------------------------------------------------

`wa.sh`_: a first cli client for Wolfram|Alpha, lightweight and in Bash?
------------------------------------------------------------------------
Advantages and drawbacks
^^^^^^^^^^^^^^^^^^^^^^^^
 The advantage of this first tool is its simplicity: it is **very tiny**
 (47 lines of code, *avec* comments!), and does **not have any dependency**,
 except usual GNU tools ``grep``, ``curl``, ``tr`` and ``sed``, already installed on any Linux distribution, and available on Mac OS X (with `brew <http://brew.sh/>`_) and on Windows (with `cygwin <https://www.cygwin.org/>`_).

 However, as this tool is quite simple and minimalist, it is much simpler than ``wolf`` (presented below), and does not offer any option.

Source
^^^^^^
 The original version is here `wa.sh (original) <https://github.com/saironiq/shellscripts/blob/master/wolframalpha_com/wa.sh>`_.

 My version, without any colors in the output, is available here `wa_nocolor.sh <https://bitbucket.org/lbesson/bin/src/master/wa_nocolor.sh>`_.
 And an up-to-date version is available here `wa.sh <https://bitbucket.org/lbesson/bin/src/master/wa.sh>`_.

Obtaining an application key
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 `For more details, see below <#obtaining-an-application-key-bis>`_.

 You have to save your application key in a file named ``~/.wolfram_api_key`` (in your ``$HOME``) with this form : ::

     export API_KEY="3HHP2W-UUPQUT6997"


 For instance with this bash command: ::

     mv ~/.wolfram_api_key /tmp/  # To not erase a file that should already be there!
     echo 'export API_KEY="3HHP2W-UUPQUT6997"' > ~/.wolfram_api_key
     # Then make sure the file has the good reading permission for the current user:
     chmod +r ~/.wolfram_api_key

Examples
^^^^^^^^
 Here are some examples, to compare the two cli tools
 (cf. below for examples with ``wolf``) :


#. A dummy test: ``0+0`` :

   .. runblock:: console

      $ wa_nocolor.sh "0+0"

#. Computing a distance:

   .. runblock:: console

      $ wa_nocolor.sh "distance Paris Hyderabad"

#. Solving a numerical equation:

   .. runblock:: console

      $ wa_nocolor.sh "x^3 - sinx = e^-x"

#. And a funnier example, a `Pokémon <pokedex-doc/index.html>`_ :

   .. runblock:: console

      $ wa_nocolor.sh pikachu | sed 's/\\#/#/g'

#. We can ask the current `exchange rate <http://finance.yahoo.com/echarts?s=EURINR=X&t=5d&l=on&z=m&q=l&c=>`_ between Euro (€) and the `Indian rupee <https://en.wikipedia.org/wiki/Indian_rupee>`_:

   .. runblock:: console

      $ echo -e "Request to Wolfram|Alpha being processed…"
      $ echo -e "The $(date), 1 € was worth $(wa_nocolor.sh "1 EUR in INR" | grep -o "₹.*$")."


Warning
^^^^^^^^^
 One could complain about the impressive slowness of this solution.
 Some requests can take up-to a few seconds, it's not that quick!

------------------------------------------------------------------------------

``wolf``: a second client for Wolfram|Alpha, in *ruby* ?
--------------------------------------------------------
 The main page is `github.com/cldwalker/wolf <https://github.com/cldwalker/wolf>`_.

 It is also a **command line** client tool for the Wolfram|Alpha website.

``ruby1.9.1``
^^^^^^^^^^^^^
 To install ``wolf`` on **Ubuntu 11.10** (or more recent), you have to install
 the packets ``ruby1.9.1`` and ``ruby1.9.1-dev`` :

 .. code-block:: bash

    sudo apt-get install ruby1.9.1 ruby1.9.1-dev

.. warning:: Ruby 1.9.1 is not available anymore from Ubuntu 15.10 !

   So I can no longer test for real the example of use of ``wolf``, included below, sorry.


``nokogiri``
^^^^^^^^^^^^
 Then, `Nokogiri <http://nokogiri.org/tutorials/installing_nokogiri.html>`_ is needed.

 First, install its dependencies (a few ``ruby`` gems), and two librairies :

 .. code-block:: bash

    sudo apt-get install ri1.9.1 rdoc1.9.1 irb1.9.1
    sudo apt-get install libreadline-ruby1.9.1 libruby1.9.1 libopenssl-ruby1.9.1
    # nokogiri requirements
    sudo apt-get install libxslt-dev libxml2-dev


 Warning, the last step changes from the official installation tutorial.
 Warning also, this step seems to be **very long**,
 as the gem apparently needs one highly-CPU consuming compilation step.

 .. code-block:: bash

    # Warning : here it changes from the official tutorial
    sudo gem1.9.1 install nokogiri

wolf
^^^^
 And then, FINALLY, you can install the ``wolf`` gem:

 .. code-block:: bash

    sudo gem1.9.1 install wolf

------------------------------------------------------------------------------

Obtaining an application key (bis)
----------------------------------
 As it is explained on the GitHub page for ``wolf``,
 you have to `create an account <http://developer.wolframalpha.com/portal/apisignup.html>`_,
 and then obtain a developer key by clicking on the button "Get an AppID".

 For your information, this key is a small string of characters that looks like this: ::

     3HHP2W-UUPQUT6997


.. warning:: Of course, this is NOT a valid key! You have to get yourse!

Save the key
------------
 The simpler is to create a file ``.wolfrc`` (in your ``$HOME``) with this content ``"Wolfram.appid=3HHP2W-UUPQUT6997"`` : ::

     mv ~/.wolfrc /tmp/  # To not erase a file that should already be there!
     echo "Wolfram.appid=3HHP2W-UUPQUT6997" > ~/.wolfrc
     # Then make sure the file has the good reading permission for the current user:
     chmod +r ~/.wolfrc


Test if the installation worked
-------------------------------
 A simple test can be to run ``wolf 0+0``, to be sure that the ``wolf`` binary application was correctly installed.

 Usually, the error messages returned by **Ruby** should be understandable,
 so if the first try yells at you and fails, it *should* gives you required information to fix the installation.

 .. warning:: The most common problem in this installation process is the confusion between ruby1.8 and ruby1.9.1.

------------------------------------------------------------------------------

Examples: directly embedded in this webpage?
--------------------------------------------
 With the `runblock <runblock.html>`_ plug-in for Sphinx, it is possible
 to embed the input and output of a call to the ``wolf`` tool, directly in this page !

 .. runblock:: console

    $ wolf 0+0

A first example
^^^^^^^^^^^^^^^
 .. runblock:: console

    $ wolf "distance Paris Hyderabad"

------------------------------------------------------------------------------

Other examples?
---------------

Solving numerically an equation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 .. runblock:: console

    $ wolf "x^3 - sinx = e^-x"

Read the Pokémon database
^^^^^^^^^^^^^^^^^^^^^^^^^
 A funny example that was famous when it first came out!

 .. runblock:: console

    $ wolf pikachu | sed s/"\\\'"/""/ | sed s/"\\\%"/"%"/

Other examples
^^^^^^^^^^^^^^
 This file `<wolfram.example>`_ shows for instance the raw output of the request "``distance Paris Montreal``".

 For more examples, consult `the examples page on wolframalpha.com <http://www.wolframalpha.com/examples/>`_.

------------------------------------------------------------------------------

About this page
---------------
 To embed a ``wolf`` command and its output, I use the following snippet or `rST <demo.html>`_ code:

 .. code-block:: rst

    .. runblock:: console

       $ wolf "my question"

.. Weakness of this approach
.. ^^^^^^^^^^^^^^^^^^^^^^^^^
..  A first weakness of this use of the `rST command <demo.html>`_
..  ``.. runblock:: console`` to run an example of ``wolf question …`` is
..  the limitation to pure ASCII character imposed by the `runblock <runblock.html>`_ extension
..  (this limitation was already noticed in `this page <runblock.html>`_, where I am forced to manually change the language of the terminal (``export LANG=en``) to ask ``gpg`` to be in English and not in French, in order to avoid accents).

A Sphinx plugin?
^^^^^^^^^^^^^^^^
 We could imagine a Wolfram|Alpha plug-in for Sphinx, similar to the `GNUplot plugin <gnuplot_embed.html>`_, allowing to embed graphs and arrays produced by *Wolfram|Alpha*.
 But I am not motivated enough to implement it myself!

.. (c) Lilian Besson, 2011-2019, https://bitbucket.org/lbesson/web-sphinx/

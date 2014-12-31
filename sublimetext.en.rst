.. meta::
   :description lang=en: Description of how I use the text editor Sublime Text 3 (ST3)
   :description lang=fr: Page décrivant mon utilisation de l'éditeur de texte Sublime Text 3 (ST3)

############################################################
 How I use `Sublime Text 3 <http://www.sublimetext.com/3>`_
############################################################
.. include:: .special.rst
About...
--------
About this page
^^^^^^^^^^^^^^^
This page is there to quickly describe how I use on a daily basis the awesome **Sublime Text 3**, a `text editor <https://en.wikipedia.org/wiki/Text_editor>`_.

.. note:: What is a text editor?

   « *A text editor is a* `software <https://en.wikipedia.org/wiki/Software>`_ *for creating and editing* `text files <https://en.wikipedia.org/wiki/Text_files>`_. »

   « *Its use is common, even essential for some basic computing tasks such as system administration and software development..* »

   Needless to say therefore that `I use it constantly <https://bitbucket.org/lbesson/>`_, mostly on Linux (Ubuntu 14.04), and occasionally on Windows.

   The Wikipedia page `on text editors <https://en.wikipedia.org/wiki/Comparison_of_text_editors>`_ contains a list of the most popular publishers multi-platform text.
   Sublime Text is obviously on the list, along with `gedit <./publis/gedit/>`_, the two legendary Emacs and Vim, and for example Komodo Edit.



This article contains quick explanation of the installation and use of Sublime Text (2 or 3), and also a list of the best `plugins <https://en.wikipedia.org/wiki/Plugins>`_ that I use with ST3, links to my configuration files and general remarks.

.. note:: Licence ?

   This page, and all related files are freely distributed under the terms of the `licence GPLv3 <LICENSE.html>`_ ! (Like anything I publish or distribute).

-----------------------------------------------------------------------

About Sublime Text 3
^^^^^^^^^^^^^^^^^^^^
The official website is `www.SublimeText.com/3 <http://www.sublimetext.com/3>`_.
My article focuses on version 3 of Sublime Text.

.. warning:: Live dangerously :) ?

   You can also try the version `3dev <http://www.sublimetext.com/3dev>`_, it is updated more frequently.


What is Sublime Text?
~~~~~~~~~~~~~~~~~~~~~
Sublime Text is a text editor and source code available on multiple platforms.
It has an API using Python.

Sublime Text is a proprietary software, subject to the acceptance of a license, but is completely free.
The license is for an indefinite period, with only occasional reminders proposing to buy a non-mandatory commercial license (for $ 20).


Sublime Text incorporates most of the *basic features of a text editor*, including customizable syntax highlighting, auto-completion, a plugin system ...

But that awesome text editor offers more advanced features, including:

- *Minimap*: previewing entire file in a sidebar,
- Selecting and editing in several sections of code in parallel (multi-cursor)
- Bookmark even within files
- Automatic backup,
- Search and replace with plain text or regular expressions,
- Support for macros and plug-ins written in `Python <python.html>`_ ,
- Customizing keyboard shortcuts.


How to install ST3?
~~~~~~~~~~~~~~~~~~~
The official website `www.SublimeText.com/3`_ gives links to the last version of ST3 on every supported platforms.

This page `docs.sublimetext.info/en/sublime-text-3/getting_started/install.html <http://docs.sublimetext.info/en/sublime-text-3/getting_started/install.html>`_ explains in details how to install ST3 on different platforms process.

It's easy, free and fast :) !


How to install plugins?
~~~~~~~~~~~~~~~~~~~~~~~
.. note:: Plugin ?

   For computer softwares, `plugins`_ are additionals component that completes a `software`_ host to provide it with new features.


Sublime Text can be equipped with a package manager that allows users to find, install, update and remove additional packages without even having to restart Sublime Text!

This project is simply called **Sublime Text Package Manager**, and is hosted on this site `sublime.wbond.net <https://sublime.wbond.net>`_.
This page `sublime.wbond.net/installation <https://sublime.wbond.net/installation>`_ will tell you how to install the package manager, which is the only step *a little dirty* (but do not worry, no risk).

This magical plugin has already been downloaded more than `2.63 millions times <https://sublime.wbond.net/browse/authors/Will%20Bond%20%28wbond%29>`_ from the beginning of the project!


You can get a glimpse of the richness of this collection of plugin by going to this list (`sublime.wbond.net/browse/popular <https://sublime.wbond.net/browse/popular>`_) of the most downloaded plugins.

A lot more details elsewhere!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This site is the unofficial documentation, but it is the main reference: `docs.sublimetext.info <http://docs.sublimetext.info/en/latest/>`_.
Congratulations to them, their website is very well designed and contains all the necessary information and much more!

This (old) `wiki dedicated to Sublime Text <http://sublime-text-community-packages.googlecode.com/svn/pages/This-site.html>`_ can also help.

---------------------------------------------------------------------

How I use Sublime Text 3
------------------------
`My configuration <./publis/ST3/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
My configuration files, scripts and snippets of buildings for `Sublime Text 3`_ are all in the folder `publis/ST3 <./publis/ST3/>`_.

To use one of these files (``.sublime-settings``, ``.sublime-snippet`` or ``.sublime-build``), just copy it into `your Packages/User folder <http://docs.sublimetext.info/en/sublime-text-3/basic_concepts.html#the-packages-directory>`_.
More details for `the .sublime-settings files <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html#where-to-store-user-settings-once-again>`_, or `the .sublime-build files <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html#where-to-store-build-systems>`_.



:État: *Actively maintained*. (November 2014)

Config
~~~~~~
.. sidebar:: More info on the documentation?

   This page `customization/settings.html <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html>`_ explains how to *deeply configure every small aspect* of ST3.


My configuration files:

* `Preferences.sublime-settings <./publis/ST3/Preferences.sublime-settings>`_ is the main config file.

* `Distraction Free.sublime-settings <./publis/ST3/Distraction%20Free.sublime-settings>`_ is the specific configuration mode "distraction free". I like this mode because it allows me to project code during a presentation or courses, and zoom in on up to an important element.

* `Package Control.sublime-settings <./publis/ST3/Package%20Control.sublime-settings>`_ just gives a complete list of installed packages (also `packages.list <./publis/packages.list>`_).


Snippets
~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `extensibility/snippets.html <http://docs.sublimetext.info/en/sublime-text-3/extensibility/snippets.html>`_ explains completely how these snippets have to be designed and how can they help you to be more effective.


List of my snippets:

* `newpython.sublime-snippet <./publis/ST3/newpython.sublime-snippet>`_ to easily create a new `Python <python.html>`_ script,
* `newscript.sublime-snippet <./publis/ST3/newscript.sublime-snippet>`_ to easily create a new `GNU Bash script <./bin/>`_.
* `autotex.sublime-snippet <./publis/ST3/autotex.sublime-snippet>`_ to create an empty \\(\\LaTeX{}\\) document powered by `autotex <./publis/autotex>`_.
* `StrapDownJS.sublime-snippet <./publis/ST3/StrapDownJS.sublime-snippet>`_ facilitates the creation of an Markdown/HTML file powered by my (awesome) project `StrapDownJS <http://lbesson.bitbucket.org/md/>`_!


Build systems
~~~~~~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `file_processing/build_systems.html <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html>`_ also completely explains how to use and design build systems.


Sublime Text (as with other good text editors), it is possible to build, run or compile your files automatically and easily.
ST3 comes with build scripts for a dozen language, and it is easy to create and install new ones.


List of my build systems (one for now):

* A \\(\\LaTeX{}\\) document powered by `autotex <./publis/autotex>`_ (allow you to not have to write any \\(\\LaTeX{}\\) headers) can easily be compiled to a **PDF** thanks to this build script `autotex.sublime-build <./publis/ST3/autotex.sublime-build>`_ (requires `autotex`_ and my `pdflatex <./bin/pdflatex>`_).


The best plugins?
^^^^^^^^^^^^^^^^^
All of these plugins are **free**, almost all are free and open-source, and they are all installable from the package manager (``Ctrl+Shift+P``: *"Package Control: Install Package"*)

For each packet quoted below, a link to the information page on `sublime.wbond.net/packages/ <https://sublime.wbond.net/packages/>`_ is given.


Small customization plugins:

* `BracketHighlighter <https://sublime.wbond.net/packages/BracketHighlighter>`_ improves how opening and closing parentheses, and opening and closing tags are colored (``(``, ``[``, ``{``, ``<`` etc).
* `Buffer​Scroll <https://sublime.wbond.net/packages/Buffer​Scroll>`_ is interesting because it allows to keep in mind absolutely all positional information (sliders panel, buffer etc. for each file and each window).
* `Clickable URLs <https://sublime.wbond.net/packages/Clickable%20URLs>`_ is simple but magical: to highlight the URLs (local or Internet) addresses, and open them with a keyboard shortcut.
* `Dictionaries <https://sublime.wbond.net/packages/Dictionaries>`_ a for multi-lingual spell-check  (English, French, ..).
* The small `GitGutter <https://sublime.wbond.net/packages/GitGutter>`_  will help to visualize the difference of *each line* of *each file* regarding the last committed version for the *git* repository in which it is located (visually great to see the changes since the last *commit*).
* `Language - French - Français <https://sublime.wbond.net/packages/Language%20-%20French%20-%20Fran%C3%A7ais>`_ also adds various dictionaries for French.
* `Predawn <https://sublime.wbond.net/packages/Predawn>`_ is an improved interface, very dark to `help you protect your eyes <bin/yeux.sh>`_ !
* `Status Bar Weather <https://sublime.wbond.net/packages/Status%20Bar%20Weather>`_ adds unnecessary weather in the status bar at the bottom. Useless but fun. Yeah, your text editor can *tell you the weather!*
* `Theme - Centurion <https://sublime.wbond.net/packages/Theme%20-%20Centurion>`_ is my favorite theme, which brings a very refined but perfectly all smooth interface `suitable for optimum productivity <https://twitter.com/TristanDeleu>`_.


Plugins that add great features:

* `Dictionary​Auto​Complete <https://sublime.wbond.net/packages/DictionaryAutoComplete>`_ enables auto-completion to integrate the words of dictionaries used for spell checking. Quite cool but can quickly be boring.
* `LineEndings <https://sublime.wbond.net/packages/LineEndings>`_ to highlight and easily erase the painful (and unnecessary) spaces at the end of lines.
* `MakeCommands <https://sublime.wbond.net/packages/MakeCommands>`_ will launch from the control panel of any rule of construction from a `Makefile <https://en.wikipedia.org/wiki/Makefile>`_. It's simple, but purely awesome! I use `a lot of Makefile <https://bitbucket.org/lbesson/web-sphinx/src/master/Makefile>`_ for my various projects. Such an efficient idea in fact!
* `SideBarEnhancements <https://sublime.wbond.net/packages/SideBarEnhancements>`_ makes the sidebar much more useful.
* The wonderful `SublimeGit <https://sublimegit.net/>`_ (installable from `sublime.wbond.net/packages/SublimeGit <https://sublime.wbond.net/packages/SublimeGit>`_). Allows a full integration of git via the control panel. Free but annoys you regularly to ask you buy an (useless) 10$ commercial license... But it is really awesome, so you will support this.
* `Terminal <https://sublime.wbond.net/packages/Terminal>`_ to open a terminal (ie. a console) already in the correct folder. I do not use it, but it works well. More details `on wbond.net/sublime_packages/terminal <http://wbond.net/sublime_packages/terminal>`_.


A better syntax coloring for some languages:

* `ColorPicker <https://sublime.wbond.net/packages/ColorPicker>`_ allows you to select a color, and insert it as is. Very handy when writing CSS or HTML.
* `Gnuplot <https://sublime.wbond.net/packages/Gnuplot>`_ provides good support for programming with `GNUPlot v4+ <http://www.gnuplot.info/>`_.
* `OCaml <https://sublime.wbond.net/packages/OCaml>`_ improve a little bit the syntax coloring `for the two languages caml-light and OCaml <ocaml.html>`_. To be used with `OCaml Autocompletion <https://sublime.wbond.net/packages/OCaml%20Autocompletion>`_.
* `Markdown Extended <https://sublime.wbond.net/packages/MakeCommands>`_ is supposed to improve the syntax coloring for `Markdown <https://en.wikipedia.org/wiki/Markdown>`_, lightweight markup language, designed for easy preparation of document. I use Markdown especially via my project `StrapDownJS`_ ! (See `an example <bin/>`_ ?)
* `nginx <https://sublime.wbond.net/packages/nginx>`_ improve the syntax coloring for config files for the `awesome NGinx web server <http://nginx.org/>`_.
* `RestructuredText Improved <https://sublime.wbond.net/packages/RestructuredText%20Improved>`_ improve significantly the syntax coloring for `reStructedText <demo.html>`_, the markup language used by `Sphinx <http://sphinx-doc.org/>`_ and `the official Python documentation <https://doc.python.org/2/>`_ (and so for this page and `my site <index.html>`_). To be used with `these snippets for rST <https://sublime.wbond.net/packages/Restructured%20Text%20(RST)%20Snippets>`_.
* `TWiki <https://sublime.wbond.net/packages/TWiki>`_ for its color theme, brilliantly balanced and well colored. I use the **TWiki** "Monokai for Markup" them for every language!



Heavier plugins, or plugins designed for a specific language:

* The brilliant `SublimeLinter <http://sublimelinter.readthedocs.org/en/latest/installation.html>`_ enables verification at runtime code you write (Spyder does the same for Python, for example). Quite extraordinary!
* `SublimeCodeIntel <https://sublime.wbond.net/packages/SublimeCodeIntel>`_ is *supposed* to enable intelligent access to a program recognizing the definitions of variables, functions, classes, etc., it is expected to "jump" directly to the definition of any element of the program.
* `Emmet <http://emmet.io/>`_ (installable from `sublime.wbond.net/packages/Emmet <https://sublime.wbond.net/packages/Emmet>`_), improves writing HTML, CSS and Javascript documents quite magical. It takes time to master its features, but it's worth it!
* `LaTeXing <http://www.latexing.com/>`_ (installable from `sublime.wbond.net/packages/LaTeXing <https://sublime.wbond.net/packages/LaTeXing>`_), is *supposed* to improve support for \\(\\LaTeX{}\\).


.. note:: Purely objective

   This list simply reflects my daily use of ST3. These choices are purely objective.
   For instance, `this article <http://blog.generalassemb.ly/sublime-text-3-tips-tricks-shortcuts/>`_ also presents a list of good plugins to use.


Some specific configuration grafts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Some plugins can be configured specifically. Here are their different settings:

* `ColorHighlighter.sublime-settings <./publis/ST3/ColorHighlighter.sublime-settings>`_.
* `Emmet.sublime-settings <./publis/ST3/Emmet.sublime-settings>`_.
* `LaTeXing.sublime-settings <./publis/ST3/LaTeXing.sublime-settings>`_.
* `Side Bar.sublime-settings <./publis/ST3/Side%20Bar.sublime-settings>`_.
* `StatusBarWeather.sublime-settings <./publis/ST3/StatusBarWeather.sublime-settings>`_.
* `SublimeGit.sublime-settings <./publis/ST3/SublimeGit.sublime-settings>`_.
* `trailing_spaces.sublime-settings <./publis/ST3/trailing_spaces.sublime-settings>`_.

-----------------------------------------------------------------------------

Additional advice
^^^^^^^^^^^^^^^^^
 As for every powerful and awesome software, `Sublime Text 3`_ will require a certain training time.


.. seealso::

   `Atom.io <https://atom.io/>`_
      Seems to be promising!


Additional credit
^^^^^^^^^^^^^^^^^
 Thanks to `Jill-Jênn Vie <http://jill-jenn.net/>`_ for advising me to use `Sublime Text 3`_ (in last Octobre 2013).


.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

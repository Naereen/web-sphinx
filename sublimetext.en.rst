.. meta::
   :description lang=en: Description of how I use the text editor Sublime Text 3 (ST3)
   :description lang=fr: Page décrivant mon utilisation de l'éditeur de texte Sublime Text 3 (ST3)

############################################################
 How I use `Sublime Text 3 <http://www.sublimetext.com/3>`_
############################################################

About...
--------
About this page
^^^^^^^^^^^^^^^
This page is there to quickly describe how I use on a daily basis the awesome **Sublime Text 3**, a multi-platform `text editor <https://en.wikipedia.org/wiki/Text_editor>`_.

.. note:: What is a *text editor*?

   « *A text editor is a* `software <https://en.wikipedia.org/wiki/Software>`_ *for creating and editing* `text files <https://en.wikipedia.org/wiki/Text_files>`_. »

   « *Its use is common, even essential for some basic computing tasks such as system administration and software development..* »

   Needless to say that `I use it constantly <https://wakatime.com/@lbesson/>`_, mostly on Linux (Ubuntu 15.10), and on Windows (7).

   The Wikipedia page `on text editors <https://en.wikipedia.org/wiki/Comparison_of_text_editors>`_ contains a list of the most popular publishers multi-platform text.
   Sublime Text is obviously on the list, along with `gedit <./publis/gedit/>`_, the two legendary Emacs and Vim, and for example Komodo Edit.



This article contains quick explanation of the installation and use of Sublime Text (2 or 3), and also a list of the best `plugins <https://en.wikipedia.org/wiki/Plugins>`_ that I use with ST3, links to my configuration files and general remarks.

 (And *weirdly*, this page is one of the more popular of `my website <http://perso.crans.org/besson/>`_. Please `contact me <callme.en.html>`_ if you have any suggestion to improve it, or to say thanks if this page has been useful to you :) !)


.. note:: Licence?

   This page, and all related files are freely distributed under the terms of the `licence GPLv3 <LICENSE.html>`_ ! (Like anything else published or distributed on this website).

-----------------------------------------------------------------------

About Sublime Text 3
^^^^^^^^^^^^^^^^^^^^
The official website is `www.SublimeText.com/3 <http://www.sublimetext.com/3>`_.
My article focuses on version 3 of Sublime Text (currently, version 3.083, *released the 26th of March 2015*).

.. warning:: Live dangerously :) ?

   You can also try the version `3dev <http://www.sublimetext.com/3dev>`_, it is updated more frequently (but you will need to be registered ie have a non-free license -- I didn't).


What is Sublime Text?
~~~~~~~~~~~~~~~~~~~~~
Sublime Text is a text editor and source code available on multiple platforms.
It has an API using Python.

Sublime Text is a proprietary software, subject to the acceptance of a license, but is completely free.
The (free) license is for an indefinite period, with only occasional reminders proposing to buy a *non-mandatory* commercial license (for $ 20).


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

This project is simply called **Sublime Text Package Manager**, and is hosted on this site `packagecontrol.io <https://packagecontrol.io>`_.
This page `packagecontrol.io/installation <https://packagecontrol.io/installation>`_ will tell you how to install the package manager, which is the only step *a little dirty* (but do not worry, no risk).

This *magical* plugin has already been downloaded more than `3.01 million times <https://packagecontrol.io/browse/authors/Will%20Bond%20%28wbond%29>`_ from the beginning of the project!


You can get a glimpse of the richness of this collection of plugin by going to this list (`packagecontrol.io/browse/popular <https://packagecontrol.io/browse/popular>`_) of the most downloaded plugins.

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


:State: *Actively maintained* (February 2016).

Config
~~~~~~
.. sidebar:: More info on the documentation?

   This page `customization/settings.html <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html>`_ explains how to *deeply configure every small aspect* of ST3.


My configuration files:

* `Preferences.sublime-settings <./publis/ST3/Preferences.sublime-settings>`_ is the main config file.

* `Distraction Free.sublime-settings <./publis/ST3/Distraction%20Free.sublime-settings>`_ is the specific configuration mode "distraction free". I like this mode because it allows me to project code during a presentation or courses, and zoom in on up to an important element.

* `Package Control.sublime-settings <./publis/ST3/Package%20Control.sublime-settings>`_ just gives a complete list of installed packages (also `packages.list <./publis/packages.list>`_).

Key shortcuts
~~~~~~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `customization/key_bindings <http://docs.sublimetext.info/en/sublime-text-3/customization/key_bindings.html>`_.


Like (almost) everything else in Sublime Text, it's easy to modify or add key shortcut for anything.
It can be done globaly, or project wise or language wise.

* `Default (Linux).sublime-keymap <./publis/ST3/Default%20(Linux).sublime-keymap>`_ are my custom shortcuts (I like ``ctrl+e`` to go the end of a line, like in Emacs, or ``ctrl+maj+e`` for beginning of a line),
* `Python.sublime-keymap <./publis/ST3/Python.sublime-keymap>`_ adds some Python-specific key shortcuts (to be used with `Anaconda IDE <http://damnwidget.github.io/anaconda/IDE/>`_).


Snippets
~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `extensibility/snippets.html <http://docs.sublimetext.info/en/sublime-text-3/extensibility/snippets.html>`_ explains completely how these snippets have to be designed and how can they help you to be more effective.


List of my snippets:

* `newpython.sublime-snippet <./publis/ST3/newpython.sublime-snippet>`_ to easily create a new `Python <python.html>`_ script,
* `newpython3.sublime-snippet <./publis/ST3/newpython3.sublime-snippet>`_ to easily create a new `Python 3K <python.html>`_ script,
* `newscript.sublime-snippet <./publis/ST3/newscript.sublime-snippet>`_ to easily create a new `GNU Bash script <./bin/>`_.
* `autotex.sublime-snippet <./publis/ST3/autotex.sublime-snippet>`_ to create an empty \\(\\LaTeX{}\\) document powered by `autotex <./publis/autotex>`_.
* `StrapDownJS.sublime-snippet <./publis/ST3/StrapDownJS.sublime-snippet>`_ facilitates the creation of an Markdown/HTML file powered by my (awesome) project `StrapDownJS <http://lbesson.bitbucket.org/md/>`_!


Build systems
~~~~~~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `file_processing/build_systems.html <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html>`_ also completely explains how to use and design build systems.


Sublime Text (as with other good text editors), it is possible to build, run or compile your files automatically and easily.
ST3 comes with build scripts for a dozen language, and it is easy to create and install new ones.


List of my build systems:

* A Bash script can easily be executed (*without* arguments) with the build script `bash.sublime-build <./publis/ST3/bash.sublime-build>`_.
* An Octave script can easily be executed (*without* arguments) with the build script `octave.sublime-build <./publis/ST3/octave.sublime-build>`_.
* A \\(\\LaTeX{}\\) document powered by `autotex <./publis/autotex>`_ (allow you to not have to write any \\(\\LaTeX{}\\) headers) can easily be compiled to a **PDF** thanks to this build script `autotex.sublime-build <./publis/ST3/autotex.sublime-build>`_ (requires `autotex`_ and my `pdflatex <./bin/pdflatex>`_).
* `StrapDownJS.sublime-build <./publis/ST3/StrapDownJS.sublime-build>`_ make it easy to compile a HTML file that uses my (great) `StrapDownJS <http://lbesson.bitbucket.org/md/>`_ javascript tool, to a PDF file (thanks to the script `strapdown2pdf <http://lbesson.bitbucket.org/md/strapdown2pdf.html>`_)!

-----------------------------------------------------------------------------


The best plugins?
^^^^^^^^^^^^^^^^^
All of these plugins are **free**, almost all are free and open-source, and they are all installable from the package manager (``Ctrl+Shift+P``: *"Package Control: Install Package"*)

For each packet quoted below, a link to the information page on `packagecontrol.io/packages/ <https://packagecontrol.io/packages/>`_ is given.


Small customization plugins:

* `BracketHighlighter <https://packagecontrol.io/packages/BracketHighlighter>`_ improves how opening and closing parentheses, and opening and closing tags are colored (``(``, ``[``, ``{``, ``<`` etc).
* `Buffer​Scroll <https://packagecontrol.io/packages/Buffer​Scroll>`_ is interesting because it allows to keep in mind absolutely all positional information (sliders panel, buffer etc. for each file and each window).
* `Clickable URLs <https://packagecontrol.io/packages/Clickable%20URLs>`_ is simple but great: to highlight the URLs (local or Internet) addresses, and open them with a keyboard shortcut.
* `Dictionaries <https://packagecontrol.io/packages/Dictionaries>`_ a for multi-lingual spell-check (English, French, ...).
* The small `GitGutter <https://packagecontrol.io/packages/GitGutter>`_  will help to visualize the difference of *each line* of *each file* regarding the last committed version for the *git* repository in which it is located (visually great to see the changes since the last *commit*).
* `Language - French - Français <https://packagecontrol.io/packages/Language%20-%20French%20-%20Fran%C3%A7ais>`_ also adds various dictionaries for French.
* `Predawn <https://packagecontrol.io/packages/Predawn>`_ is an improved interface, very dark to `help you protect your eyes <bin/yeux.sh>`_ !
* `Status Bar Weather <https://packagecontrol.io/packages/Status%20Bar%20Weather>`_ adds unnecessary weather in the status bar at the bottom. Useless but fun. Yeah, your text editor can *tell you the weather!*
* `Theme - Centurion <https://packagecontrol.io/packages/Theme%20-%20Centurion>`_ is my favorite theme, which brings a very refined but perfectly all smooth interface suitable for optimum productivity and is cool with your eyes.
* The `Seti UI <https://packagecontrol.io/packages/Seti_UI>`_ theme is also great, mainly for the awesome icons it adds to the side-bar!


Plugins that add great features:

* `Calculate <https://packagecontrol.io/packages/Calculate>`_ to easily create ordered lists (among many other things): write ``i+1`` on each line, then one hit of ``Ctrl+Maj+c`` and pouf, the multi-selection is now ``1``, ``2``, ..., ``n``.
* `Dictionary​Auto​Complete <https://packagecontrol.io/packages/DictionaryAutoComplete>`_ enables auto-completion to integrate the words of dictionaries used for spell checking. Quite cool but can quickly be boring. Can be useful if you write prose and not code (project report, poetry etc).
* `HighlightWords <https://packagecontrol.io/packages/HighlightWords>`_ to always highlight some specific words (for instance, ``TODO`` or ``FIXME``).
* `IncDecValue <https://packagecontrol.io/packages/IncDecValue>`_ allows to easily increment or decrement numbers, dates or colors.
* `InsertDate <https://packagecontrol.io/packages/InsertDate>`_ allows to easily add today's date with a key shortcut (``F5`` by default), like this: *Wednesday 25 November 2015, 22:21:57*.
* `LineEndings <https://packagecontrol.io/packages/LineEndings>`_ to highlight and easily erase the painful (and unnecessary) spaces at the end of lines.
* `MakeCommands <https://packagecontrol.io/packages/MakeCommands>`_ will launch from the control panel of any rule of construction from a `Makefile <https://en.wikipedia.org/wiki/Makefile>`_. *It's simple*, but purely awesome! I use `a lot of Makefile <https://bitbucket.org/lbesson/web-sphinx/src/master/Makefile>`_ for my various projects. Such an efficient idea in fact!
* `SideBarEnhancements <https://packagecontrol.io/packages/SideBarEnhancements>`_ makes the sidebar much more useful.
* The wonderful `SublimeGit <https://sublimegit.net/>`_ (installable from `packagecontrol.io/packages/SublimeGit <https://packagecontrol.io/packages/SublimeGit>`_). Allows a full integration of git via the control panel. Free but annoys you regularly to ask you buy a (useless) 10$ commercial license... But it is really awesome, so you will support this. `GitSavvy <https://packagecontrol.io/packages/GitSavvy>`_ seems to be a good free and open-source alternative.
* `TableEditor <https://packagecontrol.io/packages/Table%20Editor>`_ is great to easily edit tables in plain text documents (for Markdown, reStructedText, pandoc etc). Very well documented and quite complete.
* `Terminal <https://packagecontrol.io/packages/Terminal>`_ to open a terminal (ie. a console) already in the correct folder. I never use it, but it works well. More details `on wbond.net/sublime_packages/terminal <http://wbond.net/sublime_packages/terminal>`_.
* `Wakatime <https://packagecontrol.io/packages/Wakatime>`_ to use `Wakatime.com <https://wakatime.com/>`_ (`read this other article for more explanations <wakatime.en.html>`_).
* `WordCount <https://packagecontrol.io/packages/WordCount>`_ adds a counter for words (and pages optionnally) in the information bar. Small and simple but useful!


A better support for some languages:

* `AutoDocstring <https://packagecontrol.io/packages/AutoDocstring>`_ simplifies and improve significantly the writing of `Python docstrings (2 or 3) <http://www.python.org/dev/peps/pep-0287/>`_, and even supports the two popular styles `Google docstring <https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_google.html>`_ and `Numpy docstring <https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_numpy.html>`_.
* `ColorHighlighter <https://packagecontrol.io/packages/ColorHighlighter>`_ highlights the colors in a CSS, HTML or LaTeX file (or any file), for instance ``red`` will be colored :red:`red`. Simple but great, very useful when editing CSS or colorful LaTeX files.
* `ColorPicker <https://packagecontrol.io/packages/ColorPicker>`_ allows you to select a color, and insert it as is. Very handy when writing CSS or HTML.
* `Gnuplot <https://packagecontrol.io/packages/Gnuplot>`_ provides good support for programming with `GNUPlot v4+ <http://www.gnuplot.info/>`_.
* `JSONLint <https://packagecontrol.io/packages/JSONLint>`_ automatically checks the correctness of any edited JSON file (and ST conf' files are JSON).
* `LaTeX-plus <https://packagecontrol.io/packages/LaTeX-plus>`_ could improve the use of LaTeX in ST (`see the doc <https://github.com/randy3k/Latex-Plus/wiki/>`_).
* `Markdown Extended <https://packagecontrol.io/packages/MakeCommands>`_ is supposed to improve the syntax coloring for `Markdown <https://en.wikipedia.org/wiki/Markdown>`_, lightweight markup language, designed for easy preparation of document. I use Markdown especially via my project `StrapDownJS`_ ! (See `an example <bin/>`_ ?)
* `nginx <https://packagecontrol.io/packages/nginx>`_ improve the syntax coloring for config files for the `awesome NGinx web server <http://nginx.org/>`_.
* `OCaml <https://packagecontrol.io/packages/OCaml>`_ improve a little bit the syntax coloring `for the two languages caml-light and OCaml <ocaml.html>`_. To be used with `OCaml Autocompletion <https://packagecontrol.io/packages/OCaml%20Autocompletion>`_.
* `GNU Octave Completions <https://github.com/tushortz/GNU-Octave-Completions>`_ and `Matlab Completions <https://github.com/tushortz/Matlab-Completions>`_ adds functions and commands from `GNU Octave <http://www.gnu.org/software/octave/>`_ or `MATLAB <https://fr.wikipedia.org/wiki/Matlab>`_ to the completion window.
* `RestructuredText Improved <https://packagecontrol.io/packages/RestructuredText%20Improved>`_ improve significantly the syntax coloring for `reStructedText <demo.html>`_, the markup language used by `Sphinx <http://sphinx-doc.org/>`_ and `the official Python documentation <https://doc.python.org/2/>`_ (and so for this page and `my site <index.html>`_). To be used with `these snippets for rST <https://packagecontrol.io/packages/Restructured%20Text%20(RST)%20Snippets>`_.
* `TWiki <https://packagecontrol.io/packages/TWiki>`_ for its color theme, brilliantly balanced and well colored. I use their syntax coloring theme **TWiki** "Monokai for Markup" for every language! After testing a lot of them, it really is my favorite color theme!


Heavier plugins, or plugins designed for a specific language:


* `MagicPython <https://packagecontrol.io/packages/MagicPython>`_ improves the syntax  coloring for Python (it recognizes the new syntax features that came in the last versions 3.5 and 3.6).
* `MatlabFilenameAutoComplete <https://packagecontrol.io/packages/MatlabFilenameAutoComplete>`_ adds the filename of the Matlab/Octave functions (ie the local files `file.m`) to the automatic tab completion. It is a way to compensate with the borring fact that Matlab/Octave asks to write any function as a *seperate file*...
* The brilliant `SublimeLinter <https://sublimelinter.readthedocs.io/en/latest/installation.html>`_ checks the code you write for syntax error *as you write it* (Spyder does the same for Python, for example). Quite extraordinary! `Anaconda IDE <http://damnwidget.github.io/anaconda/IDE/>`_ is far more powerful but specific to Python. There is plenty of awesome linters: `annotations <https://packagecontrol.io/packages/SublimeLinter-annotations>`_, `chktex <https://packagecontrol.io/packages/SublimeLinter-chktex>`_, `flake8 <https://packagecontrol.io/packages/SublimeLinter-flake8>`_, `json <https://packagecontrol.io/packages/SublimeLinter-json>`_, `mdl <https://packagecontrol.io/packages/SublimeLinter-contrib-mdl>`_, `pylint <https://packagecontrol.io/packages/SublimeLinter-pylint>`_, `shellcheck <https://packagecontrol.io/packages/SublimeLinter-shellcheck>`_.
* `LaTeXing <http://www.latexing.com/>`_ (installable from `packagecontrol.io/packages/LaTeXing <https://packagecontrol.io/packages/LaTeXing>`_), improve support for \\(\\LaTeX{}\\).
* `SendText+ <https://packagecontrol.io/packages/SendText%2B>`_ is convenient to quickly "send" some code to an open terminal in another window (to work with Python, Octave, R, bash or anyother toplevel).
* `SublimeCodeIntel <https://packagecontrol.io/packages/SublimeCodeIntel>`_ is *supposed* to enable intelligent access to a program recognizing the definitions of variables, functions, classes, etc., it is expected to "jump" directly to the definition of any element of the program (I do not like it).
* `Emmet <http://emmet.io/>`_ (installable from `packagecontrol.io/packages/Emmet <https://packagecontrol.io/packages/Emmet>`_), improves writing HTML, CSS and Javascript documents *quite magically*. It surely takes time to master its features, but I guess it's worth it!


.. note:: Purely objective

   This list simply reflects my daily use of ST3. These choices are purely objective.
   For instance, `this article <http://blog.generalassemb.ly/sublime-text-3-tips-tricks-shortcuts/>`_ also presents a list of good plugins to use.


Some plugin-specific configuration files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Some plugins can be configured specifically. Here are their different settings:

* `Anaconda.sublime-settings <./publis/ST3/Anaconda.sublime-settings>`_,
* `ColorHighlighter.sublime-settings <./publis/ST3/ColorHighlighter.sublime-settings>`_,
* `HighlightWords.sublime-settings <./publis/ST3/HighlightWords.sublime-settings>`_,
* `inc_dec_value.sublime-settings <./publis/ST3/inc_dec_value.sublime-settings>`_,
* `LaTeXing.sublime-settings <./publis/ST3/LaTeXing.sublime-settings>`_,
* `SendText%2B.sublime-settings <./publis/ST3/SendText%2B.sublime-settings>`_,
* `Side Bar.sublime-settings <./publis/ST3/Side%20Bar.sublime-settings>`_,
* `StatusBarWeather.sublime-settings <./publis/ST3/StatusBarWeather.sublime-settings>`_,
* `SublimeGit.sublime-settings <./publis/ST3/SublimeGit.sublime-settings>`_,
* `trailing_spaces.sublime-settings <./publis/ST3/trailing_spaces.sublime-settings>`_.

Some language-specific configuration files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In ST3, you can modify any single parameter for a specific language (for instance, a smaller font for Python files, a bigger margin for Markdown files etc).
For a few languages, I find these changes quite convenient:

* `Markdown.sublime-settings <./publis/ST3/Markdown.sublime-settings>`_,
* `Matlab.sublime-settings <./publis/ST3/Matlab.sublime-settings>`_,
* `Objective-C.sublime-settings <./publis/ST3/Objective-C.sublime-settings>`_ (my change allows to open a `.m` file as a Matlab/Octave file and not an Objective-C one),
* `Python.sublime-settings <./publis/ST3/Python.sublime-settings>`_.

-----------------------------------------------------------------------------

Additional advice
^^^^^^^^^^^^^^^^^
 As for every powerful and awesome software, `Sublime Text 3`_ will require a certain training time.


.. seealso::

   `Atom.io <https://atom.io/>`_
      Seems to be promising!


Additional credit
^^^^^^^^^^^^^^^^^
 Thanks to `Jill-Jênn Vie <http://jill-jenn.net/>`_ for advising me to use `Sublime Text 3`_ (in Octobre 2013).


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

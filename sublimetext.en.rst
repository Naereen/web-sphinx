.. meta::
   :description lang=en: Description of how I use the text editor Sublime Text 3 (ST3)
   :description lang=fr: Page décrivant mon utilisation de l'éditeur de texte Sublime Text 3 (ST3)

######################
 How I Sublime Text 3
######################
.. include:: .special.rst
About...
--------
About this page
^^^^^^^^^^^^^^^
This page is there to quickly describe how I use on a daily basis the awesome **Sublime Text 3**, a `text editor <https://en.wikipedia.org/wiki/Text_editor>`_.

.. note:: What is a text editor?

   « *A text editor is a* `software <https://en.wikipedia.org/wiki/Software>`_ *for creating and editing* `text files <https://en.wikipedia.org/wiki/Text_files>`_. »

   « *Its use is common, even essential for some basic computing tasks such as system administration and software development..* »

   Needless to say therefore that `I use it constantly <https://bitbucket.org/lbesson/>`, mostly on Linux (Ubuntu 14.04), and occasionally on Windows.

   The Wikipedia page `on text editors <https://en.wikipedia.org/wiki/Comparison_of_text_editors>`_ contains a list of the most popular publishers multi-platform text.
   Sublime Text is obviously on the list, along with `gedit <./publis/gedit/>`_, the two legendary Emacs and Vim, and for example Komodo Edit.



This article contains quick explanation of the installation and use of Sublime Text (2 or 3), and also a list of the best `plugins <https://en.wikipedia.org/wiki/Plugins>`_ that I use with ST3, links to my configuration files and general remarks.

.. note:: Licence ?

   (comme tout ce que je publie ou distribue).
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

   A `plugin`_ is an additional component that completes a `software`_ host to provide it with new features.


Sublime Text can be equipped with a package manager that allows users to find, install, update and remove additional packages without even having to restart Sublime Text!

This project is simply called **Sublime Text Package Manager**, and is hosted on this site `sublime.wbond.net <https://sublime.wbond.net>`_.
This page `sublime.wbond.net/installation <https://sublime.wbond.net/installation>`_ will tell you how to install the package manager, which is the only step *a little dirty* (but do not worry, no risk).
permet l'installation du gestionnaire de greffon, qui est la seule étape *un peu sale* (mais ne vous inquiétez pas, aucun risque).

This magical plugin has already been downloaded more than `2.63 millions times <https://sublime.wbond.net/browse/authors/Will%20Bond%20%28wbond%29>`_ from the beginning of the project!


You can get a glimpse of the richness of this collection of plugin by going to this list (`sublime.wbond.net/browse/popular <https://sublime.wbond.net/browse/popular>`_) of the most downlaoded plugins.

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

   This page `docs.sublimetext.info/en/sublime-text-3/customization/settings.html <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html>`_ explains how to *deeply configure every small aspect* of ST3.


My configuration files:

* `Preferences.sublime-settings <./publis/ST3/Preferences.sublime-settings>`_ is the main config file.

* `Distraction Free.sublime-settings <./publis/ST3/Distraction%20Free.sublime-settings>`_ is the specific configuration mode "distraction free". I like this mode because it allows me to project code during a presentation or courses, and zoom in on up to an important element.

* `Package Control.sublime-settings <./publis/ST3/Package%20Control.sublime-settings>`_ just gives a complete list of installed packages (also `packages.list <./publis/packages.list>`_).


Snippets
~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `docs.sublimetext.info/en/sublime-text-3/extensibility/snippets.html <http://docs.sublimetext.info/en/sublime-text-3/extensibility/snippets.html>`_ explains completely how these snippets have to be designed and how can they help you to be more effective.


List of my snippets:

* `newpython.sublime-snippet <./publis/ST3/newpython.sublime-snippet>`_ to easily create a new `Python <python.html>`_ script,
* `newscript.sublime-snippet <./publis/ST3/newscript.sublime-snippet>`_ to easily create a new `GNU Bash script <./bin/>`_.
* `autotex.sublime-snippet <./publis/ST3/autotex.sublime-snippet>`_ to create an empty LaTeX document powered by `autotex <./publis/autotex>`_.
* `StrapDownJS.sublime-snippet <./publis/ST3/StrapDownJS.sublime-snippet>`_ facilitates the creation of an Markdown/HTML file powered by my (awesome) project `StrapDownJS <http://lbesson.bitbucket.org/md/>`_!


Build systems
~~~~~~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html>`_ also completely explains how to use and design build systems.


Sublime Text (as with other good text editors), it is possible to build, run or compile your files automatically and easily.
ST3 comes with build scripts for a dozen language, and it is easy to create and install new ones.


List of my build systems (one for now):

 * A LaTeX document powered by `autotex <./publis/autotex>`_ (allow you to not have to write any LaTeX headers) can easily be compiled to a **PDF** thanks to this build script `autotex.sublime-build <./publis/ST3/autotex.sublime-build>`_ (requires `autotex`_ and my `pdflatex <./bin/pdflatex>`_).


The best plugins?
^^^^^^^^^^^^^^^^^
All of these plugins are **free**, almost all are free and open-source, and they are all installable from the package manager (``Ctrl+Shift+P``: *"Package Control: Install Package"*)

For each packet quoted below, a link to the information page on `sublime.wbond.net/packages/ <https://sublime.wbond.net/packages/>`_ is given.


Small customization plugins:

* `BracketHighlighter <https://sublime.wbond.net/packages/BracketHighlighter>`_ improves how opening and closing parentheses, and opening and closing tags are colored (``(``, ``[``, ``{``, ``<`` etc).
* `Buffer​Scroll <https://sublime.wbond.net/packages/Buffer​Scroll>`_ is interesting because it allows to keep in mind absolutely all positional information (sliders panel, buffer etc. for each file and each window).
* `Clickable URLs <https://sublime.wbond.net/packages/Clickable%20URLs>`_ is simple but magical: to highlight the URLs (local or Internet) addresses, and open them with a keyboard shortcut.
* `Dictionaries <https://sublime.wbond.net/packages/Dictionaries>`_ a for multi-lingual spellcheck  (English, French, ..).
* `GitGutter <https://sublime.wbond.net/packages/GitGutter>`_ visualize the difference of *each line* of *each file* regarding the last commited version for the *git* repository in which it is located (visually great to see the changes since the last *commit*).
* `Language - French - Français <https://sublime.wbond.net/packages/Language%20-%20French%20-%20Fran%C3%A7ais>`_ also adds various dictionaries for French.
* `Predawn <https://sublime.wbond.net/packages/Predawn>`_ is an improved interface, very dark to `help you protect your eyes <bin/yeux.sh>`_ !
* `Status Bar Weather <https://sublime.wbond.net/packages/Status%20Bar%20Weather>`_ ajoute une inutile météo dans la barre de statut en bas. Inutile mais marrant. Oui oui, votre éditeur de texte peut vous dire la météo !
* `Theme - Centurion <https://sublime.wbond.net/packages/Theme%20-%20Centurion>`_ est mon thème préféré, qui apporte une interface toute lisse, très épurée mais parfaitement `adaptée à une productivité optimale <https://twitter.com/TristanDeleu>`_.


Greffons ajoutant de super fonctionnalités :

* `Dictionary​Auto​Complete <https://sublime.wbond.net/packages/DictionaryAutoComplete>`_ permet à l'auto-complétion d'intégrer les mots du dictionnaires utilisé pour la correction orthographique. Assez magique.
* `LineEndings <https://sublime.wbond.net/packages/LineEndings>`_ pour surligner et facilement effacer les pénibles (et inutiles) espaces en fin de lignes.
* `MakeCommands <https://sublime.wbond.net/packages/MakeCommands>`_ permet de lancer depuis le panneau de contrôle n'importe quelle règle de construction venant d'un fichier `Makefile <https://en.wikipedia.org/wiki/Makefile>`_. C'est tout simple, mais purement génial ! J'utilise `beaucoup de Makefile <https://bitbucket.org/lbesson/web-sphinx/src/master/Makefile>`_ pour mes différents projets. Quel gain de temps en fait !
* `SideBarEnhancements <https://sublime.wbond.net/packages/SideBarEnhancements>`_ rend la barre latérale bien plus utile.
* `SublimeGit <https://sublimegit.net/>`_ (installable depuis `sublime.wbond.net/packages/SublimeGit <https://sublime.wbond.net/packages/SublimeGit>`_). Permet un intégration complète de *git* via le panneau de contrôle.
* `Terminal <https://sublime.wbond.net/packages/Terminal>`_ permet d'ouvrir un terminal (ie. une console) déjà dans le bon dossier. Je ne m'en sers pas, mais il marche bien. Plus de détails `sur wbond.net/sublime_packages/terminal <http://wbond.net/sublime_packages/terminal>`_.


Meilleures colorations pour certains langages :

* `ColorPicker <https://sublime.wbond.net/packages/ColorPicker>`_ permet de sélectionner une couleur, et de l'insérer telle quelle. Très pratique lors de la rédaction de CSS ou d'HTML.
* `Gnuplot <https://sublime.wbond.net/packages/Gnuplot>`_ permet un bon support de la programmation avec `GNUPlot v4+ <http://www.gnuplot.info/>`_.
* `OCaml <https://sublime.wbond.net/packages/OCaml>`_ améliore la coloration pour `les langages caml-light et OCaml <ocaml.html>`_. À utiliser avec `OCaml Autocompletion <https://sublime.wbond.net/packages/OCaml%20Autocompletion>`_ aussi.
* `Markdown Extended <https://sublime.wbond.net/packages/MakeCommands>`_ améliore la coloration syntaxique du `Markdown <https://en.wikipedia.org/wiki/Markdown>`_, langage léger à balises, conçu pour une rédaction facile de document. J'utilise Markdown notamment via mon projet `StrapDownJS`_ ! Voir `un exemple <bin/>`_ ?
* `nginx <https://sublime.wbond.net/packages/nginx>`_ améliore la coloration des fichiers de configuration du `magnifique serveur web NGinx <http://nginx.org/>`_.
* `RestructuredText Improved <https://sublime.wbond.net/packages/RestructuredText%20Improved>`_ améliore bien la coloration du `reStructedText <demo.html>`_, le langage à balise utilisé par `Sphinx <http://sphinx-doc.org/>`_ et la documentation de Python (et pour cette page et `mon site <index.html>`_). À utilisé avec `ces snippets pour rST <https://sublime.wbond.net/packages/Restructured%20Text%20(RST)%20Snippets>`_.
* `TWiki <https://sublime.wbond.net/packages/TWiki>`_ pour son thème de couleur, génialement équilibré et bien coloré.



Greffons plus lourds, ou conçu pour un langage spécifique :

* Le génial `SublimeLinter <http://sublimelinter.readthedocs.org/en/latest/installation.html>`_ permet la vérification à la volée du code que vous rédigez (Spyder fait de même pour Python, par exemple). Assez extraordinaire !
* `SublimeCodeIntel <https://sublime.wbond.net/packages/SublimeCodeIntel>`_ est censé permettre un accès intelligent à un programme : en reconnaissant les définitions de variables, fonctions, classes etc, il devrait permettre de "sauter" directement à la définition de n'importe quel élément du programme.
* `Emmet <http://emmet.io/>`_ (installable depuis `sublime.wbond.net/packages/Emmet <https://sublime.wbond.net/packages/Emmet>`_), améliore la rédaction de documents HTML, CSS et Javascript de façon assez magique. Il demande du temps pour maîtriser ses fonctionnalités, mais ça vaut le coup !
* `LaTeXing <http://www.latexing.com/>`_ (installable depuis `sublime.wbond.net/packages/LaTeXing <https://sublime.wbond.net/packages/LaTeXing>`_), améliore le support de LaTeX.


.. note:: Purement objective

   This liste reflète simplement mon utilisation quotidienne de ST3. Ces choix sont purement objectifs.


Configuration spécifique à certains greffons
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Certains greffons peuvent être configurés spécifiquement.
Voici leurs différents réglages :

* `trailing_spaces.sublime-settings <./publis/ST3/trailing_spaces.sublime-settings>`_.
* `Side Bar.sublime-settings <./publis/ST3/Side%20Bar.sublime-settings>`_.
* `StatusBarWeather.sublime-settings <./publis/ST3/StatusBarWeather.sublime-settings>`_.
* `ColorHighlighter.sublime-settings <./publis/ST3/ColorHighlighter.sublime-settings>`_.
* `LaTeXing.sublime-settings <./publis/ST3/LaTeXing.sublime-settings>`_.
* `Emmet.sublime-settings <./publis/ST3/Emmet.sublime-settings>`_.


Conseils supplémentaires
^^^^^^^^^^^^^^^^^^^^^^^^
Blabla!


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/

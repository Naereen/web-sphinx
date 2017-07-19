.. meta::
   :description lang=en: Description of how I use the text editor Visual Studio Code (VSCode)
   :description lang=fr: Page décrivant mon utilisation de l'éditeur de texte Visual Studio Code (VSCode)

#################################################################
 How I use `Visual Studio Code <https://code.visualstudio.com/>`_
#################################################################

About...
--------
About this page
^^^^^^^^^^^^^^^
This page is there to quickly describe how I use on a daily basis the awesome **Visual Studio Code**, a multi-platform `text editor <https://en.wikipedia.org/wiki/Text_editor>`_.

.. note:: What is a *text editor*?

   « *A text editor is a* `software <https://en.wikipedia.org/wiki/Software>`_ *for creating and editing* `text files <https://en.wikipedia.org/wiki/Text_files>`_. »

   « *Its use is common, even essential for some basic computing tasks such as system administration and software development..* »

   Needless to say that `I use it constantly <https://wakatime.com/@lbesson/>`_, mostly on Linux (Ubuntu 15.10), and on Windows (7).

   The Wikipedia page `on text editors <https://en.wikipedia.org/wiki/Comparison_of_text_editors>`_ contains a list of the most popular publishers multi-platform text.
   Sublime Text is obviously on the list, along with `gedit <publis/gedit/>`_, the two legendary Emacs and Vim, and for example Komodo Edit.



This article contains quick explanation of the installation and use of **Visual Studio Code**, and also a list of the best `plugins <https://en.wikipedia.org/wiki/Plugins>`_ that I use with VSCode, links to my configuration files and general remarks.


.. note:: Licence?

   This page, and all related files are freely distributed under the terms of the `licence GPLv3 <LICENSE.html>`_ ! (Like anything else published or distributed on this website).

-----------------------------------------------------------------------

About Visual Studio Code
^^^^^^^^^^^^^^^^^^^^^^^^
The official website is `code.VisualStudio.com <https://code.visualstudio.com/>`_.
My article focuses on versions higher than 1.14 of Visual Studio Code.


.. seealso::

   `Sublime Text 3 <https://www.SublimeText.com/3 >`_
      was my favorite editor from a few years back.
      After 4 years of intensive use, I am slowly giving up on Sublime Text to only use Visual Studio Code, and like Edith Piaf `"non, je ne regrette rien" <https://www.youtube.com/results?search_query=%C3%A9dith%20piaf%20je%20ne%20regrette%20rien>`_...


What is Visual Studio Code?
~~~~~~~~~~~~~~~~~~~~~~~~~~~
Visual Studio Code is a text editor and source code available on multiple platforms.
It is written in `TypeScript <http://www.typescriptlang.org/>`_ and offers an API in TypeScript or in Javascript (with `nodejs <https://nodejs.org/>`_).
The software is compiled to Javascript and packaged as an application with `Electron <https://electron.atom.io/>`_.

Visual Studio Code is a completely free software, multi-platforms, produced by Microsoft, and its source code is open-source under the MIT License.
See on GitHub: `Microsoft/vscode <https://github.com/Microsoft/vscode/>`_.

However, the software as distributed on `the download website <https://code.visualstudio.com/Download>`_, comes `with a restrictive license <https://code.visualstudio.com/license>`_. Well, it's Microsoft, what were you expecting, GPL?!


Visual Studio Code incorporates most of the *basic features of a text editor*, including customizable syntax highlighting, auto-completion, a plugin system ...

But that awesome text editor offers more advanced features, including:

- *Minimap*: previewing entire file in a sidebar,
- Selecting and editing in several sections of code in parallel (multi-cursor),
- Bookmark even within files,
- Automatic backup,
- Search and replace with plain text or regular expressions,
- Support for macros and plug-ins written in TypeScript ou Javascript,
- Customizing keyboard shortcuts.


.. note::  It is still in very active development, but it works already perfectly well!


How to install it?
~~~~~~~~~~~~~~~~~~
The official website `code.visualstudio.com/Download <https://code.visualstudio.com/Download>`_ gives links to the last version of VSCode on every supported platforms.

This page explains in details how to install VSCode on different platforms process.

It's easy, free and fast :) !


How to install plugins?
~~~~~~~~~~~~~~~~~~~~~~~
.. note:: Plugin ?

   For computer softwares, `plugins`_ are additionals component that completes a `software`_ host to provide it with new features.


VS Code is shipped with an awesome package manager that allows users to find, install, update and remove additional packages.

The package manager is an official feature of VS Code, contrarily to `packagecontrol.io <https://packagecontrol.io>`_ for Sublime Text.
Have a look at `marketplace.visualstudio.com/vscode <https://marketplace.visualstudio.com/vscode>`_ for more details.

Another serious advantage I find in VS Code is the fast that it is available in French (and entirely translated), and in a dozen in other languages. Cf. `<https://code.visualstudio.com/docs/getstarted/locales>`_.

A lot more details elsewhere!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is an official documentation, very well written: `code.visualstudio.com/docs <https://code.visualstudio.com/docs>`_.

.. seealso::

   This "awesome" list gives very good advices:
   `github.com/viatsko/awesome-vscode <https://github.com/viatsko/awesome-vscode>`_.

---------------------------------------------------------------------

How I use Visual Studio Code
------------------------
`My configuration <publis/VSCode/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
My configuration files, scripts and snippets of buildings for `Visual Studio Code`_ are all in the folder `publis/VSCode <publis/VSCode/>`_.

To use one of these files (``.sublime-settings``, ``.sublime-snippet``, ``.sublime-macro`` or ``.sublime-build``), just copy it into `your Packages/User folder <http://docs.sublimetext.info/en/sublime-text-3/basic_concepts.html#the-packages-directory>`_.
More details for `the .sublime-settings files <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html#where-to-store-user-settings-once-again>`_, or `the .sublime-build files <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html#where-to-store-build-systems>`_.


:State: *Actively maintained* (July 2017).

Config
~~~~~~
.. sidebar:: More info on the documentation?

   This page `customization/settings.html <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html>`_ explains how to *deeply configure every small aspect* of VSCode.


My configuration files:

* `TODO <publis/VSCode/TODO>`_ is the main config file.

Key shortcuts
~~~~~~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `<https://code.visualstudio.com/docs/getstarted/keybindings#_customizing-shortcuts>`_.


Like (almost) everything else in VS Code, it's easy to modify or add key shortcut for anything.
It can be done globaly, or project wise or language wise.

* `TODO <publis/VSCode/TODO>`_ are my custom shortcuts (I like ``ctrl+e`` to go the end of a line, like in Emacs, or ``ctrl+maj+e`` for beginning of a line).


Snippets
~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `<https://code.visualstudio.com/docs/editor/userdefinedsnippets>`_ explains completely how these snippets have to be designed and how can they help you to be more effective.


List of my snippets:

* TODO

Build systems
~~~~~~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `<https://code.visualstudio.com/docs/editor/tasks>`_ also completely explains how to use and design build systems.


VS Code (as with other good text editors), it is possible to build, run or compile your files automatically and easily.
VS Code comes with "tasks", or build scripts, mainly for Javascript development, with built-in support for npm and bower tasks, and it is easy to create and install new ones.


List of my build systems:

* TODO


Macro
~~~~~
Not yet.

-----------------------------------------------------------------------------


The best plugins?
^^^^^^^^^^^^^^^^^
All of these plugins are **free**, **open-source**, and they are all easily installable from the package manager (``Ctrl+Shift+X``)

For each packet quoted below, a link to the information page on `marketplace.visualstudio.com/vscode <https://marketplace.visualstudio.com/vscode>`_ is given.

.. note:: My own plugin?

   Not yet.

   For Sublime Text, I wrote `this plugin, SwitchDictionary <https://github.com/Naereen/SublimeText3_SwitchDictionary/>`_, available through PackageControl, cf. `SwitchDictionary <https://packagecontrol.io/SwitchDictionary>`_.


Small customization plugins:

* TODO


Plugins that add great features:

* TODO


A better support for some languages:

* TODO


Heavier plugins, or plugins designed for a specific language:

* TODO


.. note:: Purely objective

   This list simply reflects my daily use of VSCode. These choices are purely objective.
   For instance, `this awesome-vscode list <https://github.com/viatsko/awesome-vscode`_ also presents a list of good plugins to use.

-----------------------------------------------------------------------------

Additional advice
^^^^^^^^^^^^^^^^^
 As for every powerful and awesome software, `Visual Studio Code`_ will require a certain training time.


.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

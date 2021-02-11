.. meta::
   :description lang=en: Description of how I use the text editor Visual Studio Code (VSCode)
   :description lang=fr: Page décrivant mon utilisation de l'éditeur de texte Visual Studio Code (VSCode)

#################################################################
 How I use `Visual Studio Code <https://code.visualstudio.com/>`_
#################################################################

About…
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

.. figure:: _images/.visualstudiocode.png
    :width: 100%
    :align: center
    :alt: Overview of Visual Studio Code when using my configuration (September 2018).
    :target: _images/.visualstudiocode.png

    Overview of Visual Studio Code when using my configuration (September 2018).


.. seealso::

   `Sublime Text 3 <https://www.SublimeText.com/3>`_
      was my favorite editor from a few years back.
      After 4 years of intensive use, I am slowly giving up on Sublime Text to only use Visual Studio Code, and like Edith Piaf `"non, je ne regrette rien" <https://www.youtube.com/results?search_query=%C3%A9dith%20piaf%20je%20ne%20regrette%20rien>`_…


What is Visual Studio Code?
~~~~~~~~~~~~~~~~~~~~~~~~~~~
Visual Studio Code is a text editor and source code available on multiple platforms.
It is written in `TypeScript <http://www.typescriptlang.org/>`_ and offers an API in TypeScript or in Javascript (with `nodejs <https://nodejs.org/>`_).
The software is compiled to Javascript and packaged as an application with `Electron <https://electron.atom.io/>`_.

Visual Studio Code is a completely free software, multi-platforms, produced by Microsoft, and its source code is open-source under the MIT License.
See on GitHub: `Microsoft/vscode <https://github.com/Microsoft/vscode/>`_.

However, the software as distributed on `the download website <https://code.visualstudio.com/Download>`_, comes `with a restrictive license <https://code.visualstudio.com/license>`_. Well, it's Microsoft, what were you expecting, GPL?!


Visual Studio Code incorporates most of the *basic features of a text editor*, including customizable syntax highlighting, auto-completion, a plugin system …

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

   For computer softwares, `plugins`_ are additional components that complete a `software`_ host to provide it with new features.


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


Humorous interlude
~~~~~~~~~~~~~~~~~~

.. image:: https://www.commitstrip.com/wp-content/uploads/2020/06/Strip-Visual-Studio-Code-650-finalenglish.jpg
   :scale: 80%
   :align: center
   :alt: I'm watching you… Drawing of Thursday 11 June 2020 on https://www.commitstrip.com/en/
   :target: https://www.commitstrip.com/en/2020/06/11/im-watching-you/?

---------------------------------------------------------------------

How I use Visual Studio Code
----------------------------
`My configuration <publis/VSCode/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
My configuration files, scripts and snippets of buildings for `Visual Studio Code`_ are all in the folder `publis/VSCode <publis/VSCode/>`_.

To use one of these files, just copy it into `User/ <https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations>`_.


:State: *Actively maintained* (July 2017).

Config
~~~~~~
.. sidebar:: More info on the documentation?

   This page `"settings" <https://code.visualstudio.com/docs/getstarted/settings>`_ explains how to *configure* of VSCode.


My configuration files:

* `settings.json <publis/VSCode/settings.json>`_ is the main config file.

Key shortcuts
~~~~~~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `"keybindings" <https://code.visualstudio.com/docs/getstarted/keybindings#_customizing-shortcuts>`_.


Like (almost) everything else in VS Code, it's easy to modify or add key shortcut for anything.
It can be done globaly, or project wise or language wise.

* `keybindings.json <publis/VSCode/keybindings.json>`_ are my custom shortcuts (I like ``ctrl+e`` to go the end of a line, like in Emacs, or ``ctrl+maj+e`` for beginning of a line).


Snippets
~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `"userdefinedsnippets" <https://code.visualstudio.com/docs/editor/userdefinedsnippets>`_ explains completely how these snippets have to be designed and how can they help you to be more effective.


List of my snippets, in this folder: `snippets <publis/VSCode/snippets>`_.

Build systems
~~~~~~~~~~~~~
.. sidebar:: More info on the documentation?

   This page `"tasks" <https://code.visualstudio.com/docs/editor/tasks>`_ also completely explains how to use and design build systems.


VS Code (as with other good text editors), it is possible to build, run or compile your files automatically and easily.
VS Code comes with "tasks", or build scripts, mainly for Javascript development, with built-in support for npm and bower tasks, and it is easy to create and install new ones.


List of my build systems, in this folder: `tasks <publis/VSCode/tasks>`_.


Macro
~~~~~
Not yet.

Fun comic book about VS Code
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: https://www.commitstrip.com/wp-content/uploads/2020/06/Strip-Visual-Studio-Code-650-final.jpg
    :src:  http://www.commitstrip.com/fr/2020/06/11/im-watching-you/

-----------------------------------------------------------------------------


The best plugins?
^^^^^^^^^^^^^^^^^
All of these plugins are **free**, **open-source**, and they are all easily installable from the package manager (``Ctrl+Shift+X``)

For each packet quoted below, a link to the information page on `marketplace.visualstudio.com/vscode <https://marketplace.visualstudio.com/vscode>`_ is given.

.. note:: My own plugin?

   Not yet.

   For Sublime Text, I wrote `this plugin, SwitchDictionary <https://github.com/Naereen/SublimeText3_SwitchDictionary/>`_, available through PackageControl, cf. `SwitchDictionary <https://packagecontrol.io/SwitchDictionary>`_.


Small customization plugins:

* `Paste and Indent <https://marketplace.visualstudio.com/items?itemName=Rubymaniac.vscode-paste-and-indent>`_ : paste code with "correct" indentation.
* `Power Mode <https://marketplace.visualstudio.com/items?itemName=hoovercj.vscode-power-mode>`_ : your code is powerful, unleash it! Useless but fun!
* `Select Line Status Bar <https://marketplace.visualstudio.com/items?itemName=tomoki1207.selectline-statusbar>`_ : displays selected lines count in status bar.
* `Shortcuts <https://marketplace.visualstudio.com/items?itemName=gizak.shortcuts>`_ : add handy shortcuts to your status bar.
* `Sublime Text Keymap <https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings>`_ : popular Sublime Text keybindings for VS Code.


Plugins that add great features:

* `Align <https://marketplace.visualstudio.com/items?itemName=steve8708.Align>`_ : align text in vscode like the atom-alignment package.
* `Auto Close Tag <https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag>`_ : automatically add HTML/XML close tag, same as Visual Studio IDE or Sublime Text.
* `Bookmarks <https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks>`_ : mark lines and jump to them.
* `Color Highlight <https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight>`_ : highlight web colors in your editor, like a RGB #ff00ff code for instance.
* `Calculate <https://marketplace.visualstudio.com/items?itemName=acarreiro.calculate>`_ : select some math, evaluate it.
* `change-case <https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case>`_ : quickly change the case (camelCase, CONSTANT_CASE, snake_case, etc) of the current selection or current word.
* `Clipboard History <https://marketplace.visualstudio.com/items?itemName=Anjali.clipboard-history>`_ : keep a history of your copied items and re-paste if needed. Useful if you don't use a system-wise clipboard manager. I am using the great `glipper <https://launchpad.net/glipper>`_.
* `Gremlins <https://marketplace.visualstudio.com/items?itemName=nhoizey.gremlins>`_ : reveal invisible whitespace characters and non-breaking spaces, to delete them easily.
* `Path Autocomplete <https://marketplace.visualstudio.com/items?itemName=ionutvmi.path-autocomplete>`_ Provides path completion, very tiny but useful in some situations like to insert links to other pages (e.g. about `SublimeText3 <sublimetext.en.html>`_).
* `All Autocomplete <https://marketplace.visualstudio.com/items?itemName=Atishay-Jain.All-Autocomplete>`_ provides autocompletion of words and items based on all open editors.
* `Trailing Spaces <https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces>`_ : highlight trailing spaces and delete them in a flash!
* `VSCode Google Translate <https://marketplace.visualstudio.com/items?itemName=funkyremi.vscode-google-translate>`_ : allows you to easily translate a selected piece of text (or lines) into any language, with `Google Translate <https://translate.google.com/>`_.
* `WakaTime <https://marketplace.visualstudio.com/items?itemName=WakaTime.vscode-wakatime>`_ : metrics, insights, and time tracking automatically generated from your programming activity. I like using Wakatime, as I talked `about it here (wakatime.html) <wakatime.html>`_.


A better support for some languages:

* `Bash Debug <https://marketplace.visualstudio.com/items?itemName=rogalmic.bash-debug>`_ : a debugger extension for bash scripts (using `bashdb <http://bashdb.sourceforge.net/>`_).
* `Python <https://marketplace.visualstudio.com/items?itemName=donjayamanne.python>`_ : linting, Debugging (multi threaded, web apps), Intellisense, auto-completion, code formatting, snippets, unit testing, and more, for the `Python language <python.html>`_.
* `MagicPython <https://marketplace.visualstudio.com/items?itemName=magicstack.MagicPython>`_ : syntax highlighter for cutting edge Python.
* `Python-autopep8 <https://marketplace.visualstudio.com/items?itemName=himanoa.Python-autopep8>`_ : applies `autopep8 <https://pypi.org/project/autopep8>`_ to your current file.
* `Git Blame <https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame>`_ : see ``git blame`` information in the status bar.
* `Git History (git log) <https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory>`_ : view git log, file or line History.
* `gitignore <https://marketplace.visualstudio.com/items?itemName=codezombiech.gitignore>`_ : language support for ``.gitignore`` files. Lets you pull ``.gitignore`` files from the `<https://github.com/github/gitignore>`_ repository.
* `HTML Preview <https://marketplace.visualstudio.com/items?itemName=tht13.html-preview-vscode>`_ : a HTML previewer.
* `HTML Snippets <https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets>`_ : full HTML tags including HTML5 Snippets.
* `JS-CSS-HTML Formatter <https://marketplace.visualstudio.com/items?itemName=lonefy.vscode-JS-CSS-HTML-formatter>`_ : Format, prettify and beautify JS, CSS, HTML code by using shortcuts, context menu or CLI.
* `Julia <https://marketplace.visualstudio.com/items?itemName=julialang.language-julia>`_ : Julia Language Support.
* `LaTeX Workshop <https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop>`_ : boost LaTeX typesetting efficiency with preview, compile, autocomplete, colorize, and more.
* This is an extension I made myself! But now from 2019 it is useless, as VSCode ships with builtin support for Makefiles. `Makefiles Support For VSCode <https://marketplace.visualstudio.com/items?itemName=naereen.makefiles-support-for-vscode>`_ : is `my <https://github.com/Naereen/Makefiles-support-for-VSCode/>`_ extension that adds support for `GNU Makefile <https://www.gnu.org/software/make/manual/make.html>`_ files (as far as now, a very limited support: only the syntax coloring and detection of the files, the Makefiles are not yet integrated within the VS Code build system). |version-VSCode-extension| |installs-VSCode-extension| |rating-VSCode-extension|
* :red:`Doesn't work!` `Make <https://marketplace.visualstudio.com/items?itemName=technosophos.vscode-make>`_ seems to be exactly offering what I had on `Sublime Text <sublimetext.en.html>`_ and was using extensively: « Run any Makefile target with ease. Just run CMD-SHIFT-P and type make. You will be prompted for a target. » ! But `I can't make it work locally... <https://github.com/technosophos/vscode-make/issues/10>`_.
* `Make support and task provider <https://marketplace.visualstudio.com/items?itemName=carlos-algms.make-task-provider>`_ works a little, and it is the only one that offers this kind of functionality. It's not perfect! But that's already something...

.. warning:: I also tried, `Makefile Command Runner <https://marketplace.visualstudio.com/items?itemName=madmous.makefile-command-runner>`_ et `makeRunner <https://marketplace.visualstudio.com/items?itemName=alexnesnes.makeRunner>`_ the 08/02/2021, unsuccessful: both install without problem, but do nothing. I don't have time to go report and help fix it, too much work these days...

* `Markdown All in One <https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one>`_ : all you need to write Markdown (keyboard shortcuts, table of contents, auto preview and more).
* `minify <https://marketplace.visualstudio.com/items?itemName=HookyQR.minify>`_ : minify for VS Code. Minify with command, and (optionally) re-minify on save.
* `OCaml <https://marketplace.visualstudio.com/items?itemName=hackwaly.ocaml>`_ : rich OCaml language support for Visual Studio Code. It really works perfectly well!
* `Ocaml tuareg-master <https://marketplace.visualstudio.com/items?itemName=muchtrix.ocaml-tuareg-master>`_ : a quick extension to send single OCaml statement (finished with ``;;``) to opened console.
* `reStructuredText <https://marketplace.visualstudio.com/items?itemName=lextudio.restructuredtext>`_ : edit reStructuredText (RST, ReST) with accurate live preview!
* `Table Formatter <https://marketplace.visualstudio.com/items?itemName=shuworks.vscode-table-formatter>`_ : format table syntax of Markdown, Textile and reStructuredText.


Heavier plugins, or plugins designed for a specific language:

* `VSCode LTex <https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex>`_ (and `its documentation <https://valentjn.github.io/vscode-ltex/index.html>`_) : grammar checking with `LanguageTool <https://languagetool.org/>`_ : it works directly in LaTeX and Markdown file but can be used on other formats as well. It seems amazing, I just discovered it (February 2021).
* `Readability Check <https://marketplace.visualstudio.com/items?itemName=jemcclin.readabilitycheck>`_ to check for readability (but only in English).
* `Code Spellchecker <https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker>`_ : spelling checker for source code.
* `Color Picker <https://marketplace.visualstudio.com/items?itemName=anseki.vscode-color>`_ : helper with GUI to generate color codes such as CSS color notations.
* `Dash <https://marketplace.visualstudio.com/items?itemName=deerawan.vscode-dash>`_ : quickly access local documentation with `Dash.app <https://kapeli.com/dash>`_ or `Zeal <http://zealdocs.org/>`_ integration in Visual Studio Code.
* `:emojisense: <https://marketplace.visualstudio.com/items?itemName=bierner.emojisense>`_ : adds suggestions and autocomplete for emoji to VS Code.
* `Gitmoji snippets <https://marketplace.visualstudio.com/items?itemName=thierrymichel.vscode-gitmoji-snippets>`_ : easy-to-use emojis for your commit messages.


.. note:: Purely objective

   This list simply reflects my daily use of VSCode. These choices are purely objective.
   For instance, `this awesome-vscode list <https://github.com/viatsko/awesome-vscode>`_ also presents a list of good plugins to use.

-----------------------------------------------------------------------------

Additional advice
^^^^^^^^^^^^^^^^^
 As for every powerful and awesome software, `Visual Studio Code`_ will require a small training time,
 but it is far easier to master than other editors like Emacs, Vi(m), or even Atom or Sublime Text.
 Thanks to the complete translation in French (and other languages) of the user interface as well as the documentation!

.. |version-VSCode-extension| image:: https://vsmarketplacebadge.apphb.com/version/naereen.makefiles-support-for-vscode.svg
   :target: https://marketplace.visualstudio.com/items?itemName=naereen.makefiles-support-for-vscode
.. |installs-VSCode-extension| image:: https://vsmarketplacebadge.apphb.com/installs/naereen.makefiles-support-for-vscode.svg
   :target: https://marketplace.visualstudio.com/items?itemName=naereen.makefiles-support-for-vscode
.. |rating-VSCode-extension| image:: https://vsmarketplacebadge.apphb.com/rating/naereen.makefiles-support-for-vscode.svg

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

.. meta::
   :description lang=en: Description of how I use the text editor Visual Studio Code (VSCode)
   :description lang=fr: Page décrivant mon utilisation de l'éditeur de texte Visual Studio Code (VSCode)

##########################################################################
 Mon utilisation de `Visual Studio Code <https://code.visualstudio.com/>`_
##########################################################################

À-propos...
-----------
À-propos de cette page
^^^^^^^^^^^^^^^^^^^^^^
Cette page est là pour décrire rapidement l'utilisation que je fais quotidiennement du génial **Visual Studio Code**, un `éditeur de texte <https://fr.wikipedia.org/wiki/Éditeur_de_texte>`_ multi-plateforme.

.. note:: Qu'est-ce qu'un *éditeur de texte* ?

   « *Un éditeur de texte est un* `logiciel <https://fr.wikipedia.org/wiki/Logiciel>`_ *destiné à la création et l'édition de* `fichiers textes <https://fr.wikipedia.org/wiki/Fichier_texte>`_. »

   « *Son usage est courant, voire incontournable pour certaines tâches informatiques de base comme l'administration de système et le développement de logiciels.* »

   Inutile de dire donc que `je m'en sers constamment <https://wakatime.com/@lbesson/>`_, principalement sous Linux (Ubuntu 15.10), et aussi sur Windows (7).

   La page Wikipédia `sur les éditeurs de textes <https://fr.wikipedia.org/wiki/%C3%89diteur_de_texte#Multi_plates-formes>`_ contient une liste des plus populaires éditeurs de texte multi plates-formes.
   Sublime Text est évidemment dans la liste, accompagné de `gedit <publis/gedit/>`_, des deux légendaires Emacs et Vim, et de Komodo Edit notamment.



Cet article contient de rapides explications sur l'installation et l'utilisation de **https://code.visualstudio.com/**,
ainsi qu'une liste des meilleurs plugins (aussi appelé `greffon <https://fr.wikipedia.org/wiki/Greffon_(informatique)>`_) que j'utilise avec VSCode,
des liens vers mes fichiers de configurations, et des remarques générales.


.. note:: Licence ?

   Cette page, et tous les fichiers liés, sont distribués *librement*, sous les termes de la `licence GPLv3 <LICENSE.html>`_ !
   (comme tout ce que je publie ou distribue sur ce site).

-----------------------------------------------------------------------

À-propos de Visual Studio Code
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Le site officiel est `code.VisualStudio.com <https://code.visualstudio.com/>`_.
Mon article s'intéresse aux versions supérieures à 1.14 de Visual Studio Code.


.. seealso::

   `Sublime Text 3 <https://www.SublimeText.com/3 >`_
      était mon éditeur favori depuis quelques années.
      Après 4 ans d'utilisation intensive de Sublime Text, je suis en train de l'abandonner pour passer à Visual Studio Code, et tel Edith Piaf, `"non, je ne regrette rien" <https://www.youtube.com/results?search_query=%C3%A9dith%20piaf%20je%20ne%20regrette%20rien>`_...


Qu'est-ce que Visual Studio Code ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Visual Studio Code est un éditeur de texte et de code source, disponible sur de multiples plates-formes.
Il est écrit en `TypeScript <http://www.typescriptlang.org/>`_ et dispose d'une API en TypeScript ou en Javascript (avec `nodejs <https://nodejs.org/>`_).
L'application est compilée en Javascript et empaquetée avec `Electron <https://electron.atom.io/>`_.

Visual Studio Code est un logiciel complètement gratuit, multi-plateformes, produit par Microsoft, et dont le code source est distribué librement selon la licence MIT.
Regardez sur GitHub : `Microsoft/vscode <https://github.com/Microsoft/vscode/>`_.

Le logiciel distribué sur `le site de téléchargement <https://code.visualstudio.com/Download>`_, quant à lui, l'est sous `une licence privatrice <https://code.visualstudio.com/license>`_ malheuresement. Oui bon, en même temps, c'est un produit Microsoft, vous vous attendiez à quoi, une license GPL ?!


Visual Studio Code intègre la plupart des *fonctionnalités de base* d'un éditeur de texte, dont la coloration syntaxique personnalisable, l'auto-complétion, un système de plugins...

L'éditeur propose cependant des fonctions plus avancées, dont :

- *Minimap* : prévisualisation de tout le fichier dans une barre latérale,
- Sélection et édition dans plusieurs sections de code en parallèle (multi-curseur),
- Marque-page au sein même des fichiers,
- Sauvegarde automatique,
- Recherche et remplacement par texte simple ou expressions régulières,
- Support de greffons écrits en TypeScript ou Javascript,
- Personnalisation des raccourcis clavier.


.. note::  VS Code est encore en développement actif, mais il marche déjà très bien !


Comment l'installer ?
~~~~~~~~~~~~~~~~~~~~~
Le site officiel `code.visualstudio.com/Download <https://code.visualstudio.com/Download>`_ permet de télécharger la dernière version de VSCode (une version pour OS X, Windows et Ubuntu sont disponibles).

Cette page explique en détails le processus d'installation de VSCode sur différentes plates-formes.

C'est facile, gratuit et rapide :) !


Comment installer des greffons ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. note:: Greffon ?

   Un `greffon`_, ou *plugin* en anglais, est un composant supplémentaire qui complète un `logiciel`_ hôte pour lui apporter de nouvelles fonctionnalités.


VS Code est équipé d'un gestionnaire de paquets qui permet à l'utilisateur de trouver, installer, mettre à jour et supprimer des paquets additionnels !

Le gestionnaire de paquet est une fonctionnalité officielle de VS Code, contrairement à `packagecontrol.io <https://packagecontrol.io>`_ pour Sublime Text.
Regardez un peu sur `marketplace.visualstudio.com/vscode <https://marketplace.visualstudio.com/vscode>`_ pour plus de détails.

Un gros avantage que je trouve à VS Code est qu'il est disponible en français (entièrement), et dans une douzaine d'autres langues. Cf. `<https://code.visualstudio.com/docs/getstarted/locales>`_.

Plus de détails ailleurs !
~~~~~~~~~~~~~~~~~~~~~~~~~~

Il y a une documentation officielle, très bien écrite (en anglais) : `code.visualstudio.com/docs <https://code.visualstudio.com/docs>`_.

.. seealso::

   Cette "super" liste (en anglais) donne de très bons conseils :
   `github.com/viatsko/awesome-vscode <https://github.com/viatsko/awesome-vscode>`_.


---------------------------------------------------------------------

Mon utilisation de Visual Studio Code
---------------------------------
`Ma configuration <publis/VSCode/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Mes fichiers de configurations, snippets et scripts de constructions, pour `Visual Studio Code`_ sont tous dans le dossier `publis/VSCode <publis/VSCode/>`_.

Pour utiliser un de ces fichiers, il suffit de le copier dans `votre dossier User/ <https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations>`_.


:État: *Maintenu activement* (juillet 2017).

Config
~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `<https://code.visualstudio.com/docs/getstarted/settings>`_ explique comment *configurer* VS Code.


Mes fichiers de configurations :

* `settings.json <publis/VSCode/settings.json>`_ est le fichier de configuration principal.

Raccourcis clavier
~~~~~~~~~~~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `<https://code.visualstudio.com/docs/getstarted/keybindings#_customizing-shortcuts>`_.


Comme (presque) tout dans VS Code, il est facile de modifier ou d'ajouter des raccourcis clavier.
Cela peut être fait globalement, ou projet par projet, ou langage par langage.

* `keybindings.json <publis/VSCode/keybindings.json>`_ sont mes raccourcis clavier (ajoute notamment ``ctrl+e`` pour aller en fin de ligne ou ``ctrl+maj+e`` en début de ligne).


Snippets
~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `<https://code.visualstudio.com/docs/editor/userdefinedsnippets>`_ décrit entièrement le fonctionnement de ces snippets ("morceaux de codes").


Liste de mes snippets, dans ce dossier : `snippets <publis/VSCode/snippets>`_.

Scripts de construction
~~~~~~~~~~~~~~~~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `<https://code.visualstudio.com/docs/editor/tasks>`_ décrit entièrement le fonctionnement de ces scripts de construction.


Avec VS Code (comme avec d'autres bons éditeurs de texte), il est possible de construire, exécuter ou compiler automatiquement et facilement vos fichiers.
VS Code est livré avec des scripts de construction pour des tâches liées au développement Javascript (npm, bower etc), et il est facile d'en créer et d'en installer de nouveaux.


Liste de mes snippets, dans ce dossier : `tasks <publis/VSCode/tasks>`_.


Macro
~~~~~
Pas encore.

-----------------------------------------------------------------------------

Les meilleurs greffons ?
^^^^^^^^^^^^^^^^^^^^^^^^
Tous ces greffons sont **gratuits**, **libres** et **open-source**, et ils sont tous installables facilement depuis le gestionnaire de paquet (``Ctrl+Maj+X``).

Pour chaque paquet cité ci-dessous, un lien vers sa page d'information sur `marketplace.visualstudio.com/vscode <https://marketplace.visualstudio.com/vscode>`_ est donné.

.. note:: Mon propre greffon ?

   Pas encore.

   Pour Sublime Text 3, j'ai écrit `ce greffon, SwitchDictionary <https://github.com/Naereen/SublimeText3_SwitchDictionary/>`_, disponible via PackageControl, cf. `SwitchDictionary <https://packagecontrol.io/SwitchDictionary>`_.


Petits greffons de personnalisation :

* `Paste and Indent <https://marketplace.visualstudio.com/items?itemName=Rubymaniac.vscode-paste-and-indent>`_ : paste code with "correct" indentation.
* `Power Mode <https://marketplace.visualstudio.com/items?itemName=hoovercj.vscode-power-mode>`_ : your code is powerful, unleash it! Useless but fun!
* `Select Line Status Bar <https://marketplace.visualstudio.com/items?itemName=tomoki1207.selectline-statusbar>`_ : displays selected lines count in status bar.
* `Shortcuts <https://marketplace.visualstudio.com/items?itemName=gizak.shortcuts>`_ : add handy shortcuts to your status bar.
* `Sublime Text Keymap <https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings>`_ : popular Sublime Text keybindings for VS Code.


Greffons ajoutant de super fonctionnalités :

* `Align <https://marketplace.visualstudio.com/items?itemName=steve8708.Align>`_ : align text in vscode like the atom-alignment package.
* `Auto Close Tag <https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag>`_ : automatically add HTML/XML close tag, same as Visual Studio IDE or Sublime Text.
* `Bookmarks <https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks>`_ : mark lines and jump to them.
* `Color Highlight <https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight>`_ : highlight web colors in your editor.
* `Calculate <https://marketplace.visualstudio.com/items?itemName=acarreiro.calculate>`_ : select some math, evaluate it.
* `change-case <https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case>`_ : quickly change the case (camelCase, CONSTANT_CASE, snake_case, etc) of the current selection or current word.
* `Clipboard History <https://marketplace.visualstudio.com/items?itemName=Anjali.clipboard-history>`_ : keep a history of your copied items and re-paste if needed.
* `Gremlins <https://marketplace.visualstudio.com/items?itemName=nhoizey.gremlins>`_ : reveal invisible whitespace characters and non-breaking spaces.
* `Trailing Spaces <https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces>`_ : highlight trailing spaces and delete them in a flash!
* `WakaTime <https://marketplace.visualstudio.com/items?itemName=WakaTime.vscode-wakatime>`_ : Metrics, insights, and time tracking automatically generated from your programming activity.


Un meilleur support pour certains langages :

* `Bash Debug <https://marketplace.visualstudio.com/items?itemName=rogalmic.bash-debug>`_ a debugger extension for bash scripts (using bashdb).
* `Python <https://marketplace.visualstudio.com/items?itemName=donjayamanne.python>`_ : linting, Debugging (multi threaded, web apps), Intellisense, auto-completion, code formatting, snippets, unit testing, and more.
* `MagicPython <https://marketplace.visualstudio.com/items?itemName=magicstack.MagicPython>`_ : syntax highlighter for cutting edge Python.
* `Python-autopep8 <https://marketplace.visualstudio.com/items?itemName=himanoa.Python-autopep8>`_ : applies autopep8 to your current file.
* `Git Blame <https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame>`_ : see git blame information in the status bar.
* `Git History (git log) <https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory>`_ : view git log, file or line History.
* `gitignore <https://marketplace.visualstudio.com/items?itemName=codezombiech.gitignore>`_ : language support for .gitignore files. Lets you pull ``.gitignore`` files from the `<https://github.com/github/gitignore>`_ repository.
* `HTML Preview <https://marketplace.visualstudio.com/items?itemName=tht13.html-preview-vscode>`_ : a HTML previewer.
* `HTML Snippets <https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets>`_ : full HTML tags including HTML5 Snippets.
* `IntelliSense for CSS class names <https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion>`_ : provides CSS class name completion for the HTML class attribute based on the CSS files in your workspace.
* `JS-CSS-HTML Formatter <https://marketplace.visualstudio.com/items?itemName=lonefy.vscode-JS-CSS-HTML-formatter>`_ : Format, prettify and beautify JS, CSS, HTML code by using shortcuts, context menu or CLI.
* `Julia <https://marketplace.visualstudio.com/items?itemName=julialang.language-julia>`_ : Julia Language Support.
* `LaTeX Workshop <https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop>`_ : boost LaTeX typesetting efficiency with preview, compile, autocomplete, colorize, and more.
* `Markdown All in One <https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one>`_ : all you need to write Markdown (keyboard shortcuts, table of contents, auto preview and more).
* `minify <https://marketplace.visualstudio.com/items?itemName=HookyQR.minify>`_ : minify for VS Code. Minify with command, and (optionally) re-minify on save.
* `OCaml <https://marketplace.visualstudio.com/items?itemName=hackwaly.ocaml>`_ : rich OCaml language support for Visual Studio Code. It really works perfectly well!
* `Ocaml tuareg-master <https://marketplace.visualstudio.com/items?itemName=muchtrix.ocaml-tuareg-master>`_ : a quick extension to send single OCaml statement (finished with ``;;``) to opened console.
* `reStructuredText <https://marketplace.visualstudio.com/items?itemName=lextudio.restructuredtext>`_ : edit reStructuredText (RST, ReST) with accurate live preview!
* `Table Formatter <https://marketplace.visualstudio.com/items?itemName=shuworks.vscode-table-formatter>`_ : format table syntax of Markdown, Textile and reStructuredText.


Greffons plus lourds, ou conçu pour un langage spécifique :

* `Code Spellchecker <https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker>`_ : spelling checker for source code.
* `Color Picker <https://marketplace.visualstudio.com/items?itemName=anseki.vscode-color>`_ : helper with GUI to generate color codes such as CSS color notations.
* `Dash <https://marketplace.visualstudio.com/items?itemName=deerawan.vscode-dash>`_ quickly access local documentation with `Dash <https://kapeli.com/dash>`_ or `Zeal <http://zealdocs.org/>`_ integration in Visual Studio Code.
* `:emojisense: <https://marketplace.visualstudio.com/items?itemName=bierner.emojisense>`_ adds suggestions and autocomplete for emoji to VS Code.
* `Gitmoji snippets <https://marketplace.visualstudio.com/items?itemName=thierrymichel.vscode-gitmoji-snippets>`_ : easy-to-use emojis for your commit messages.


.. note:: Purement objective

   Cette liste reflète simplement mon utilisation quotidienne de VSCode. Ces choix sont purement objectifs.
   Par exemple, `cette liste "awesome-vscode" <https://github.com/viatsko/awesome-vscode`_ présente aussi une liste de greffons utiles à avoir.

-----------------------------------------------------------------------------

Un dernier conseil ?
^^^^^^^^^^^^^^^^^^^^
 Comme pour tout logiciel aussi puissant et technique, `Visual Studio Code`_ demande un certain temps d'adaptation.
 Soyez persévérant, ça en vaut la peine.


.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

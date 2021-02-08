.. meta::
   :description lang=en: Description of how I use the text editor Visual Studio Code (VSCode)
   :description lang=fr: Page décrivant mon utilisation de l'éditeur de texte Visual Studio Code (VSCode)

###########################################################################
 Mon utilisation de `Visual Studio Code <https://code.visualstudio.com/>`_
###########################################################################

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

.. figure:: _images/.visualstudiocode.png
    :width: 100%
    :align: center
    :alt: Aperçu de Visual Studio Code avec ma configuration (septembre 2018).
    :target: _images/.visualstudiocode.png

    Aperçu de Visual Studio Code avec ma configuration (septembre 2018).


.. seealso::

   `Sublime Text 3 <https://www.SublimeText.com/3>`_
      était mon éditeur favori depuis quelques années.
      Après 4 ans d'utilisation intensive de Sublime Text, je suis en train de l'abandonner pour passer à Visual Studio Code, et tel Edith Piaf, `"non, je ne regrette rien" <https://www.youtube.com/results?search_query=%C3%A9dith%20piaf%20je%20ne%20regrette%20rien>`_…


Qu'est-ce que Visual Studio Code ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Visual Studio Code est un éditeur de texte et de code source, disponible sur de multiples plates-formes.
Il est écrit en `TypeScript <http://www.typescriptlang.org/>`_ et dispose d'une API en TypeScript ou en Javascript (avec `nodejs <https://nodejs.org/>`_).
L'application est compilée en Javascript et empaquetée avec `Electron <https://electron.atom.io/>`_.

Visual Studio Code est un logiciel complètement gratuit, multi-plateformes, produit par Microsoft, et dont le code source est distribué librement selon la licence MIT.
Regardez sur GitHub : `Microsoft/vscode <https://github.com/Microsoft/vscode/>`_.

Le logiciel distribué sur `le site de téléchargement <https://code.visualstudio.com/Download>`_, quant à lui, l'est sous `une licence privatrice <https://code.visualstudio.com/license>`_ malheuresement. Oui bon, en même temps, c'est un produit Microsoft, vous vous attendiez à quoi, une license GPL ?!


Visual Studio Code intègre la plupart des *fonctionnalités de base* d'un éditeur de texte, dont la coloration syntaxique personnalisable, l'auto-complétion, un système de plugins…

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
-------------------------------------
`Ma configuration <publis/VSCode/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Mes fichiers de configurations, snippets et scripts de constructions, pour `Visual Studio Code`_ sont tous dans le dossier `publis/VSCode <publis/VSCode/>`_.

Pour utiliser un de ces fichiers, il suffit de le copier dans `votre dossier User/ <https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations>`_.


:État: *Maintenu activement* (juillet 2017).

Config
~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `"settings" <https://code.visualstudio.com/docs/getstarted/settings>`_ explique comment *configurer* VS Code.


Mes fichiers de configurations :

* `settings.json <publis/VSCode/settings.json>`_ est le fichier de configuration principal.

Raccourcis clavier
~~~~~~~~~~~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `"keybindings" <https://code.visualstudio.com/docs/getstarted/keybindings#_customizing-shortcuts>`_.


Comme (presque) tout dans VS Code, il est facile de modifier ou d'ajouter des raccourcis clavier.
Cela peut être fait globalement, ou projet par projet, ou langage par langage.

* `keybindings.json <publis/VSCode/keybindings.json>`_ sont mes raccourcis clavier (ajoute notamment ``ctrl+e`` pour aller en fin de ligne ou ``ctrl+maj+e`` en début de ligne).


Snippets
~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `"userdefinedsnippets" <https://code.visualstudio.com/docs/editor/userdefinedsnippets>`_ décrit entièrement le fonctionnement de ces snippets ("morceaux de codes").


Liste de mes snippets, dans ce dossier : `snippets <publis/VSCode/snippets>`_.

Scripts de construction
~~~~~~~~~~~~~~~~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `"tasks" <https://code.visualstudio.com/docs/editor/tasks>`_ décrit entièrement le fonctionnement de ces scripts de construction.


Avec VS Code (comme avec d'autres bons éditeurs de texte), il est possible de construire, exécuter ou compiler automatiquement et facilement vos fichiers.
VS Code est livré avec des scripts de construction pour des tâches liées au développement Javascript (npm, bower etc), et il est facile d'en créer et d'en installer de nouveaux.


Liste de mes snippets, dans ce dossier : `tasks <publis/VSCode/tasks>`_.


Macro
~~~~~
Pas encore.

Interlude comique
~~~~~~~~~~~~~~~~~

.. image:: https://www.commitstrip.com/wp-content/uploads/2020/06/Strip-Visual-Studio-Code-650-final.jpg
   :src:  http://www.commitstrip.com/fr/2020/06/11/im-watching-you/

-----------------------------------------------------------------------------

Les meilleurs greffons ?
^^^^^^^^^^^^^^^^^^^^^^^^
Tous ces greffons sont **gratuits**, **libres** et **open-source**, et ils sont tous installables facilement depuis le gestionnaire de paquet (``Ctrl+Maj+X``).

Pour chaque paquet cité ci-dessous, un lien vers sa page d'information sur `marketplace.visualstudio.com/vscode <https://marketplace.visualstudio.com/vscode>`_ est donné.

.. note:: Mon propre greffon ?

   Pas encore.

   Pour Sublime Text 3, j'ai écrit `ce greffon, SwitchDictionary <https://github.com/Naereen/SublimeText3_SwitchDictionary/>`_, disponible via PackageControl, cf. `SwitchDictionary <https://packagecontrol.io/SwitchDictionary>`_.


Petits greffons de personnalisation :

* `Paste and Indent <https://marketplace.visualstudio.com/items?itemName=Rubymaniac.vscode-paste-and-indent>`_ : copie-colle avec l'indentation "qu'il faut".
* `Power Mode <https://marketplace.visualstudio.com/items?itemName=hoovercj.vscode-power-mode>`_ : « your code is powerful, unleash it! Useless but fun! »
* `Select Line Status Bar <https://marketplace.visualstudio.com/items?itemName=tomoki1207.selectline-statusbar>`_ : affiche le nombre de ligne sélectionnée dans la bar de statut.
* `Shortcuts <https://marketplace.visualstudio.com/items?itemName=gizak.shortcuts>`_ : permet d'ajouter des raccourcis pratiques dans la barre de statut.
* `Sublime Text Keymap <https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings>`_ : permet d'utiliser directement les raccourcis clavier de Sublime Text.


Greffons ajoutant de super fonctionnalités :

* `Align <https://marketplace.visualstudio.com/items?itemName=steve8708.Align>`_ : pour facilement aligner du texte sur plusieurs lignes.
* `Auto Close Tag <https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag>`_ : ferme automatiquement les tags HTML/XML, comme pour Sublime Text.
* `Bookmarks <https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks>`_ : marque des lignes et permet d'y revenir rapidement plus tard.
* `Color Highlight <https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight>`_ : surligne en couleur les codes couleurs dans l'éditeur, comme en RGB #ff00ff par exemple.
* `Calculate <https://marketplace.visualstudio.com/items?itemName=acarreiro.calculate>`_ : évalue rapidement des expressions mathématiques sélectionnées et insert le résultat. Très pratique !
* `change-case <https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case>`_ : pour changer rapidement la casse de la sélection ou du mot courant (camelCase, CONSTANT_CASE, snake_case, etc).
* `Clipboard History <https://marketplace.visualstudio.com/items?itemName=Anjali.clipboard-history>`_ : garde un historique des élements copiés et permet de re-coller depuis l'historique si besoin. Utile si vous n'utilisez pas déjà un gestionnaire de presse-papier. Moi j'utilise `glipper <https://launchpad.net/glipper>`_.
* `Gremlins <https://marketplace.visualstudio.com/items?itemName=nhoizey.gremlins>`_ : affiche les caractères invisibles comme les espaces invisibles et les caractères de largeur nulle, pour les effacer rapidement.
* `Trailing Spaces <https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces>`_ : affiche les espaces restant en fin de ligne, et permet de les supprimer rapidement !
* `VSCode Google Translate <https://marketplace.visualstudio.com/items?itemName=funkyremi.vscode-google-translate>`_ : permet de facilement traduire un morceau de texte sélectionné (ou des lignes) dans n'importe quelle language, avec `Google Translate <https://translate.google.com/>`_.
* `WakaTime <https://marketplace.visualstudio.com/items?itemName=WakaTime.vscode-wakatime>`_ : métriques, informations et temps mesuré automatiquement pour vos activités de programmation. J'aime bien Wakatime, j'en parle `ici (wakatime.html) <wakatime.html>`_.


Un meilleur support pour certains langages :

* `Bash Debug <https://marketplace.visualstudio.com/items?itemName=rogalmic.bash-debug>`_ : permet le débogage de scripts bash (avec `bashdb <http://bashdb.sourceforge.net/>`_).
* `Python <https://marketplace.visualstudio.com/items?itemName=donjayamanne.python>`_ : évaluation de la qualité du code, débogage (y compris multi-microprocessus, applications web), Intellisense, auto-complétion, formatage de code, morceaux de code, tests unitaires, et plus, pour le `langage Python <python.html>`_.
* `MagicPython <https://marketplace.visualstudio.com/items?itemName=magicstack.MagicPython>`_ : meilleure coloration syntaxique pour tous les derniers ajouts au langage Python.
* `Python-autopep8 <https://marketplace.visualstudio.com/items?itemName=himanoa.Python-autopep8>`_ : applique `autopep8 <https://pypi.org/project/autopep8>`_ au fichier courant.
* `Git Blame <https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame>`_ : affiche des informations de ``git blame`` dans la barre de statut.
* `Git History (git log) <https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory>`_ : affiche le journal git, et l'historique pour un fichier ou une ligne précise.
* `gitignore <https://marketplace.visualstudio.com/items?itemName=codezombiech.gitignore>`_ : supporte les fichiers ``.gitignore``. Permet d'ajouter un fichier ``.gitignore`` facilement depuis la collection `<https://github.com/github/gitignore>`_.
* `HTML Preview <https://marketplace.visualstudio.com/items?itemName=tht13.html-preview-vscode>`_ : affiche un aperçu automatiquement mis-à-jour pour les fichiers HTML.
* `HTML Snippets <https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets>`_ : tous les tags HTML, y compris pour HTML5.
* `JS-CSS-HTML Formatter <https://marketplace.visualstudio.com/items?itemName=lonefy.vscode-JS-CSS-HTML-formatter>`_ : Formate (``prettify`` et ``beautify``) pour Javascript, CSS, HTML en utilisant des raccourcis clavier ou le menu contextuel.
* `Julia <https://marketplace.visualstudio.com/items?itemName=julialang.language-julia>`_ : support pour le langage Julia.
* `LaTeX Workshop <https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop>`_ : support très complet pour éditer des fichiers LaTeX efficacement avec aperçu, compilation, autocomplétion, coloration syntaxique, et plus.
* C'est une extension que j'ai faite moi-même! Mais maintenant, à partir de 2019, cela ne sert à rien, car VSCode est livré avec un support intégré pour Makefiles. `Makefiles Support For VSCode <https://marketplace.visualstudio.com/items?itemName=naereen.makefiles-support-for-vscode>`_ : est `mon <https://github.com/Naereen/Makefiles-support-for-VSCode/>`_ extension pour ajouter le support des fichiers `GNU Makefile <https://www.gnu.org/software/make/manual/make.html>`_ (pour l'instant très simple : juste la coloration et la détection, pas encore l'intégration dans le système de construction). |version-VSCode-extension| |installs-VSCode-extension| |rating-VSCode-extension|
* `Make <https://marketplace.visualstudio.com/items?itemName=technosophos.vscode-make>`_ seems to be exactly offering what I had on `Sublime Text <sublimetext.en.html>`_ and was using extensively: « Run any Makefile target with ease. Just run CMD-SHIFT-P and type make. You will be prompted for a target. » ! Mais `je ne peux pas le faire fonctionner localement... <https://github.com/technosophos/vscode-make/issues/10>`_.
* `Make support and task provider <https://marketplace.visualstudio.com/items?itemName=carlos-algms.make-task-provider>`_ marche un peu, et c'est la seule qui propose ce genre de fonctionnalités. Ce n'est pas parfait ! Mais c'est déjà ça...

.. warning:: J'ai aussi essayé, `Makefile Command Runner <https://marketplace.visualstudio.com/items?itemName=madmous.makefile-command-runner>`_ et `makeRunner <https://marketplace.visualstudio.com/items?itemName=alexnesnes.makeRunner>`_ le 08/02/2021, sans succès : les deux s'installent sans problème, mais ne font rien. Flemme d'aller signaler et aider à corriger ça, trop de boulot ces temps-ci.

* `Markdown All in One <https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one>`_ : tout ce qu'il faut pour éditer des fichiers Markdown (raccourcis clavier, table des matières, aperçu latéral etc).
* `minify <https://marketplace.visualstudio.com/items?itemName=HookyQR.minify>`_ : minifier les codes Javascript, CSS et HTML, depuis la palette ou en sauvegardant un fichier (optionnel).
* `OCaml <https://marketplace.visualstudio.com/items?itemName=hackwaly.ocaml>`_ : support très complet du langage OCaml pour Visual Studio Code. Ça marche vraiment très bien !
* `Ocaml tuareg-master <https://marketplace.visualstudio.com/items?itemName=muchtrix.ocaml-tuareg-master>`_ : petite extension pour envoyer un bloc OCaml (terminé par ``;;``) dans un terminal ouvert.
* `reStructuredText <https://marketplace.visualstudio.com/items?itemName=lextudio.restructuredtext>`_ : permet d'éditer des fichiers reStructuredText (RST, ReST) avec un aperçu en temps réel précis !
* `Table Formatter <https://marketplace.visualstudio.com/items?itemName=shuworks.vscode-table-formatter>`_ : formate des tableaux écrits en texte avec la syntaxe Markdown, Textile et reStructuredText.


Greffons plus lourds, ou conçu pour un langage spécifique :

* `VSCode LTex <https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex>`_ (et `sa documentation <https://valentjn.github.io/vscode-ltex/index.html>`_) : vérification de la grammaire avec `LanguageTool <https://languagetool.org/>`_ : il fonctionne directement dans les fichiers LaTeX et Markdown mais peut être utilisé sur d'autres formats également. Je trouve ça incroyable, je viens de le découvrir (février 2021).
* `Readability Check <https://marketplace.visualstudio.com/items?itemName=jemcclin.readabilitycheck>`_ pour vérifier la lisibilité (mais seulement en anglais).
* `Code Spellchecker <https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker>`_ : correcteur d'orthographe pour les commentaires et les noms de variables dans du code.
* `Color Picker <https://marketplace.visualstudio.com/items?itemName=anseki.vscode-color>`_ : utilitaire pour sélectionner une couleur et insérer son code CSS.
* `Dash <https://marketplace.visualstudio.com/items?itemName=deerawan.vscode-dash>`_ : accéder rapidement à la documentation locale via `Dash.app <https://kapeli.com/dash>`_ ou `Zeal <http://zealdocs.org/>`_.
* `:emojisense: <https://marketplace.visualstudio.com/items?itemName=bierner.emojisense>`_ : ajoute des suggestions et l'autocomplétion pour des emoji dans Markdown.
* `Gitmoji snippets <https://marketplace.visualstudio.com/items?itemName=thierrymichel.vscode-gitmoji-snippets>`_ : pareil dans les messages de commit pour Git.


.. note:: Purement objective

   Cette liste reflète simplement mon utilisation quotidienne de VSCode. Ces choix sont purement objectifs.
   Par exemple, `cette liste "awesome-vscode" <https://github.com/viatsko/awesome-vscode>`_ présente aussi une liste de greffons utiles à avoir.

-----------------------------------------------------------------------------

Un dernier conseil ?
^^^^^^^^^^^^^^^^^^^^
 Comme pour tout logiciel aussi puissant et technique, `Visual Studio Code`_ demande un léger temps d'adaptation,
 mais il est bien plus simple à prendre en main que d'autres éditeurs comme Emacs, Vi(m), ou même Atom ou Sublime Text.
 Merci à la traduction entièrement en français (et d'autres langues) de son interface et documentation !

.. |version-VSCode-extension| image:: https://vsmarketplacebadge.apphb.com/version/naereen.makefiles-support-for-vscode.svg
   :target: https://marketplace.visualstudio.com/items?itemName=naereen.makefiles-support-for-vscode
.. |installs-VSCode-extension| image:: https://vsmarketplacebadge.apphb.com/installs/naereen.makefiles-support-for-vscode.svg
   :target: https://marketplace.visualstudio.com/items?itemName=naereen.makefiles-support-for-vscode
.. |rating-VSCode-extension| image:: https://vsmarketplacebadge.apphb.com/rating/naereen.makefiles-support-for-vscode.svg

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

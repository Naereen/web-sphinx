.. meta::
   :description lang=fr: Page décrivant mon utilisation de l'éditeur de texte Sublime Text 3 (ST3)
   :description lang=en: Description of how I use the text editor Sublime Text 3 (ST3)

#####################################################################
 Mon utilisation de `Sublime Text 3 <http://www.sublimetext.com/3>`_
#####################################################################

À-propos...
-----------
À-propos de cette page
^^^^^^^^^^^^^^^^^^^^^^
Cette page est là pour décrire rapidement l'utilisation que je fais quotidiennement du génial **Sublime Text 3**, un `éditeur de texte <https://fr.wikipedia.org/wiki/Éditeur_de_texte>`_ multi-plateforme.

.. note:: Qu'est-ce qu'un *éditeur de texte* ?

   « *Un éditeur de texte est un* `logiciel <https://fr.wikipedia.org/wiki/Logiciel>`_ *destiné à la création et l'édition de* `fichiers textes <https://fr.wikipedia.org/wiki/Fichier_texte>`_. »

   « *Son usage est courant, voire incontournable pour certaines tâches informatiques de base comme l'administration de système et le développement de logiciels.* »

   Inutile de dire donc que `je me sers constamment d'un éditeur de texte <https://wakatime.com/@lbesson/>`_, principalement sous Linux (Ubuntu 17.10), et aussi sur Windows (7/8/10).

   La page Wikipédia `sur les éditeurs de textes <https://fr.wikipedia.org/wiki/%C3%89diteur_de_texte#Multi_plates-formes>`_ contient une liste des plus populaires éditeurs de texte multi plates-formes.
   Sublime Text est évidemment dans la liste, accompagné de `gedit <publis/gedit/>`_, des deux légendaires Emacs et Vim, et de Komodo Edit notamment.



Cet article contient de rapides explications sur l'installation et l'utilisation de **Sublime Text** (2 ou 3),
ainsi qu'une liste des meilleurs plugins (aussi appelé `greffon <https://fr.wikipedia.org/wiki/Greffon_(informatique)>`_) que j'utilise avec ST3,
des liens vers mes fichiers de configurations, et des remarques générales.

 (Et *étrangement*, cette page est la page la plus consultée sur `mon site web <http://perso.crans.org/besson/>`_. Si besoin, `contactez moi <callme.fr.html>`_ si vous avez des suggestions pour améliorer cette page, ou juste dire merci si ça vous a été utile :) !)


.. note:: Licence ?

   Cette page, et tous les fichiers liés, sont distribués *librement*, sous les termes de la `licence GPLv3 <LICENSE.html>`_ !
   (comme tout ce que je publie ou distribue sur ce site).

-----------------------------------------------------------------------

À-propos de Sublime Text 3
^^^^^^^^^^^^^^^^^^^^^^^^^^
Le site officiel est `www.SublimeText.com/3 <http://www.sublimetext.com/3>`_.
Mon article s'intéresse à la version 3 de Sublime Text (actuellement v3.083, *sortie le 26 mars 2015*)

.. warning:: Vivre dangereusement :) ?

   Vous pouvez aussi essayer la version `3dev <http://www.sublimetext.com/3dev>`_, mise à jour plus souvent (mais elle n'est disponible que pour les utilisateurs enregistrés, i.e. il vous faudra payer une licence -- ce n'est pas mon cas).


.. seealso::

   `Visual Studio Code <https://code.visualstudio.com/>`_
      est un superbe éditeur aussi ! Développé `par Microsoft <https://github.com/Microsoft/vscode/>`_,
      il a l'avantage d'être complètement `libre et gratuit <https://github.com/Microsoft/vscode/blob/master/LICENSE.txt>`_.
      Après 4 ans d'utilisation intensive de Sublime Text, je l'ai abandonné pour passer entièrement à Visual Studio Code, et tel Edith Piaf, `"non, je ne regrette rien" <https://www.youtube.com/results?search_query=%C3%A9dith%20piaf%20je%20ne%20regrette%20rien>`_...


Qu'est-ce que Sublime Text ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sublime Text est un éditeur de texte et de code source, disponible sur de multiples plates-formes.
Il dispose d'une API utilisant Python.

Sublime Text est un logiciel propriétaire, soumis à l'acceptation d'une licence, mais est entièrement gratuit.
La licence (gratuite) est à durée indéterminée, avec seulement des rappels occasionnels proposant d'acheter une inutile licence commerciale (pour 20$).


Sublime Text intègre la plupart des *fonctionnalités de base* d'un éditeur de texte, dont la coloration syntaxique personnalisable, l'auto-complétion, un système de plugins...

L'éditeur propose cependant des fonctions plus avancées, dont :

- *Minimap* : prévisualisation de tout le fichier dans une barre latérale,
- Sélection et édition dans plusieurs sections de code en parallèle (multi-curseur),
- Marque-page au sein même des fichiers,
- Sauvegarde automatique,
- Recherche et remplacement par texte simple ou expressions régulières,
- Support des macros et de greffons écrits en `Python <python.html>`_,
- Personnalisation des raccourcis clavier.


Comment l'installer ?
~~~~~~~~~~~~~~~~~~~~~
Le site officiel `www.SublimeText.com/3`_ permet de télécharger la dernière version de ST3 (une version pour OS X, Windows et Ubuntu sont disponibles).

Cette page `docs.sublimetext.info/en/sublime-text-3/getting_started/install.html <http://docs.sublimetext.info/en/sublime-text-3/getting_started/install.html>`_ explique en détails le processus d'installation de ST3 sur différentes plates-formes.

C'est facile, gratuit et rapide :) !


Comment installer des greffons ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. note:: Greffon ?

   Un `greffon`_, ou *plugin* en anglais, est un composant supplémentaire qui complète un `logiciel`_ hôte pour lui apporter de nouvelles fonctionnalités.


Sublime Text peut être équipé d'un gestionnaire de paquets qui permet à l'utilisateur de trouver, installer, mettre à jour et supprimer des paquets additionnels, sans même avoir à redémarrer Sublime Text !

Ce projet s'appelle sobrement **Sublime Text Package Manager**, et est hébergé sur ce site `packagecontrol.io <https://packagecontrol.io>`_.
Cette page `packagecontrol.io/installation <https://packagecontrol.io/installation>`_ permet l'installation du gestionnaire de greffon, qui est la seule étape *un peu sale* (mais ne vous inquiétez pas, aucun risque).

Ce greffon *un peu magique* a déjà plus de `3.01 millions de téléchargements <https://packagecontrol.io/browse/authors/Will%20Bond%20%28wbond%29>`_ à son historique !


Vous pouvez avoir un aperçu de la richesse de cette collection de greffon en allant voir ce classement (`packagecontrol.io/browse/popular <https://packagecontrol.io/browse/popular>`_) des greffons les plus téléchargés.

Plus de détails ailleurs !
~~~~~~~~~~~~~~~~~~~~~~~~~~
Ce site (en anglais) est la documentation (non-officielle) de référence : `docs.sublimetext.info <http://docs.sublimetext.info/en/latest/>`_.
Bravo à eux, leur site est parfaitement bien conçu, il contient toutes les informations nécessaires et bien plus encore !

Ce (vieux) `wiki dédié à Sublime Text <http://sublime-text-community-packages.googlecode.com/svn/pages/This-site.html>`_ peut aussi aider.

.. seealso::

   Ces listes (en anglais) donnent aussi de très bons conseils, voir `djyde/awesome-sublime-packages <https://github.com/djyde/awesome-sublime-packages>`_, `JaredCubilla/sublime <https://github.com/JaredCubilla/sublime>`_, `dreikanter/sublime-bookmarks <https://github.com/dreikanter/sublime-bookmarks>`_.


---------------------------------------------------------------------

Mon utilisation de Sublime Text 3
---------------------------------
`Ma configuration <publis/ST3/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Mes fichiers de configurations, snippets et scripts de constructions, pour `Sublime Text 3`_ sont tous dans le dossier `publis/ST3 <publis/ST3/>`_.

Pour utiliser un de ces fichiers (``.sublime-settings``, ``.sublime-snippet`` ou ``.sublime-build``), il suffit de le copier dans `votre dossier Packages/User <http://docs.sublimetext.info/en/sublime-text-3/basic_concepts.html#the-packages-directory>`_.
Plus de détails pour `les fichiers .sublime-settings <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html#where-to-store-user-settings-once-again>`_, ou `les fichiers .sublime-build <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html#where-to-store-build-systems>`_.


:État: *Maintenu activement* (mai 2016).

Config
~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `customization/settings.html <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html>`_ explique comment configurer *en profondeur chaque aspect* de ST3.


Mes fichiers de configurations :

* `Preferences.sublime-settings <publis/ST3/Preferences.sublime-settings>`_ est le fichier de configuration principal.

* `Distraction Free.sublime-settings <publis/ST3/Distraction%20Free.sublime-settings>`_ est la configuration spécifique au mode "Sans distraction". Ce mode permet notamment de projeter du code lors d'un exposé ou d'un cours que je donne en amphi, et de zoomer au maximum sur un élément important.

* `Package Control.sublime-settings <publis/ST3/Package%20Control.sublime-settings>`_ donne simplement la liste complète des paquets installés (aussi directement ici `packages.list <publis/packages.list>`_).

Raccourcis clavier
~~~~~~~~~~~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `customization/key_bindings <http://docs.sublimetext.info/en/sublime-text-3/customization/key_bindings.html>`_.


Comme (presque) tout dans Sublime Text, il est facile de modifier ou d'ajouter des raccourcis clavier.
Cela peut être fait globalement, ou projet par projet, ou langage par langage.

* `Default (Linux).sublime-keymap <publis/ST3/Default%20(Linux).sublime-keymap>`_ sont mes raccourcis clavier (ajoute notamment ``ctrl+e`` pour aller en fin de ligne ou ``ctrl+maj+e`` en début de ligne),
* `Python.sublime-keymap <publis/ST3/Python.sublime-keymap>`_ ajoute quelques raccourcis spécifiques à Python (avec `Anaconda IDE <http://damnwidget.github.io/anaconda/IDE/>`_).


Snippets
~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `extensibility/snippets.html <http://docs.sublimetext.info/en/sublime-text-3/extensibility/snippets.html>`_ décrit entièrement le fonctionnement de ces snippets ("morceaux de codes").


Liste de mes snippets :

* `newpython.sublime-snippet <publis/ST3/newpython.sublime-snippet>`_ permet de facilement créer un nouveau script `Python <python.html>`_,
* `newpython3.sublime-snippet <publis/ST3/newpython3.sublime-snippet>`_ permet de facilement créer un nouveau script `Python 3 <python.html>`_,
* `newscript.sublime-snippet <publis/ST3/newscript.sublime-snippet>`_ fait la même chose pour un `script GNU Bash <bin/>`_.
* `autotex.sublime-snippet <publis/ST3/autotex.sublime-snippet>`_ permet de créer un document \\(\\LaTeX{}\\) vide utilisant `autotex <bin/autotex>`_.
* `StrapDownJS.sublime-snippet <publis/ST3/StrapDownJS.sublime-snippet>`_ facilite la création d'un fichier HTML utilisant mon (super) projet `StrapDownJS <http://lbesson.bitbucket.io/md/>`_ !
* Snippets pour LaTeX, permettant de créer un nouvel environnement vide (``\begin{truc}...\env{truc}``) de maths, plus rapidement, pour les environnement suivants : `defn <publis/ST3/defn.sublime-snippet>`_, `example <publis/ST3/example.sublime-snippet>`_, `examples <publis/ST3/examples.sublime-snippet>`_, `proof <publis/ST3/proof.sublime-snippet>`_, `remark <publis/ST3/remark.sublime-snippet>`_, `remarks <publis/ST3/remarks.sublime-snippet>`_, `theorem <publis/ST3/theorem.sublime-snippet>`_ (certains sont non standards).

Scripts de construction
~~~~~~~~~~~~~~~~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `file_processing/build_systems.html <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html>`_ décrit entièrement le fonctionnement de ces scripts de construction.


Avec Sublime Text (comme avec d'autres bons éditeurs de texte), il est possible de construire, exécuter ou compiler automatiquement et facilement vos fichiers.
ST3 est livré avec des scripts de construction pour un douzaine de langage, et il est facile d'en créer et d'en installer de nouveaux.


Liste de ces scripts de constructions :

* Un script Bash peut être exécuté (sans arguments) facilement avec le script de construction `bash.sublime-build <publis/ST3/bash.sublime-build>`_.
* Un script Octave peut être exécuté (sans arguments) facilement avec le script de construction `octave.sublime-build <publis/ST3/octave.sublime-build>`_.
* Un document \\(\\LaTeX{}\\) (basé sur `autotex`_ pour ne pas avoir à écrire les en-têtes) peut se compiler facilement en **PDF** via le script de construction `autotex.sublime-build <publis/ST3/autotex.sublime-build>`_ (nécessite `autotex`_ et mon `pdflatex <bin/pdflatex>`_).
* `StrapDownJS.sublime-build <publis/ST3/StrapDownJS.sublime-build>`_ facilite la compilation d'un fichier HTML utilisant mon (super) projet `StrapDownJS <http://lbesson.bitbucket.io/md/>`_ en un fichier PDF (via le script `strapdown2pdf <http://lbesson.bitbucket.io/md/strapdown2pdf.html>`_) !


Macro
~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `extensibility/macros.html <http://docs.sublimetext.info/en/sublime-text-3/extensibility/macros.html>`_ décrit entièrement le fonctionnement de ces macros.


Avec Sublime Text (comme avec n'importe quel bon éditeur de texte), il est facile `d'enregistrer <http://docs.sublimetext.info/en/sublime-text-3/extensibility/macros.html#how-to-record-macros>`_ une **macro**, une petite séquence d'actions, de commandes, de raccourcis clavier ou de clics, et `de lui associer un raccourcis clavier <http://docs.sublimetext.info/en/sublime-text-3/extensibility/macros.html#key-binding-for-macros>`_ par exemple.

Liste de mes macros (juste 2 pour l'instant) :

* `copy-to-the-end-of-the-line.sublime-macro <publis/ST3/copy-to-the-end-of-the-line.sublime-macro>`_ pour selectionner et copier le texte de la ligne actuelle, depuis la position du curseur jusqu'à la *fin* de la ligne. Je lui ai associé le raccouris clavier ``Ctrl+Alt+e``.
* et `copy-to-the-beginning-of-the-line.sublime-macro <publis/ST3/copy-to-the-beginning-of-the-line.sublime-macro>`_ fait pareil, mais sélectionne jusqu'au *début* de la ligne. Je lui ai associé le raccourcis ``Ctrl+Alt+Maj+e`` (comme le modificateur ``Maj`` est déjà utilisé pour ``Ctrl+e`` "aller à la fin de la ligne" et ``Ctrl+Maj+e`` "aller au début de la ligne").

-----------------------------------------------------------------------------

Les meilleurs greffons ?
^^^^^^^^^^^^^^^^^^^^^^^^
Tous ces greffons sont **gratuits**, presque tous sont libres et open-sources, et ils sont tous installables depuis le gestionnaire de paquet (``Ctrl+Maj+P``: *"Package Control: Install Package"*).

Pour chaque paquet cité ci-dessous, un lien vers sa page d'information sur `packagecontrol.io/packages/ <https://packagecontrol.io/packages/>`_ est donné.

.. note:: Mon propre greffon ?

   En septembre 2016, j'ai décidé d'écrire un petit greffon, juste parce que j'en avais marre d'utiliser deux raccourcis clavier pour passer de français à anglais pour la correction orthographique.
   Le but était de pouvoir passer d'une langue à l'autre avec un seul raccourcis clavier...

   Ça a donné `ce greffon, SwitchDictionary <https://github.com/Naereen/SublimeText3_SwitchDictionary/>`_ (pour ST3 uniquement), qui marche juste pour le français et l'anglais, mais fait son boulot parfaitement (``ctrl+shift+s`` pour passer entre français, anglais et pas de correction orthographique, et ``ctrl+shift+a`` détecte automatiquement la langue et bascule en français ou en anglais selon le contenu du fichier).
   Mon greffon est désormais disponible via PackageControl, cf. `SwitchDictionary <https://packagecontrol.io/SwitchDictionary>`_.

   |Package Control total downloads| |Package Control month downloads| |Package Control day downloads|


Petits greffons de personnalisation :

* `Better Build System <https://packagecontrol.io/packages/Better%20Build%20System>`_ améliore le système de "build" sur quelques points précis (précis mais utiles !).
* `BracketHighlighter <https://packagecontrol.io/packages/BracketHighlighter>`_ colore comme il faut les parenthèses et balises ouvrants et fermants (``(``, ``[``, ``{``, ``<`` etc).
* `BufferScroll <https://packagecontrol.io/packages/BufferScroll>`_ est intéressant car il permet de conserver en mémoire absolument toutes les informations positionnelles (curseurs, panneau, buffer etc pour chaque fichier, et chaque fenêtre).
* `Clickable URLs <https://packagecontrol.io/packages/Clickable%20URLs>`_ est tout simple mais utile : permet de souligner les adresses URLs (locales ou Internet), et de les ouvrir avec un raccourcis clavier.
* `Dictionaries <https://packagecontrol.io/packages/Dictionaries>`_ pour une correction orthographique multi-lingue (anglais, français, ...).
* `GitGutter <https://packagecontrol.io/packages/GitGutter>`_ permet de visualiser l'état de chaque ligne de chaque fichier par rapport au dépôt *git* dans lequel il se trouve (visuellement génial pour voir les changements depuis le dernier *commit*).
* `Gremlins <https://packagecontrol.io/packages/Gremlins>`_ permet de facilement voir et corriger les caractères UTF-8 invisibles, qui peuvent être dangereux, comme les espaces invisibles ou insécables.
* `Language - French - Français <https://packagecontrol.io/packages/Language%20-%20French%20-%20Fran%C3%A7ais>`_ ajoute aussi différents dictionnaires pour le français.
* `Status Bar Weather <https://packagecontrol.io/packages/Status%20Bar%20Weather>`_ ajoute une inutile météo dans la barre de statut en bas. Inutile mais marrant. *Oui oui*, votre éditeur de texte peut vous dire la météo !
* `Boxy Theme <https://packagecontrol.io/packages/Boxy%20Theme>`_ (avec "Boxy Tomorrow") est mon thème préféré, qui apporte une interface toute lisse, très épurée mais parfaitement adaptée à une productivité optimale et des yeux pas fatigués. Il apporte aussi de belles icônes pour la barre latérale !


Greffons ajoutant de super fonctionnalités :

* `Calculate <https://packagecontrol.io/packages/Calculate>`_ permet de facilement créer des listes ordonnées (en plus de plein d'autres choses) : on écrit ``i+1`` à chaque ligne, puis un coup de ``Ctrl+Maj+c`` et paf, la multi-sélection est désormais en ``1``, ``2``, ..., ``n``.
* `DictionaryAutoComplete <https://packagecontrol.io/packages/DictionaryAutoComplete>`_ permet à l'auto-complétion d'intégrer les mots du dictionnaires utilisé pour la correction orthographique. Assez gonflant, mais intéressant. Utile pour écrire de la prose et pas du code (rapport, poésie etc).
* `HighlightWords <https://packagecontrol.io/packages/HighlightWords>`_ pour toujours colorer certains mots précis (par exemple ``TODO`` ou ``FIXME``).
* `IncDecValue <https://packagecontrol.io/packages/IncDecValue>`_ permet de facilement incrémenter ou décrémenter des nombres, des dates ou des couleurs.
* `InsertDate <https://packagecontrol.io/packages/InsertDate>`_ permet d'ajouter facilement la date d'aujourd'hui avec un raccourcis clavier, par exemple : *mercredi 25 novembre 2015, 22:20:44*.
* `LineEndings <https://packagecontrol.io/packages/LineEndings>`_ pour surligner et facilement effacer les pénibles (et inutiles) espaces en fin de lignes.
* `MakeCommands <https://packagecontrol.io/packages/MakeCommands>`_ permet de lancer depuis le panneau de contrôle n'importe quelle règle de construction venant d'un fichier `Makefile <https://fr.wikipedia.org/wiki/Makefile>`_. C'est *tout simple*, mais purement génial ! J'utilise `beaucoup de Makefile <https://bitbucket.org/lbesson/web-sphinx/src/master/Makefile>`_ pour mes différents projets. Quel gain de temps en fait !
* `SideBarEnhancements <https://packagecontrol.io/packages/SideBarEnhancements>`_ rend la barre latérale bien plus utile.
* `SublimeGit <https://sublimegit.net/>`_ (installable depuis `packagecontrol.io/packages/SublimeGit <https://packagecontrol.io/packages/SublimeGit>`_). Permet un intégration complète de *git* via le panneau de contrôle. Il est gratuit, mais vous embêtera régulièrement afin de vous demander d'acheter une (inutile) licence commercial (pour 10$)... Mais ce greffon est vraiment génial, donc vous supporterez son petit défaut ! `GitSavvy <https://packagecontrol.io/packages/GitSavvy>`_ semble être une bonne alternative gratuite et libre.
* `TableEditor <https://packagecontrol.io/packages/Table%20Editor>`_ permet d'éditer facilement des tableaux en texte brut (pour Markdown, reStructedText, pandoc etc). Très bien documenté, très complet.
* `Terminal <https://packagecontrol.io/packages/Terminal>`_ permet d'ouvrir un terminal (ie. une console) déjà dans le bon dossier. Je ne m'en sers jamais, mais il marche bien. Plus de détails `sur wbond.net/sublime_packages/terminal <http://wbond.net/sublime_packages/terminal>`_.
* `Wakatime <https://packagecontrol.io/packages/Wakatime>`_ pour utiliser `Wakatime.com <https://wakatime.com/>`_ (`lire cet autre article pour plus de détails <wakatime.fr.html>`_).
* `WordCount <https://packagecontrol.io/packages/WordCount>`_ ajoute un compteur de mots (et de pages, optionnel) dans la barre d'information. Tout simple et léger mais utile !


Un meilleur support pour certains langages :

* `AutoDocstring <https://packagecontrol.io/packages/AutoDocstring>`_ simplifie et améliore significativement l'écriture de `docstrings Python (2 ou 3) <http://www.python.org/dev/peps/pep-0287/>`_, et supporte les deux styles `Google docstring <https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_google.html>`_ et `Numpy docstring <https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_numpy.html>`_.
* `ColorHighlighter <https://packagecontrol.io/packages/ColorHighlighter>`_ surligne les mots et valeurs désignant des couleurs dans un fichier CSS, HTML ou LaTeX (ou n'importe quel fichier en fait). Par exemple ``red`` sera coloré en :red:`rouge`, et ``#00FFFF`` sera coloré en :cyan:`cyan`. Simple mais pratique, surtout pour modifier des fichiers CSS, ou des fichiers LaTeX plein de couleurs.
* `ColorPicker <https://packagecontrol.io/packages/ColorPicker>`_ permet de sélectionner une couleur, et de l'insérer telle quelle. Très pratique lors de la rédaction de CSS ou d'HTML.
* `Dotfiles Syntax Highlighting <https://packagecontrol.io/packages/Dotfiles%20Syntax%20Highlighting>`_ permet de colorer intelligemment une centaine de format de fichiers de configuration Linux/Unix, les fameux "dotfiles".
* `Gnuplot <https://packagecontrol.io/packages/Gnuplot>`_ permet un bon support de la programmation avec `GNUPlot v4+ <http://www.gnuplot.info/>`_.
* `JSONLint <https://packagecontrol.io/packages/JSONLint>`_ vérifie automatiquement les fichiers JSON lors de leur édition (les fichiers de conf de ST3 sont tous en JSON, notamment).
* `LaTeX-plus <https://packagecontrol.io/packages/LaTeX-plus>`_ pourrait améliorer l'utilisation de LaTeX avec ST (`voir la documentation <https://github.com/randy3k/Latex-Plus/wiki/>`_).
* `Markdown Extended <https://packagecontrol.io/packages/MakeCommands>`_ est sensé amélioré la coloration syntaxique du `Markdown <https://fr.wikipedia.org/wiki/Markdown>`_, langage léger à balises, conçu pour une rédaction facile de document. J'utilise Markdown notamment via mon projet `StrapDownJS`_ ! Voir `un exemple <bin/>`_ ?
* `nginx <https://packagecontrol.io/packages/nginx>`_ améliore la coloration des fichiers de configuration du `magnifique serveur web NGinx <http://nginx.org/>`_.
* `OCaml <https://packagecontrol.io/packages/OCaml>`_ améliore la coloration pour `les langages caml-light et OCaml <ocaml.fr.html>`_. À utiliser avec `OCaml Autocompletion <https://packagecontrol.io/packages/OCaml%20Autocompletion>`_ aussi.
* `GNU Octave Completions <https://github.com/tushortz/GNU-Octave-Completions>`_ et `Matlab Completions <https://github.com/tushortz/Matlab-Completions>`_ ajoutent à la complétion les fonctions et commandes de `GNU Octave <http://www.gnu.org/software/octave/>`_ ou `MATLAB <https://fr.wikipedia.org/wiki/Matlab>`_.
* `RestructuredText Improved <https://packagecontrol.io/packages/RestructuredText%20Improved>`_ améliore bien la coloration du `reStructedText <demo.html>`_, le langage à balise utilisé par `Sphinx <http://sphinx-doc.org/>`_ et `la documentation officielle de Python <https://doc.python.org/2/>`_ (et donc pour cette page et `mon site <index.html>`_). À utiliser avec `ces snippets pour rST <https://packagecontrol.io/packages/Restructured%20Text%20(RST)%20Snippets>`_.
* `SublimeRegexExplainTip <https://packagecontrol.io/packages/SublimeRegexExplainTip>`_ permet de mieux comprendre le fonctionnement d'une *expression régulière* ("regexp"), un peu comme le site `regex101.com <https://regex101.com/#python>`_.
* `requirements.txt <https://packagecontrol.io/packages/requirementstxt>`_ simplifie la création et les modifications des `fichiers requirements.txt pour les projets Python <https://pip.readthedocs.io/en/1.1/requirements.html>`_.
* `TWiki <https://packagecontrol.io/packages/TWiki>`_ pour son thème de couleur, génialement équilibré et bien coloré. J'utilise le thème **TWiki** "Monokai for Markup" pour n'importe quel langage en fait ! C'est vraiment mon thème de couleur préféré.


Greffons plus lourds, ou conçu pour un langage spécifique :

* `MagicPython <https://packagecontrol.io/packages/MagicPython>`_ améliore la coloration syntaxique pour Python (en prenant notamment en charge les changements des dernières versions 3.5 et 3.6).
* `MatlabFilenameAutoComplete <https://packagecontrol.io/packages/MatlabFilenameAutoComplete>`_ ajoute les noms de fonctions Matlab/Octave (de fichiers `file.m`) à la complétion automatique. Ça compense le fait que chaque fonction en Matlab/Octave doit être écrite dans un fichier séparé...
* Le génial `SublimeLinter <https://sublimelinter.readthedocs.io/en/latest/installation.html>`_ permet la vérification *à la volée* du code que vous rédigez (Spyder fait de même pour Python, par exemple). Assez extraordinaire ! `Anaconda IDE <http://damnwidget.github.io/anaconda/IDE/>`_ propose beaucoup plus de fonctionnalités spécifique à Python. Il y a plein de très bons *linters* : `annotations <https://packagecontrol.io/packages/SublimeLinter-annotations>`_, `chktex <https://packagecontrol.io/packages/SublimeLinter-chktex>`_, `flake8 <https://packagecontrol.io/packages/SublimeLinter-flake8>`_, `json <https://packagecontrol.io/packages/SublimeLinter-json>`_, `mdl <https://packagecontrol.io/packages/SublimeLinter-contrib-mdl>`_, `pylint <https://packagecontrol.io/packages/SublimeLinter-pylint>`_, `shellcheck <https://packagecontrol.io/packages/SublimeLinter-shellcheck>`_.
* `LaTeXing <http://www.latexing.com/>`_ (installable depuis `packagecontrol.io/packages/LaTeXing <https://packagecontrol.io/packages/LaTeXing>`_), améliore le support de \\(\\LaTeX{}\\).
* `SendText+ <https://packagecontrol.io/packages/SendText%2B>`_ est pratique pour "envoyer" du code dans un terminal ouvert dans une autre fenêtre (terminal qui peut être lancé sur Python, Octave, R, bash ou n'importe quel toplevel).
* `SublimeCodeIntel <https://packagecontrol.io/packages/SublimeCodeIntel>`_ est *censé* permettre un accès intelligent à un programme : en reconnaissant les définitions de variables, fonctions, classes etc, il devrait permettre de "sauter" directement à la définition de n'importe quel élément du programme (je n'aime pas... mais il est populaire).
* `Emmet <http://emmet.io/>`_ (installable depuis `packagecontrol.io/packages/Emmet <https://packagecontrol.io/packages/Emmet>`_), améliore la rédaction de documents HTML, CSS et Javascript de façon *assez magique*. J'imagine que ça demande du temps pour maîtriser ses fonctionnalités, mais ça doit valoir le coup !


.. note:: Purement objective

   Cette liste reflète simplement mon utilisation quotidienne de ST3. Ces choix sont purement objectifs.
   Par exemple, `cet article <http://blog.generalassemb.ly/sublime-text-3-tips-tricks-shortcuts/>`_ présente aussi une liste de greffons utiles à avoir.


Configuration spécifique à certains greffons
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Certains greffons peuvent être configurés spécifiquement.
Voici leurs différents réglages :

* `Anaconda.sublime-settings <publis/ST3/Anaconda.sublime-settings>`_,
* `ColorHighlighter.sublime-settings <publis/ST3/ColorHighlighter.sublime-settings>`_,
* `HighlightWords.sublime-settings <publis/ST3/HighlightWords.sublime-settings>`_,
* `inc_dec_value.sublime-settings <publis/ST3/inc_dec_value.sublime-settings>`_,
* `LaTeXing.sublime-settings <publis/ST3/LaTeXing.sublime-settings>`_,
* `SendText%2B.sublime-settings <publis/ST3/SendText%2B.sublime-settings>`_,
* `Side Bar.sublime-settings <publis/ST3/Side%20Bar.sublime-settings>`_,
* `StatusBarWeather.sublime-settings <publis/ST3/StatusBarWeather.sublime-settings>`_,
* `SublimeGit.sublime-settings <publis/ST3/SublimeGit.sublime-settings>`_,
* `trailing_spaces.sublime-settings <publis/ST3/trailing_spaces.sublime-settings>`_,
* `WordCount.sublime-settings <publis/ST3/WordCount.sublime-settings>`_.

Configuration spécifique à certains langages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Il est possible de modifier les paramètres pour tel langage ou un autre (par exemple un police plus petite pour Python, une marge plus grande pour Markdown etc).
Pour certains langages, il peut être pratique de modifier légèrement les réglages communs :

* `Markdown.sublime-settings <publis/ST3/Markdown.sublime-settings>`_,
* `Matlab.sublime-settings <publis/ST3/Matlab.sublime-settings>`_,
* `Objective-C.sublime-settings <publis/ST3/Objective-C.sublime-settings>`_ (mon changement permet de reconnaître un fichier `file.m` comme un programme Matlab/Octave et non Objective-C),
* `Python.sublime-settings <publis/ST3/Python.sublime-settings>`_.

-----------------------------------------------------------------------------

Un dernier conseil ?
^^^^^^^^^^^^^^^^^^^^
 Comme pour tout logiciel aussi puissant et technique, `Sublime Text 3`_ demande un certain temps d'adaptation.
 Soyez persévérant, ça en vaut la peine.

.. seealso::

   `Visual Studio Code <visualstudiocode.html>`_
      est un superbe éditeur aussi ! Développé `par Microsoft <https://github.com/Microsoft/vscode/>`_,
      il a l'avantage d'être complètement `libre et gratuit <https://github.com/Microsoft/vscode/blob/master/LICENSE.txt>`_.
      Après 4 ans d'utilisation intensive de Sublime Text, je suis en train de l'abandonner pour passer à `Visual Studio Code <https://code.visualstudio.com/>`_, et tel Edith Piaf, `"non, je ne regrette rien" <https://www.youtube.com/results?search_query=%C3%A9dith%20piaf%20je%20ne%20regrette%20rien>`_...


.. seealso::

   `Atom.io <https://atom.io/>`_
      A l'air prometteur !

Crédit additionnel
^^^^^^^^^^^^^^^^^^
 Merci à `Jill-Jênn Vie <http://jill-jenn.net/>`_ de m'avoir conseillé `Sublime Text 3`_ (en octobre 2013).


.. |Package Control total downloads| image:: https://img.shields.io/packagecontrol/dt/SwitchDictionary.svg
   :target: https://packagecontrol.io/packages/SwitchDictionary
.. |Package Control month downloads| image:: https://img.shields.io/packagecontrol/dm/SwitchDictionary.svg
   :target: https://packagecontrol.io/packages/SwitchDictionary
.. |Package Control day downloads| image:: https://img.shields.io/packagecontrol/dd/SwitchDictionary.svg
   :target: https://packagecontrol.io/packages/SwitchDictionary


.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

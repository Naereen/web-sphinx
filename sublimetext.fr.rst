.. meta::
   :description lang=fr: Page décrivant mon utilisation de l'éditeur de texte Sublime Text 3 (ST3)
   :description lang=en: Description of how I use the text editor Sublime Text 3 (ST3)

#####################################################################
 Mon utilisation de `Sublime Text 3 <http://www.sublimetext.com/3>`_
#####################################################################
.. include:: .special.rst
À-propos...
-----------
À-propos de cette page
^^^^^^^^^^^^^^^^^^^^^^
Cette page est là pour décrire rapidement l'utilisation que je fais quotidiennement du génial **Sublime Text 3**, un `éditeur de texte <https://fr.wikipedia.org/wiki/Éditeur_de_texte>`_.

.. note:: Qu'est-ce qu'un éditeur de texte ?

   « *Un éditeur de texte est un* `logiciel <https://fr.wikipedia.org/wiki/Logiciel>`_ *destiné à la création et l'édition de* `fichiers textes <https://fr.wikipedia.org/wiki/Fichier_texte>`_. »

   « *Son usage est courant, voire incontournable pour certaines tâches informatiques de base comme l'administration de système et le développement de logiciels.* »

   Inutile de dire donc que `je m'en sers constamment <https://bitbucket.org/lbesson/>`_, principalement sous Linux (Ubuntu 15.04), et aussi sur Windows (7).

   La page Wikipédia `sur les éditeurs de textes <https://fr.wikipedia.org/wiki/%C3%89diteur_de_texte#Multi_plates-formes>`_ contient une liste des plus populaires éditeurs de texte multi plates-formes.
   Sublime Text est évidemment dans la liste, accompagné de `gedit <./publis/gedit/>`_, des deux légendaires Emacs et Vim, et de Komodo Edit notamment.



Cet article contient de rapides explications sur l'installation et l'utilisation de **Sublime Text** (2 ou 3),
ainsi qu'une liste des meilleurs plugins (aussi appelé `greffon <https://fr.wikipedia.org/wiki/Greffon_(informatique)>`_) que j'utilise avec ST3,
des liens vers mes fichiers de configurations, et des remarques générales.

.. note:: Licence ?

   Cette page, et tous les fichiers liés, sont distribués *librement*, sous les termes de la `licence GPLv3 <LICENSE.html>`_ !
   (comme tout ce que je publie ou distribue).

-----------------------------------------------------------------------

À-propos de Sublime Text 3
^^^^^^^^^^^^^^^^^^^^^^^^^^
Le site officiel est `www.SublimeText.com/3 <http://www.sublimetext.com/3>`_.
Mon article s'intéresse à la version 3 de Sublime Text (actuellement v3.083, *sortie le 26 mars 2015*)

.. warning:: Vivre dangereusement :) ?

   Vous pouvez aussi essayer la version `3dev <http://www.sublimetext.com/3dev>`_, mise à jour plus souvent (mais elle n'est disponible que pour les utilisateurs enregistrés ie il vous faudra payer une licence -- ce n'est pas mon cas).


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

---------------------------------------------------------------------

Mon utilisation de Sublime Text 3
---------------------------------
`Ma configuration <./publis/ST3/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Mes fichiers de configurations, snippets et scripts de constructions, pour `Sublime Text 3`_ sont tous dans le dossier `publis/ST3 <./publis/ST3/>`_.

Pour utiliser un de ces fichiers (``.sublime-settings``, ``.sublime-snippet`` ou ``.sublime-build``), il suffit de le copier dans `votre dossier Packages/User <http://docs.sublimetext.info/en/sublime-text-3/basic_concepts.html#the-packages-directory>`_.
Plus de détails pour `les fichiers .sublime-settings <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html#where-to-store-user-settings-once-again>`_, ou `les fichiers .sublime-build <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html#where-to-store-build-systems>`_.


:État: *Maintenu activement.* (octobre 2015)

Config
~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `customization/settings.html <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html>`_ explique comment configurer *en profondeur chaque aspect* de ST3.


Mes fichiers de configurations :

* `Preferences.sublime-settings <./publis/ST3/Preferences.sublime-settings>`_ est le fichier de configuration principal.

* `Distraction Free.sublime-settings <./publis/ST3/Distraction%20Free.sublime-settings>`_ est la configuration spécifique au mode "Sans distraction". Ce mode permet notamment de projeter du code lors d'un exposé ou d'un cours que je donne en amphi, et de zoomer au maximum sur un élément important.

* `Package Control.sublime-settings <./publis/ST3/Package%20Control.sublime-settings>`_ donne simplement la liste complète des paquets installés (aussi directement ici `packages.list <./publis/packages.list>`_).


Snippets
~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `extensibility/snippets.html <http://docs.sublimetext.info/en/sublime-text-3/extensibility/snippets.html>`_ décrit entièrement le fonctionnement de ces snippets ("morceaux de codes").


Liste de mes snippets :

* `newpython.sublime-snippet <./publis/ST3/newpython.sublime-snippet>`_ permet de facilement créer un nouveau script `Python <python.html>`_,
* `newpython3.sublime-snippet <./publis/ST3/newpython3.sublime-snippet>`_ permet de facilement créer un nouveau script `Python 3 <python.html>`_,
* `newscript.sublime-snippet <./publis/ST3/newscript.sublime-snippet>`_ fait la même chose pour un `script GNU Bash <./bin/>`_.
* `autotex.sublime-snippet <./publis/ST3/autotex.sublime-snippet>`_ permet de créer un document \\(\\LaTeX{}\\) vide utilisant `autotex <./bin/autotex>`_.
* `StrapDownJS.sublime-snippet <./publis/ST3/StrapDownJS.sublime-snippet>`_ facilite la création d'un fichier HTML utilisant mon (super) projet `StrapDownJS <http://lbesson.bitbucket.org/md/>`_ !


Scripts de construction
~~~~~~~~~~~~~~~~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `file_processing/build_systems.html <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html>`_ décrit entièrement le fonctionnement de ces scripts de construction.


Avec Sublime Text (comme avec d'autres bons éditeurs de texte), il est possible de construire, exécuter ou compiler automatiquement et facilement vos fichiers.
ST3 est livré avec des scripts de construction pour un douzaine de langage, et il est facile d'en créer et d'en installer de nouveaux.


Liste de ces scripts de constructions :

* Un script Bash peut être exécuté (sans arguments) facilement avec le script de construction `bash.sublime-build <./publis/ST3/bash.sublime-build>`_.
* Un document \\(\\LaTeX{}\\) (basé sur `autotex`_ pour ne pas avoir à écrire les en-têtes) peut se compiler facilement en **PDF** via le script de construction `autotex.sublime-build <./publis/ST3/autotex.sublime-build>`_ (nécessite `autotex`_ et mon `pdflatex <./bin/pdflatex>`_).


Les meilleurs greffons ?
^^^^^^^^^^^^^^^^^^^^^^^^
Tous ces greffons sont **gratuits**, presque tous sont libres et open-sources, et ils sont tous installables depuis le gestionnaire de paquet (``Ctrl+Maj+P``: *"Package Control: Install Package"*).

Pour chaque paquet cité ci-dessous, un lien vers sa page d'information sur `packagecontrol.io/packages/ <https://packagecontrol.io/packages/>`_ est donné.


Petits greffons de personnalisation :

* `BracketHighlighter <https://packagecontrol.io/packages/BracketHighlighter>`_ colore comme il faut les parenthèses et balises ouvrants et fermants (``(``, ``[``, ``{``, ``<`` etc).
* `Buffer​Scroll <https://packagecontrol.io/packages/Buffer​Scroll>`_ est intéressant car il permet de conserver en mémoire absolument toutes les informations positionnelles (curseurs, panneau, buffer etc pour chaque fichier, et chaque fenêtre).
* `Clickable URLs <https://packagecontrol.io/packages/Clickable%20URLs>`_ est tout simple mais magique : permet de souligner les adresses URLs (locales ou Internet), et de les ouvrir avec un raccourcis clavier.
* `Dictionaries <https://packagecontrol.io/packages/Dictionaries>`_ pour une correction orthographique multi-lingues (anglais, français, ..).
* `GitGutter <https://packagecontrol.io/packages/GitGutter>`_ permet de visualiser l'état de chaque ligne de chaque fichier par rapport au dépôt *git* dans lequel il se trouve (visuellement génial pour voir les changements depuis le dernier *commit*).
* `Language - French - Français <https://packagecontrol.io/packages/Language%20-%20French%20-%20Fran%C3%A7ais>`_ ajoute aussi différents dictionnaires pour le français.
* `Predawn <https://packagecontrol.io/packages/Predawn>`_ est une amélioration de l'interface, très sombre pour `protéger ses yeux <bin/yeux.sh>`_ !
* `Status Bar Weather <https://packagecontrol.io/packages/Status%20Bar%20Weather>`_ ajoute une inutile météo dans la barre de statut en bas. Inutile mais marrant. Oui oui, votre éditeur de texte peut vous dire la météo !
* `Theme - Centurion <https://packagecontrol.io/packages/Theme%20-%20Centurion>`_ est mon thème préféré, qui apporte une interface toute lisse, très épurée mais parfaitement `adaptée à une productivité optimale <https://github.com/TristanDeleu>`_.


Greffons ajoutant de super fonctionnalités :

* `Dictionary​Auto​Complete <https://packagecontrol.io/packages/DictionaryAutoComplete>`_ permet à l'auto-complétion d'intégrer les mots du dictionnaires utilisé pour la correction orthographique. Assez gonflant, mais intéressant. Utile pour écrire de la prose et pas du code (rapport, poésie etc).
* `LineEndings <https://packagecontrol.io/packages/LineEndings>`_ pour surligner et facilement effacer les pénibles (et inutiles) espaces en fin de lignes.
* `MakeCommands <https://packagecontrol.io/packages/MakeCommands>`_ permet de lancer depuis le panneau de contrôle n'importe quelle règle de construction venant d'un fichier `Makefile <https://fr.wikipedia.org/wiki/Makefile>`_. C'est *tout simple*, mais purement génial ! J'utilise `beaucoup de Makefile <https://bitbucket.org/lbesson/web-sphinx/src/master/Makefile>`_ pour mes différents projets. Quel gain de temps en fait !
* `SideBarEnhancements <https://packagecontrol.io/packages/SideBarEnhancements>`_ rend la barre latérale bien plus utile.
* `SublimeGit <https://sublimegit.net/>`_ (installable depuis `packagecontrol.io/packages/SublimeGit <https://packagecontrol.io/packages/SublimeGit>`_). Permet un intégration complète de *git* via le panneau de contrôle. Il est gratuit, mais vous embêtera régulièrement afin de vous demander d'acheter une (inutile) licence commercial (pour 10$)... Mais ce greffon est vraiment génial, donc vous supporterez son petit défaut !
* `Terminal <https://packagecontrol.io/packages/Terminal>`_ permet d'ouvrir un terminal (ie. une console) déjà dans le bon dossier. Je ne m'en sers jamais, mais il marche bien. Plus de détails `sur wbond.net/sublime_packages/terminal <http://wbond.net/sublime_packages/terminal>`_.
* `Wakatime <https://packagecontrol.io/packages/Wakatime>`_ pour utiliser `Wakatime.com <https://wakatime.com/>`_ (`lire cet autre article pour plus de détails <wakatime.fr.html>`_).

Une meilleures colorations pour certains langages :

* `ColorPicker <https://packagecontrol.io/packages/ColorPicker>`_ permet de sélectionner une couleur, et de l'insérer telle quelle. Très pratique lors de la rédaction de CSS ou d'HTML.
* `Gnuplot <https://packagecontrol.io/packages/Gnuplot>`_ permet un bon support de la programmation avec `GNUPlot v4+ <http://www.gnuplot.info/>`_.
* `LaTeX-plus <https://packagecontrol.io/packages/LaTeX-plus>`_ (`avec cette documentation <https://github.com/randy3k/Latex-Plus/wiki/>`_)
* `Markdown Extended <https://packagecontrol.io/packages/MakeCommands>`_ est sensé amélioré la coloration syntaxique du `Markdown <https://fr.wikipedia.org/wiki/Markdown>`_, langage léger à balises, conçu pour une rédaction facile de document. J'utilise Markdown notamment via mon projet `StrapDownJS`_ ! Voir `un exemple <bin/>`_ ?
* `nginx <https://packagecontrol.io/packages/nginx>`_ améliore la coloration des fichiers de configuration du `magnifique serveur web NGinx <http://nginx.org/>`_.
* `OCaml <https://packagecontrol.io/packages/OCaml>`_ améliore la coloration pour `les langages caml-light et OCaml <ocaml.html>`_. À utiliser avec `OCaml Autocompletion <https://packagecontrol.io/packages/OCaml%20Autocompletion>`_ aussi.
* `RestructuredText Improved <https://packagecontrol.io/packages/RestructuredText%20Improved>`_ améliore bien la coloration du `reStructedText <demo.html>`_, le langage à balise utilisé par `Sphinx <http://sphinx-doc.org/>`_ et `la documentation officielle de Python <https://doc.python.org/2/>`_ (et donc pour cette page et `mon site <index.html>`_). À utiliser avec `ces snippets pour rST <https://packagecontrol.io/packages/Restructured%20Text%20(RST)%20Snippets>`_.
* `TWiki <https://packagecontrol.io/packages/TWiki>`_ pour son thème de couleur, génialement équilibré et bien coloré. J'utilise le thème **TWiki** "Monokai for Markup" pour n'importe quel langage en fait!



Greffons plus lourds, ou conçu pour un langage spécifique :

* Le génial `SublimeLinter <http://sublimelinter.readthedocs.org/en/latest/installation.html>`_ permet la vérification *à la volée* du code que vous rédigez (Spyder fait de même pour Python, par exemple). Assez extraordinaire ! `Anaconda IDE <http://damnwidget.github.io/anaconda/IDE/>`_ propose beaucoup plus de fonctionnalités spécifique à Python.
* `LaTeXing <http://www.latexing.com/>`_ (installable depuis `packagecontrol.io/packages/LaTeXing <https://packagecontrol.io/packages/LaTeXing>`_), améliore le support de \\(\\LaTeX{}\\).
* `SublimeCodeIntel <https://packagecontrol.io/packages/SublimeCodeIntel>`_ est *censé* permettre un accès intelligent à un programme : en reconnaissant les définitions de variables, fonctions, classes etc, il devrait permettre de "sauter" directement à la définition de n'importe quel élément du programme (j'aime pas mais il est populaire).
* `Emmet <http://emmet.io/>`_ (installable depuis `packagecontrol.io/packages/Emmet <https://packagecontrol.io/packages/Emmet>`_), améliore la rédaction de documents HTML, CSS et Javascript de façon assez magique. J'imagine que ça demande du temps pour maîtriser ses fonctionnalités, mais ça doit vaut le coup !


.. note:: Purement objective

   Cette liste reflète simplement mon utilisation quotidienne de ST3. Ces choix sont purement objectifs.
   Par exemple, `cet article <http://blog.generalassemb.ly/sublime-text-3-tips-tricks-shortcuts/>`_ présente aussi une liste de greffons utiles à avoir.


Configuration spécifique à certains greffons
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Certains greffons peuvent être configurés spécifiquement.
Voici leurs différents réglages :

* `ColorHighlighter.sublime-settings <./publis/ST3/ColorHighlighter.sublime-settings>`_.
* `LaTeXing.sublime-settings <./publis/ST3/LaTeXing.sublime-settings>`_.
* `Side Bar.sublime-settings <./publis/ST3/Side%20Bar.sublime-settings>`_.
* `StatusBarWeather.sublime-settings <./publis/ST3/StatusBarWeather.sublime-settings>`_.
* `SublimeGit.sublime-settings <./publis/ST3/SublimeGit.sublime-settings>`_.
* `trailing_spaces.sublime-settings <./publis/ST3/trailing_spaces.sublime-settings>`_.

-----------------------------------------------------------------------------

Un dernier conseil ?
^^^^^^^^^^^^^^^^^^^^
 Comme pour tout logiciel aussi puissant et technique, `Sublime Text 3`_ demande un certain temps d'adaptation.
 Soyez persévérant, ça en vaut la peine.


.. seealso::

   `Atom.io <https://atom.io/>`_
      A l'air prometteur !

Crédit additionnel
^^^^^^^^^^^^^^^^^^
 Merci à `Jill-Jênn Vie <http://jill-jenn.net/>`_ de m'avoir conseillé `Sublime Text 3`_ (en octobre 2013).


.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

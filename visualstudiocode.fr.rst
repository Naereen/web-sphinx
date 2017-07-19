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

Pour utiliser un de ces fichiers (``.sublime-settings``, ``.sublime-snippet`` ou ``.sublime-build``), il suffit de le copier dans `votre dossier Packages/User <http://docs.sublimetext.info/en/sublime-text-3/basic_concepts.html#the-packages-directory>`_.
Plus de détails pour `les fichiers .sublime-settings <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html#where-to-store-user-settings-once-again>`_, ou `les fichiers .sublime-build <http://docs.sublimetext.info/en/sublime-text-3/file_processing/build_systems.html#where-to-store-build-systems>`_.


:État: *Maintenu activement* (juillet 2017).

Config
~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `customization/settings.html <http://docs.sublimetext.info/en/sublime-text-3/customization/settings.html>`_ explique comment configurer *en profondeur chaque aspect* de VSCode.


Mes fichiers de configurations :

* `TODO <publis/VSCode/TODO>`_ est le fichier de configuration principal.

Raccourcis clavier
~~~~~~~~~~~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `<https://code.visualstudio.com/docs/getstarted/keybindings#_customizing-shortcuts>`_.


Comme (presque) tout dans VS Code, il est facile de modifier ou d'ajouter des raccourcis clavier.
Cela peut être fait globalement, ou projet par projet, ou langage par langage.

* `TODO <publis/VSCode/TODO>`_ sont mes raccourcis clavier (ajoute notamment ``ctrl+e`` pour aller en fin de ligne ou ``ctrl+maj+e`` en début de ligne).


Snippets
~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `<https://code.visualstudio.com/docs/editor/userdefinedsnippets>`_ décrit entièrement le fonctionnement de ces snippets ("morceaux de codes").


Liste de mes snippets :

* TODO

Scripts de construction
~~~~~~~~~~~~~~~~~~~~~~~
.. sidebar:: Plus d'informations sur la doc' ?

   Cette page `<https://code.visualstudio.com/docs/editor/tasks>`_ décrit entièrement le fonctionnement de ces scripts de construction.


Avec VS Code (comme avec d'autres bons éditeurs de texte), il est possible de construire, exécuter ou compiler automatiquement et facilement vos fichiers.
VS Code est livré avec des scripts de construction pour des tâches liées au développement Javascript (npm, bower etc), et il est facile d'en créer et d'en installer de nouveaux.


Liste de ces scripts de constructions :

* TODO


Macro
~~~~~
Not yet.

-----------------------------------------------------------------------------

Les meilleurs greffons ?
^^^^^^^^^^^^^^^^^^^^^^^^
Tous ces greffons sont **gratuits**, **libres** et **open-source**, et ils sont tous installables facilement depuis le gestionnaire de paquet (``Ctrl+Maj+X``).

Pour chaque paquet cité ci-dessous, un lien vers sa page d'information sur `marketplace.visualstudio.com/vscode <https://marketplace.visualstudio.com/vscode>`_ est donné.

.. note:: Mon propre greffon ?

   Pas encore.

   Pour Sublime Text 3, j'ai écrit `ce greffon, SwitchDictionary <https://github.com/Naereen/SublimeText3_SwitchDictionary/>`_, disponible via PackageControl, cf. `SwitchDictionary <https://packagecontrol.io/SwitchDictionary>`_.


Petits greffons de personnalisation :

* TODO


Greffons ajoutant de super fonctionnalités :

* TODO


Un meilleur support pour certains langages :

* TODO


Greffons plus lourds, ou conçu pour un langage spécifique :

* TODO


.. note:: Purement objective

   Cette liste reflète simplement mon utilisation quotidienne de VSCode. Ces choix sont purement objectifs.
   Par exemple, `cette liste "awesome-vscode" <https://github.com/viatsko/awesome-vscode`_ présente aussi une liste de greffons utiles à avoir.

-----------------------------------------------------------------------------

Un dernier conseil ?
^^^^^^^^^^^^^^^^^^^^
 Comme pour tout logiciel aussi puissant et technique, `Visual Studio Code`_ demande un certain temps d'adaptation.
 Soyez persévérant, ça en vaut la peine.


.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

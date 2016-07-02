.. meta::
   :description lang=en: Description of publications in folder publis/
   :description lang=fr: Page décrivant les publications du dossier publis/

####################################################
 Description of publications in folder `<publis/>`_
####################################################

.. todo:: Translate this page to English!

About this page
---------------
This page tries to describe all the tiny (and less tiny) technical projects published in the folder `<publis/>`_.

This folder contains a lot of small productions (softwares, scripts, configuration etc); and some of my more serious projects.

.. todo:: Keep this page up-to-date. For now, it is not AT ALL up-to-date!

.. sidebar:: Go back to the homepage?

   If this page has no interest for you, please go back to the main page `<index.html>`_.


.. note:: Conditions of distribution

   Every file or projects listed here is *freely* and *publicly* distributed, under the conditions of the `GPLv3 license <LICENSE.html>`_!

---------------------------------------------------------------------

Projects
--------
Here is a **partial** list of projects published in the folder `<publis/>`_.

.. warning:: Not all of them are explained here.


`nautilus-terminal <publis/nautilus-terminal/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
`Un greffon pour Nautilus <https://bitbucket.org/lbesson/nautilus-terminal>`_.

`latex <publis/latex/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Quelques fichiers et programmes utiles pour faire du \\(\\LaTeX{}\\).

En particulier `autotex <./publis/latex/autotex>`_, le petit script Bash que j'utilise *quotidiennement* pour écrire du \\(\\LaTeX{}\\) sans avoir à recopier d'en-têtes (``\usepackage`` et autres inutilités).
Il y a désormais `autonomize.sh <./publis/latex/autonomize.sh>`_ et `template_minimalist.tex <./publis/latex/template_minimalist.tex>`_, pour rendre autonome un document utilisant autotex.

:État: *Fonctionne bien* et maintenu activement. (mars 2016)

`puzzle <publis/puzzle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Le mini jeu de Tetravex en *OCaml* réalisé en L3 (Avril 2012)
pour le cours de programmation 2. J'avais eu 17/20.
Remis à neuf (mars 2014), et publié sur mon compte bitbucket : `bitbucket.org/lbesson/projet-puzzle-ocaml-2012 <https://bitbucket.org/lbesson/projet-puzzle-ocaml-2012>`_.

:État: *Fonctionne bien* mais plus maintenu.

`Zenity <publis/Zenity/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Une bibliothèque ``OCaml`` pour utiliser l'outil **GNU Zenity** de façon simple, complètement *typée* et efficace (mais salement codée).
Publié sur mon compte bitbucket : `bitbucket.org/lbesson/zenity-ocaml <https://bitbucket.org/lbesson/zenity-ocaml>`_.

Fonctionne *comme ça* : pas besoin d'installation (juste inclure les fichiers ``zenity.ml`` et ``zenity.mli`` dans votre projet).
Par exemple :

.. code-block:: ocaml

   open Zenity;;
   let ma_couleur = color_selection ~title:"Choisir une couleur" () ;;
   (* Permet de demander à l'utilisateur de choisir une couleur,
   revient à invoquer $ zenity --color-selection --title="Choisir une couleur" dans un terminal *)


:État: *N'est plus maintenu activement* (avril 2014) mais fonctionne avec les dernières versions d'OCaml (4.03.0) et de Zenity.

`ansicolortags <publis/ansicolortags/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. pypi-release:: ansicolortags
   :prefix: La dernière version est ici (normalement, l'extension non officielle cheeseshop permet d'intégrer directement un lien de téléchargement) 
   :class: sidebar

**ansicolortags** est un petit module pour `Python <python.html>`_, version 2 (2.7+) et 3 (3.4+),
conçu pour manipuler facilement et efficacement les couleurs ``ANSI``
dans un terminal **UNIX** ou **Linux** (ou sur **Windows via Cygwin**, ou **Mac OS X**).

.. image::  https://badge.fury.io/py/ansicolortags.svg
   :target: https://pypi.python.org/pypi/ansicolortags
.. image:: https://readthedocs.org/projects/ansicolortags/badge/?version=latest
   :target: http://ansicolortags.readthedocs.io/

* Il est hébergé sur `Pypi <https://pypi.python.org/pypi/ansicolortags>`_ (v0.4), et peut être installé par un simple ``pip install ansicolortags`` !
* La documentation du module est ici sur `<http://ansicolortags.readthedocs.io/>`_.
* Il est basé sur `ANSIColors-balises <https://pypi.python.org/pypi/ANSIColors-balises>`_, qui était trop vieux et ne supportait que Python 2. ANSIColors-balises a été téléchargé environ 5000 fois entre mars 2013 et février 2016. (Des statistiques *partielles*, pour le moi de Mai 2013 `sont ici <http://pypi-ranking.info/module/ANSIColors-balises>`_ et d'autres `ici <http://developers.dazzit.com/item/en/US/Python-Packages/ANSIColors-balises/>`_, `ou encore ici sur pypi-ranking.info <http://pypi-ranking.info/module/ANSIColors-balises>`_.)
* Un exemple d'utilisation (la sortie ne s'affiche pas comme il faut car Sphinx ne supporte pas l'inclusion de couleurs dans les exemples de code): ::

   >>> # The good way (and safe) to use ansicolortags:
   >>> try:
   ...     from ansicolortags import printc
   >>> except ImportError:
   ...     def printc(a): print(a)  # Placeholder
   >>> printc("<red>Ceci est rouge ?<white> La c'est blanc.<blue> Et enfin en bleu ici.<reset> (ca ne marche pas ici, normal)")
   Ceci est rouge ? La c'est blanc. Et enfin en bleu ici. (ca ne marche pas ici, normal)

* Mais dans un terminal, ce morceau de code donne : ":red:`Ceci est rouge ?` :white:`La c'est blanc.` :blue:`Et enfin en bleu ici` (ca ne marche pas ici, normal)".

:État: *À-jour* (juillet 2016), et fonctionne très bien.

`kaggle <publis/kaggle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Petit projet réalisé pour le cours d'**Apprentissage statistique** de ``L3`` à l'``ENS Cachan`` en mai 2013.
Rien de très palpitant, sinon une intéressante utilisation de ``Python 2.7`` pour réaliser *toutes* les différentes composantes d'un projet de programmation (codes, documentations, rapports, slides etc). J'avais eu 15/20.
Finalement, `je n'ai pas participé à la dernière étape sur Kaggle <https://www.gequest.com/users/96638/naereen>`_...

:État: *N'est plus maintenu !* (mai 2013)

`Bomberman <publis/Bomberman/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Un jeu de **Bomberman**, multi-joueur en réseau, écrit en Python, réalisé de Nov. 2012 à Fév. 2013
pour le projet réseau (*1-21 MPRI*), auquel j'ai reçu 16.9/20 (seconde meilleure note).

:État: *N'est plus maintenu !* (mars 2013)

`MOcamlPlot <publis/MOcamlPlot.zip>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Une bibliothèque `OCaml` pour dessiner des graphiques **en console** facilement.
Ce projet proposait une surcharge des opérateurs (réalisée très *salement*), ainsi que des commandes « *à la Maple* »
(du genre ``plot("cos((x+5)/2.16)",0--10)``), et quelques trucs assez géniaux.
Je manque de temps pour le remettre à jour.

:État: *N'est plus maintenu !* (février 2012). Peut fonctionner. Mais pas sûr.

---------------------------------------------------------------------

Presse (automne 2014)
---------------------
* `cet article paru dans Le Monde, à propos de la future École Centrale Casablanca <publis/29_10_2014__LeMonde.fr.html>`_ (`aussi en anglais (29_10_2014__LeMonde.en.html) <publis/29_10_2014__LeMonde.en.html>`_, et `en PDF (29_10_2014__LeMonde.fr.pdf) <publis/29_10_2014__LeMonde.fr.pdf>`_),
* `cet article paru dans Libération, à propos de Mahindra École Centrale <publis/10_10_2014__Liberation.fr.html>`_ (`aussi en anglais (10_10_2014__Liberation.en.html) <publis/10_10_2014__Liberation.en.html>`_, et `en PDF (10_10_2014__Liberation.en.pdf) <publis/10_10_2014__Liberation.fr.pdf>`_).

---------------------------------------------------------------------

Scripts et binaires
-------------------
Voir la page `<bin.html>`_ pour plus de description sur les scripts et les binaires contenus dans le dossier `<publis/bin/>`_.
Le dépôt git associé se trouve `ici sur bitbucket.org/lbesson/bin <https://bitbucket.org/lbesson/bin>`_.

---------------------------------------------------------------------

Fichiers de configuration
-------------------------
`ST3 <sublimetext.fr.html>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Configurations, snippets et scripts de constructions, pour `Sublime Text 3 <http://www.sublimetext.com/3>`_.
La page `ST3`_ contient beaucoup plus d'informations :)

 * Par exemple, `newpython.snippet <./publis/ST3/newpython.sublime-snippet>`_ permet de facilement créer un nouveau script `Python <python.html>`_, `newscript.snippet <./publis/ST3/newscript.sublime-snippet>`_ fait la même chose pour un script GNU Bash.
 * `autotex.sublime-snippet <./publis/ST3/autotex.sublime-snippet>`_ permet de créer un document LaTeX vide utilisant `autotex`_, qui peut ensuite se compiler facilement en PDF via le script de construction `autotex.sublime-build <./publis/ST3/autotex.sublime-build>`_
 * `StrapDownJS.sublime-snippet <./publis/ST3/StrapDownJS.sublime-snippet>`_ facilite la création d'un fichier HTML utilisant mon super projet `StrapDownJS <http://lbesson.bitbucket.org/md/>`_ !

:État: *Maintenu activement* (juin 2016).

`munstrap <publis/munstrap/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Un thème francophone pour `Munin 2.x <http://munin-monitoring.org/>`_, basé sur Twitter Bootstrap et grandement inspiré du projet `munstrap  original <https://github.com/jonnymccullagh/munstrap>`_.
Aussi sur Bitbucket : `<https://bitbucket.org/lbesson/munstrap/>`_ et `<http://lbesson.bitbucket.org/munstrap>`_.

:État: *À-jour.* (september 2014)

`conky <publis/conky/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Configuration pour `GNU Conky <http://conky.sourceforge.net/>`_.

:État: *Plus maintenu activement, mais fonctionne.* (janvier 2014)

`muttrc <publis/muttrc/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Configuration pour `Mutt <http://www.mutt.org/>`_, le meilleur client mail en console.

:État: *Plus maintenu activement, mais fonctionne.* (janvier 2014)

`gedit-coloration <publis/gedit-coloration/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Quelques améliorations pour la configuration pour **GTK-SourceView** (bibliothèque C++ pour la coloration syntaxique de code sources, utilisée notamment par gedit et gobby).

:État: *Plus du tout maintenu.* (novembre 2011 à juillet 2013)

`gedit <publis/gedit/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Divers plugins pour **Gnome Gedit**.

:État: *Plus du tout maintenu.* (novembre 2011 à juillet 2013)

`nautilus-scripts <publis/nautilus-scripts/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
De vieux scripts pour **Gnome Nautilus**.

:État: *N'est plus maintenu !* (novembre 2011 à juillet 2012)

`gedit-tools <publis/gedit-tools/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
De vieux scripts pour **Gnome Gedit**, avec le plugin *Outils extérieurs*.

:État: *N'est plus maintenu !* (été 2012)

---------------------------------------------------------------------

Divers
------
`webcomics.pdf <publis/webcomics.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Un article sur `<http://questionablecontent.net>`_ pour la Sauce du mois de janvier 2014 (`<http://www.lasauce.ens-cachan.fr/archives.php>`_).

`seminaire_crans.pdf <publis/seminaire_crans/seminaire_crans.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Les slides du séminaire sur les outils de documentation fait en Mars 2013 pour le `crans <http://www.crans.org>`_.


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

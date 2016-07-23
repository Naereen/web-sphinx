.. meta::
   :description lang=fr: Page décrivant les publications du dossier publis/
   :description lang=en: Description of publications in folder publis/

###########################################################
 Productions techniques diverses (du dossier `<publis/>`_)
###########################################################

À-propos de cette page
----------------------
Cette page est là pour décrire les divers petits (et moins petits) projets *techniques* présents dans le dossier `<publis/>`_.

Ce dossier contient un certain nombre de petites productions
(logiciels, scripts ou autres); ainsi que certains projets plus solides.

.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter celle là `<index.html>`_.


.. note:: Conditions de distribution

   Chaque projet listé sur cette page est distribué *librement*, sous les termes de la `licence GPLv3 <LICENSE.html>`_ !

---------------------------------------------------------------------

Projets
-------
Voici une liste des projets les plus importants contenus dans le dossier `<publis/>`_, classés par ordre d'importance.

`ansicolortags <publis/ansicolortags/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. pypi-release:: ansicolortags
   :prefix: La dernière version est ici (normalement, l'extension non officielle cheeseshop permet d'intégrer directement un lien de téléchargement vers le fichier zip)
   :class: sidebar

**ansicolortags** est un petit module pour `Python <python.html>`_, version 2 (2.7+) et 3 (3.4+),
conçu pour manipuler facilement et efficacement les couleurs ``ANSI``
dans un terminal **UNIX** ou **Linux** (ou sur **Windows via Cygwin**, ou **Mac OS X**).

.. image::  https://badge.fury.io/py/ansicolortags.svg
   :target: https://pypi.python.org/pypi/ansicolortags
.. image::  https://readthedocs.org/projects/ansicolortags/badge/?version=latest
   :target: http://ansicolortags.readthedocs.io/

* Il est hébergé sur `Pypi <https://pypi.python.org/pypi/ansicolortags>`_ (v0.4), et peut être installé par un simple ``pip install ansicolortags`` !
* La documentation complète du module est ici: `<http://ansicolortags.readthedocs.io/>`_.
* Il est basé sur `ANSIColors-balises <https://pypi.python.org/pypi/ANSIColors-balises>`_, qui était trop vieux et ne supportait que Python 2. ANSIColors-balises a été téléchargé environ 5000 fois entre mars 2013 et février 2016. (Des statistiques *partielles*, pour mai 2013 `sont ici <http://pypi-ranking.info/module/ANSIColors-balises>`_ et d'autres `ici <http://developers.dazzit.com/item/en/US/Python-Packages/ANSIColors-balises/>`_, `ou encore ici sur pypi-ranking.info <http://pypi-ranking.info/module/ANSIColors-balises>`_.)
* Un exemple d'utilisation (la sortie ne s'affiche pas comme il faut car Sphinx ne supporte pas l'inclusion de couleurs dans les exemples de code) : ::

   >>> # The good way (and safe) to use ansicolortags:
   >>> try:
   ...     from ansicolortags import printc
   >>> except ImportError:
   ...     def printc(a): print(a)  # Placeholder
   >>> printc("<red>Ceci est rouge !<white> La c'est blanc.<blue> Et enfin en bleu ici.<reset> (ca ne marche pas ici, normal)")
   Ceci est rouge ! La c'est blanc. Et enfin en bleu ici. (ca ne marche pas ici, normal)

* Mais dans un terminal, ce morceau de code donne : ":red:`Ceci est rouge !` :white:`La c'est blanc.` :blue:`Et enfin en bleu ici.` (ca ne marche pas ici, normal)".

:État: *À-jour* (juillet 2016), et fonctionne très bien.

`nautilus-terminal <publis/nautilus-terminal/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Nautilus-Terminal, un greffon pour l'explorateur de fichier `Gnome Nautilus <http://doc.ubuntu-fr.org/Nautilus>`_ qui ajoute un terminal suivant les déplacements dans votre explorateur de fichiers, open-source `sur Bitbucket <https://bitbucket.org/lbesson/nautilus-terminal/>`_.

:État: *À-jour* (février 2016), marche bien !

`latex <publis/latex/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Quelques fichiers et programmes utiles pour faire du \\(\\LaTeX{}\\).

En particulier `autotex <./publis/latex/autotex>`_, le petit script Bash que j'utilise *régulièrement* pour écrire du \\(\\LaTeX{}\\) sans avoir à recopier d'en-têtes (``\usepackage`` et autres inutilités).
J'ai écrit `autonomize.sh <./publis/latex/autonomize.sh>`_ et `template_minimalist.tex <./publis/latex/template_minimalist.tex>`_, pour rendre autonome un document utilisant `autotex`_.

:État: *Fonctionne bien* et maintenu activement (mars 2016).

`snippets <publis/snippets>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Quelques petits morceaux de code, depuis `Bitbucket/snippets <https://bitbucket.org/snippets/lbesson/>`_.

:État: *Actif* (juillet 2016), petits morceaux de code.

---------------------------------------------------------------------

Petits projets sur `mon GitHub <https://github.com/Naereen/>`_
---------------------------------------------------------------

`ama.fr <publis/ama.fr>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Demandez-moi n'importe quoi ! `Sur GitHub (ama.fr) <https://github.com/Naereen/ama.fr>`_ / `Sur Bitbucket (ama.fr) <https://bitbucket.org/lbesson/ama.fr>`_.

:État: *À-jour* (juillet 2016), inutile.

`ama <publis/ama>`_
^^^^^^^^^^^^^^^^^^^^
Demandez-moi n'importe quoi en anglais ! Ask me anything in English! `Sur GitHub (ama) <https://github.com/Naereen/ama>`_ / `Sur Bitbucket (ama) <https://bitbucket.org/lbesson/ama>`_.

:État: *À-jour* (juillet 2016), inutile.

`Nginx-Fancyindex-Theme <publis/Nginx-Fancyindex-Theme>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Un `thème joli et propre, et open-source <https://github.com/Naereen/Nginx-Fancyindex-Theme>`_ pour le module ``FancyIndex`` du logiciel serveur web `nginx <http://nginx.org/>`_.

:État: *À-jour* (juin 2016), marche bien.

`generate-word-cloud.py <publis/generate-word-cloud.py>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Un script pour Python v2 ou v3, pour produire de jolis nuages de mots depuis un ou plusieurs fichiers textes, open-source `sur GitHub <https://github.com/Naereen/generate-word-cloud.py/>`_.

:État: *À-jour* (mars 2016), marche bien.

`naereen.github.io <publis/naereen.github.io>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Le mini-site `naereen.github.io <http://naereen.github.io/>`_, open-source `sur GitHub <https://github.com/Naereen/naereen.github.io/>`_.

:État: *Actif* (juillet 2016).

`notebooks <publis/notebooks>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Dépôt git pour des `"notebooks" avec Jupyter <https://www.jupyter.org/>`_, open-source `sur GitHub <https://github.com/Naereen/notebooks/>`_.
Consultables sur `nbviewer.jupyter.org <http://nbviewer.jupyter.org/github/Naereen/notebooks/>`_.

:État: *Actif* (juillet 2016), encore en développement.

`slides <publis/slides>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Dépôt git pour des `présentations (transparents) avec remark.js <http://remarkjs.com/>`_, open-source `sur GitHub <https://github.com/Naereen/slides/>`_.
Consultables sur `naereen.github.io/slides <https://naereen.github.io/slides/>`_.

:État: *Actif* (juillet 2016), encore en développement.

---------------------------------------------------------------------

Presse (automne 2014)
---------------------
* `cet article paru dans Le Monde, à propos de la future École Centrale Casablanca <publis/29_10_2014__LeMonde.fr.html>`_, une école d'ingénieurs au Maroc (`aussi en anglais (29_10_2014__LeMonde.en.html) <publis/29_10_2014__LeMonde.en.html>`_, et `en PDF (29_10_2014__LeMonde.fr.pdf) <publis/29_10_2014__LeMonde.fr.pdf>`_),
* `cet article paru dans Libération, à propos de Mahindra École Centrale <publis/10_10_2014__Liberation.fr.html>`_, une école d'ingénieurs en Inde (`aussi en anglais (10_10_2014__Liberation.en.html) <publis/10_10_2014__Liberation.en.html>`_, et `en PDF (10_10_2014__Liberation.en.pdf) <publis/10_10_2014__Liberation.fr.pdf>`_).

---------------------------------------------------------------------

Scripts et binaires
-------------------
Voir la page `<bin.html>`_ pour plus de description sur les scripts et les binaires contenus dans le dossier `<publis/bin/>`_.

Le dépôt git associé est très actif (des améliorations et de nouveaux scripts chaque semain)e, et se trouve `ici sur bitbucket.org/lbesson/bin <https://bitbucket.org/lbesson/bin>`_.

---------------------------------------------------------------------

Fichiers de configuration
-------------------------
Pour `Sublime Text 3  <sublimetext.fr.html>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Mes fichiers de configurations, snippets et scripts de constructions, pour `Sublime Text 3 <http://www.sublimetext.com/3>`_, sont dans ce dossier `<ST3/>`_.
La page `<sublimetext.fr.html>`_ contient beaucoup plus d'informations !

 * Par exemple, `newpython.sublime-snippet <./publis/ST3/newpython.sublime-snippet>`_ permet de facilement créer un nouveau script `Python <python.html>`_, `newscript.sublime-snippet <./publis/ST3/newscript.sublime-snippet>`_ fait la même chose pour un script GNU Bash.
 * `autotex.sublime-snippet <./publis/ST3/autotex.sublime-snippet>`_ permet de créer un document LaTeX vide utilisant `autotex`_, qui peut ensuite se compiler facilement en PDF via le script de construction `autotex.sublime-build <./publis/ST3/autotex.sublime-build>`_
 * `StrapDownJS.sublime-snippet <./publis/ST3/StrapDownJS.sublime-snippet>`_ facilite la création d'un fichier HTML utilisant mon super projet `StrapDownJS <http://lbesson.bitbucket.org/md/>`_ !

:État: *Maintenu activement* (juin 2016).

`munstrap <publis/munstrap/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
J'ai traduit en français un thème responsive pour `Munin 2.x <http://munin-monitoring.org/>`_, basé sur Twitter Bootstrap, depuis le projet `munstrap original <https://github.com/jonnymccullagh/munstrap>`_.
Open-source sur Bitbucket : `bitbucket.org/lbesson/munstrap/ <https://bitbucket.org/lbesson/munstrap/>`_.

:État: *À-jour.* (septembre 2014)

`conky <publis/conky/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Configuration pour `GNU Conky <http://conky.sourceforge.net/>`_.

:État: *Plus maintenu activement, mais fonctionne.* (janvier 2014)

`xpadder <publis/xpadder>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Quelques (vieux) fichiers de configuration pour mon utilisation du `logiciel XPadder <https://en.wikipedia.org/wiki/Xpadder/>`_ sur Windows (permet d'associer une touche du clavier à chaque bouton d'une manette pour PC).

:État: *Vieux* (2014), mais devrait bien marcher.

`byobu-conf <publis/byobu-conf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Fichiers de configuration pour le fantastique logiciel `Byobu <https://byobu.co/>`_, le meilleur multiplexeur de terminal disponible.

:État: *À-jour* (février 2016), marche bien.

`python <publis/python/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Quelques (vieux) fichiers de configuration pour mon utilisation quotidienne du `langage de programmation Python <https://www.python.org/>`_.

:État: *À-jour* (juin 2016), simpliste mais fonctionne parfaitement.

`firefox <publis/firefox>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Quelques `scripts utilisateur <https://openuserjs.org/>`_ et `styles utilisateur <https://userstyles.org/>`_ pour mon utilisation quotidienne du `navigateur web Mozilla Firefox <https://www.mozilla.org/en-US/firefox/new/>`_.

:État: *Tout petit* (2015).

`muttrc <publis/muttrc/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Configuration pour `Mutt <http://www.mutt.org/>`_, le meilleur client mail en console.

:État: *Plus maintenu activement, mais fonctionne.* (janvier 2014)

`irssi <publis/irssi>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Vieux fichiers de configuration pour `Irssi <https://irssi.org/>`_, client IRC en ligne de commande.

:État: *Vieux* (2014), mais devrait bien marcher.

`nautilus-scripts <publis/nautilus-scripts/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
De vieux scripts pour l'explorateur de fichier **Gnome Nautilus**.

:État: *N'est plus maintenu !* (novembre 2011 à juillet 2012)

`gedit-coloration <publis/gedit-coloration/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Quelques améliorations pour la configuration pour **GTK-SourceView** (bibliothèque C++ pour la coloration syntaxique de code sources, utilisée notamment par gedit et gobby).

:État: *Plus du tout maintenu.* (novembre 2011 à juillet 2013)

`gedit-tools <publis/gedit-tools/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
De vieux scripts pour **Gnome Gedit**, avec le plugin *Outils extérieurs*.

:État: *N'est plus maintenu !* (été 2012)

---------------------------------------------------------------------

Projets liés à mes enseignements
--------------------------------
Quelques projets de programmation liés à certains enseignements passés :

`hackathon <publis/hackathon>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Quelques sujets de TP pour des hackathons (compétitions de programmation en temps limité), donnés en 2015 à `Mahindra Ecole Centrale <http://www.mahindraecolecentrale.edu.in/>`_ pour le `cours CS101 <../cs101/>`_.

:État: *Enseignement* (en Inde, en 2015).

`mec-cs101-integrals <publis/mec-cs101-integrals>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
`Solution complète pour un projet de programmation sur « l'Intégration Numérique » <http://mec-cs101-integrals.readthedocs.io/>`_, donné à `Mahindra Ecole Centrale <http://www.mahindraecolecentrale.edu.in/>`_ en 2015 pour le `cours CS101 <../cs101/>`_.

:État: *Enseignement* (en Inde, en 2015).

`mec-cs101-matrices <publis/mec-cs101-matrices>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
`Solution complète pour un projet de programmation sur « l'Algèbre Linéaire et les Matrices » <http://mec-cs101-matrices.readthedocs.io>`_, donné à `Mahindra Ecole Centrale <http://www.mahindraecolecentrale.edu.in/>`_ en 2015 pour le `cours CS101 <../cs101/>`_.

:État: *Enseignement* (en Inde, en 2015).

`2048-agreg <publis/2048-agreg>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Une version modifiée du `fameux jeux 2048 <2048>`_, pour des mathématiciens geeks (préparant l'`agrégation <agreg-2014/>`_).

:État: *Vieux* (2014), but marche bien (mobile ou bureau).

---------------------------------------------------------------------

Projets plus anciens
--------------------
Ces projets sont plus anciens, mais certains peuvent encore être intéressants :

`selfspy-vis <publis/selfspy-vis>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Un petit outil pour visualiser les données accumulées par `selfspy <https://github.com/gurgeh/selfspy>`_, open-source `sur GitHub <https://github.com/Naereen/selfspy-vis/>`_.

:État: *Vieux* (2016), assez limité.

`puzzle <publis/puzzle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Le mini jeu de Tetravex en *OCaml* réalisé en L3 (Avril 2012) pour le cours de programmation 2. J'avais eu 17/20.
Remis à neuf en mars 2014, et open-source sur mon compte bitbucket : `bitbucket.org/lbesson/projet-puzzle-ocaml-2012 <https://bitbucket.org/lbesson/projet-puzzle-ocaml-2012>`_.

:État: *Fonctionne bien* mais plus maintenu.

`Zenity <publis/Zenity/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Une bibliothèque ``OCaml`` pour utiliser l'outil **GNU Zenity** de façon simple, complètement *typée* et efficace (mais salement codée).
Publié sur mon compte bitbucket : `bitbucket.org/lbesson/zenity-ocaml <https://bitbucket.org/lbesson/zenity-ocaml>`_.

Fonctionne *"comme ça"* : pas besoin d'installation (juste inclure les fichiers ``zenity.ml`` et ``zenity.mli`` dans votre projet).
Par exemple :

.. code-block:: ocaml

   open Zenity;;
   let ma_couleur = color_selection ~title:"Choisir une couleur" () ;;
   (* Permet de demander à l'utilisateur de choisir une couleur, et la renvoie dans une chaîne,
   revient à invoquer 'zenity --color-selection --title="Choisir une couleur"', dans un terminal. *)


:État: *N'est plus maintenu activement* (avril 2014) mais fonctionne avec les dernières versions d'OCaml (4.03.0) et de Zenity.

`kaggle <publis/kaggle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Petit projet réalisé pour le cours d'**Introduction à l'Apprentissage Statistique** de ``L3`` à l'`ENS Cachan <http://www.ens-cachan.fr/>`_ en mai 2013.
Rien de très palpitant, sinon une intéressante utilisation de ``Python 2.7`` pour réaliser *toutes* les différentes composantes d'un projet de programmation (codes, documentation, rapport, slides etc). J'avais eu 15/20.

:État: *N'est plus maintenu !* (mai 2013)

`Bomberman <publis/Bomberman/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Un jeu de **Bomberman**, multi-joueur en réseau, écrit en Python, réalisé de Nov. 2012 à Fév. 2013
pour le projet réseau de mon Master 1 (*1-21 MPRI*), auquel j'avais reçu 16.9/20 (seconde meilleure note). Open-source : `bitbucket.org/lbesson/mpri-bomberman <https://bitbucket.org/lbesson/mpri-bomberman>`_.

:État: *N'est plus maintenu !* (mars 2013)

`PDE_02_2015 <publis/PDE_02_2015>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Solution mathématique et numérique pour une équation différentielle partielle (EDP), venue du monde réelle.
Implémentation en plusieurs langages, en `Python 2 <python.html>`_ pure (`PDE_02_2015 <PDE_02_2015/>`_), et en `MATLAB/Octave <matlab-clones.fr.html>`_ (`PDE_09_2014 <PDE_09_2014/>`_, aussi en `OCaml pure <ocaml.html>`_ avec `GnuPlot <gnuplot.html>`_ pour l'affichage).

:État: *Recherche* (2014, 2015), mais ça marchait bien.

`f6_sphinx_theme <publis/f6_sphinx_theme>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Un thème blanc et bien propre pour `Sphinx doc <http://sphinx-doc.org/>`_, open-source `sur GitHub <https://github.com/Naereen/f6_sphinx_theme/>`_.

:État: *À-jour* (2016), marche bien.

`MOcamlPlot <publis/MOcamlPlot.zip>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Une bibliothèque ``OCaml`` pour dessiner des graphiques **en console** facilement.
Ce projet proposait une surcharge des opérateurs (réalisée très *salement*), ainsi que des commandes d'affichage « *à la Maple* »
(du genre ``plot("cos((x+5)/2.16)",0--10)``), et quelques trucs assez géniaux.
Je manque de temps pour le remettre à jour.

:État: *N'est plus maintenu !* (février 2012). Peut fonctionner. Mais pas sûr.

`ColorML <publis/ColorML>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Expérimentation (très manuelle) pour utiliser des couleurs dans un programme OCaml (v3.12) en ligne de commande.

:État: *Très vieux* (2012).

---------------------------------------------------------------------

Divers
------
Vieux documents (inutiles).

`webcomics.pdf <publis/webcomics.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Un article sur `<http://questionablecontent.net>`_ pour le journal étudiant de l'ENS Cachan (« La Sauce ») du mois de janvier 2014 (`<http://www.lasauce.ens-cachan.fr/archives.php>`_).

`seminaire_crans.pdf <publis/seminaire_crans/seminaire_crans.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Les slides de mon séminaire sur les outils de documentation, fait en Mars 2013 pour le `CRANS <http://www.crans.org>`_ (en français).


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

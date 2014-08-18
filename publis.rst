.. meta::
   :description lang=fr: Page décrivant les publications du dossier publis/
   :description lang=en: Description of publications in folder publis/

###########################################################
 Productions techniques diverses (du dossier `<publis/>`_)
###########################################################
.. include:: .special.rst
À-propos
--------
Cette page est là pour décrire les divers projets *techniques* présents dans le dossier `<publis/>`_.

Ce dossier contient un certain nombre de petites productions
(logiciels, scripts ou autres); ainsi que certains projets plus solides.

.. sidebar:: Retourner à l'accueil

   Si cette page ne joue intéresse pas, allez plutôt consulter celle là `<index.html>`_.


.. note:: Conditions de distribution

   Chaque projets listés sur cette page est distribué *librement*,
   sous les termes de la `licence GPLv3 <LICENSE.html>`_ !


---------------------------------------------------------------------

Projets
-------
Voici une courte liste de certains projets contenus dans le dossier `<publis/>`_.

`latex <publis/latex/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Quelques fichiers et programmes utiles pour faire du \\(\\LaTeX{}\\).

En particulier `autotex <publis/latex/autotex>`_, le petit script Bash
que j'utilise *quotidiennement* pour écrire du \\(\\LaTeX{}\\) sans avoir à recopier
d'en-têtes (``\usepackage`` et autres inutilités).

:État: *Fonctionne bien* et maintenu activement.

`puzzle <publis/puzzle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Le mini jeu de Tetravex en *OCaml* réalisé en L3 (Avril 2012)
pour le cours de programmation 2. J'avais eu 17/20.
Remis à neuf, et nettoyé récemment pour aider une élève en L3 d'informatique à Orsay.

:État: *Fonctionne bien* mais plus maintenu.

`Bomberman <publis/Bomberman/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Le jeu de **Bomberman** en réseau réalisé de Nov. 2012 à Fév. 2013
pour le projet réseau (*1-21 MPRI*), auquel j'ai reçu 16.9/20.

:État: *À-jour.*

`MOcamlPlot <publis/MOcamlPlot.zip>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Une bibliothèque `OCaml` pour dessiner des graphiques **en console** facilement.
Ce projet proposait une surcharge des opérateurs (réalisée très *salement*), ainsi que des commandes « *à la Maple* »
(du genre ``plot("cos((x+5)/2.16)",0--10)``), et quelques trucs assez géniaux.
Je manque de temps pour le remettre à jour.

:État: *N'est plus maintenu!* Devrait peut-être fonctionner. Mais pas sûr.

`Zenity <publis/Zenity/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Une bibliothèque ``OCaml`` pour utiliser l'outil **GNU Zenity** de façon simple, complètement *typée* et efficace.
Fonctionne *comme ça* : pas besoin d'installation (juste inclure le fichier zenity.ml et zenity.mli dans votre projet).
Par example :

.. code-block:: ocaml

   open Zenity;;
   let choose_color = color_selection ~title:"Choisir une couleur" () ;;
   (* Permet de demander à l'utilisateur de choisir une couleur,
   reviens à invoquer zenity --color-selection --title="Choisir une couleur" *)


:État: *N'est plus maintenu activement* mais fonctionne avec les dernières versions d'OCaml (4.01.0 et bêtas) et de Zenity.

`ansi-colors <publis/ansi-colors/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. pypi-release:: ANSIColors-balises
   :prefix: La dernière version est ici (normalement, l'extension non officielle cheeseshop permet d'intégrer directement un lien de téléchargement)
   :class: sidebar

.. BUGFIX ?

**ANSIColors-balises** est un module ``Python`` pour manipuler facilement
et efficacement les couleurs ``ANSI`` dans un terminal **UNIX** (ou sur **Windows via Cygwin**).
Il est aussi hébergé sur `PyPi <https://pypi.python.org/pypi/ANSIColors-balises>`_.
(Des statistiques *partielles*, pour le moi de Mai 2013 `sont ici <http://pypi-ranking.info/module/ANSIColors-balises>`_
et d'autres `ici <http://developers.dazzit.com/item/en/US/Python-Packages/ANSIColors-balises/>`_.)


.. runblock:: pycon

   >>> try:
   ...     from ANSIColors import printc
   >>> except:
   ...     def printc(a): print(a)
   >>> printc("<red>Ceci est rouge ?<white>La c'est blanc.<Blue>Et enfin le fond est bleu ici.<reset> (ca ne marche pas ici, normal)")


:État: *À-jour.* Fonctionne vraiment bien. Le nombre de téléchargement quotidien augmente depuis juillet 2014.

.. rubric:: Quelques badges :

.. raw:: html

   <b>Infos:</b>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=version_badge"><img alt="Version of ANSIColors-balises" title="Version of ANSIColors-balises" src="https://pypip.in/version/ANSIColors-balises/badge.png" /></a>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=format_badge"><img alt="Format of ANSIColors-balises" title="Format of ANSIColors-balises" src="https://pypip.in/format/ANSIColors-balises/badge.png" /></a>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=license_badge"><img alt="License of ANSIColors-balises" title="License of ANSIColors-balises" src="https://pypip.in/license/ANSIColors-balises/badge.png" /></a>
   <b>Stats:</b>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=d_badge_day"><img alt="Stats day for ANSIColors-balises" title="Stats day for ANSIColors-balises" src="https://pypip.in/download/ANSIColors-balises/badge.png?period=day" /></a>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=d_badge_week"><img alt="Stats week for ANSIColors-balises" title="Stats week for ANSIColors-balises" src="https://pypip.in/download/ANSIColors-balises/badge.png?period=week" /></a>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=d_badge_month"><img alt="Stats month for ANSIColors-balises" title="Stats month for ANSIColors-balises" src="https://pypip.in/download/ANSIColors-balises/badge.png?period=month" /></a>


.. rubric:: Quelques badges en SVG (juste pour jouer) :

.. raw:: html

   <b>Infos:</b>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=version_badge"><img alt="Version of ANSIColors-balises" title="Version of ANSIColors-balises" src="https://pypip.in/version/ANSIColors-balises/badge.svg" /></a>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=format_badge"><img alt="Format of ANSIColors-balises" title="Format of ANSIColors-balises" src="https://pypip.in/format/ANSIColors-balises/badge.svg" /></a>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=license_badge"><img alt="License of ANSIColors-balises" title="License of ANSIColors-balises" src="https://pypip.in/license/ANSIColors-balises/badge.svg" /></a>
   <b>Stats:</b>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=d_badge_day"><img alt="Stats day for ANSIColors-balises" title="Stats day for ANSIColors-balises" src="https://pypip.in/download/ANSIColors-balises/badge.svg?period=day" /></a>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=d_badge_week"><img alt="Stats week for ANSIColors-balises" title="Stats week for ANSIColors-balises" src="https://pypip.in/download/ANSIColors-balises/badge.svg?period=week" /></a>
   <a href="https://pypi.python.org/pypi/ANSIColors-balises/?src=d_badge_month"><img alt="Stats month for ANSIColors-balises" title="Stats month for ANSIColors-balises" src="https://pypip.in/download/ANSIColors-balises/badge.svg?period=month" /></a>


`kaggle <publis/kaggle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Petit projet réalisé pour le cours d'**Apprentissage** de ``L3`` à l'``ENS Cachan`` en mai 2013.
Rien de très palpitant, sinon une intéressante utilisation de ``Python`` pour réaliser
toutes les différentes composantes d'un projet de programmation
(codes, documentations, rapports, slides etc). J'avais eu 15/20.
Finalement, `je n'ai pas participé à la dernière étape sur Kaggle <https://www.gequest.com/users/96638/naereen>`_.

:État: *À-jour.*

`nautilus-scripts <publis/nautilus-scripts/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
De vieux scripts pour **Gnome Nautilus**.

:État: *N'est plus maintenu!*

`gedit-tools <publis/gedit-tools/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
De vieux scripts pour **Gnome Gedit**, avec le plugin *Outils extérieurs*.

:État: *N'est plus maintenu!*


---------------------------------------------------------------------

Scripts et binaires
-------------------
Voir la page `<bin.html>`_ pour plus de description sur les scripts et les binaires contenus dans le dossier `<publis/bin/>`_.

---------------------------------------------------------------------

Fichiers de configuration
-------------------------
`conky <publis/conky/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Configuration pour **GNU Conky**.

:État: *Plus maintenu activement, mais fonctionne.*

`muttrc <publis/muttrc/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
Configuration pour **Mutt**.

:État: *À-jour.*

`gedit-coloration <publis/gedit-coloration/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Configuration pour **GTK-SourceView** (avec gedit ou gobby).

:État: *Plus du tout maintenu.*

`gedit <publis/gedit/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
Divers plugins pour **Gnome Gedit**.

:État: *Plus du tout maintenu.*


.. todo:: Rajouter certains autres trucs ici !

---------------------------------------------------------------------

Divers
------
`webcomics.pdf <publis/webcomics.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Un article sur `<http://questionablecontent.net>`_ pour la Sauce
 du mois de janvier (`<http://www.lasauce.ens-cachan.fr/archives.php>`_).

`seminaire_crans.pdf <publis/seminaire_crans/seminaire_crans.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Les slides du séminaire sur les outils de documentation fait en Mars 2013
 pour le `crans <http://www.crans.org>`_.

.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
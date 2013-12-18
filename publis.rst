.. meta:: 
   :description lang=fr: Page décrivant les publications du dossier publis/
   :description lang=en: Description of publications in folder publis/

#################################################
 Publications diverses (du dossier `<publis/>`_)
#################################################
.. include:: .special.rst
   
---------------------------------------------------------------------

À-propos
--------

 Cette page est là pour décrire les divers éléments du dossier
 `<publis/>`_.

 Ce dossier contient un certain nombre de petites publications
 (logiciels, scripts ou autres);
 ainsi que certains projets plus importants.

.. sidebar:: Retourner à l'accueil

   Si cette page ne joue intéresse pas, allez plutôt consulter `celle là <index.html>`_.


.. note:: Conditions de distribution

   Chaque projets listés sur cette page est distribué *librement*,
   sous les termes de la `licence GPLv3 <LICENSE.html>`_.


---------------------------------------------------------------------

Projets
-------

Voici une courte liste de certains projets contenus dans le dossier `<publis/>`_.

`Bomberman <publis/Bomberman/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Le jeu de **Bomberman** en réseau réalisé de Nov. 2012 à Fév. 2013
 pour le projet réseau (*1-21 MPRI*), auquel j'ai reçu 16.9/20.

 :État: *À-jour.*


`MOcamlPlot <publis/MOcamlPlot/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Une bibliothèque `OCaml` pour dessiner des graphiques **en console** facilement.
 Propose une surcharge des opérateurs (du genre ``plot("cos((x+5)/2.16)",0-10)``),
 et plein de trucs géniaux !

 :État: *N'est plus maintenu!*


`Zenity <publis/Zenity/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
 Une bibliothèque ``OCaml`` pour utiliser l'outil **GNU Zenity** de façon
 sûre, *typée* et amusante.
 Par example :

 .. code-block:: ocaml

    open Zenity;;
    let choose_color = color_selection ~title:"Choisir une couleur" () ;;
    (* Permet de demander à l'utilisateur de choisir une couleur,
    reviens à invoquer zenity --color-selection --title="Choisir une couleur" *)


 :État: *N'est plus maintenu!*


`ansi-colors <publis/ansi-colors/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 **ANSIColors-balises** est un module ``Python`` pour manipuler facilement
 et efficacement les couleurs ``ANSI`` dans un terminal **UNIX** (ou sur **Windows via Cygwin**).
 Il est aussi héberger sur `PyPi <https://pypi.python.org/pypi/ANSIColors-balises>`_.

 :État: *À-jour.*


.. pypi-release:: ANSIColors-balises
   :prefix: La dernière version est ici 
            (normalement, l'extension non officielle cheeseshop
            permet d'intégrer directement un lien de téléchargement)
   :class: sidebar



`kaggle <publis/kaggle/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Petit projet réalisé pour le cours d'**Apprentissage** de ``L3`` à l'``ENS Cachan``
 en mai 2013.
 Rien de très palpitant, sinon une intéressante utilisation de ``Python`` pour réaliser
 toutes les différentes composantes d'un projet de programmation
 (codes, documentations, rapports, slides etc).

 :État: *À-jour.*


`nautilus-scripts <publis/nautilus-scripts/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Des scripts pour **Gnome Nautilus**.

 :État: *N'est plus maintenu!*


`gedit-tools <publis/gedit-tools/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Des scripts pour **Gnome Gedit**, avec le plugin *Outils extérieurs*.

 :État: *N'est plus maintenu!*


---------------------------------------------------------------------

Scripts et binaires
-------------------
 Voir la page `<bin.html>`_ pour plus de description sur les scripts et les binaires
 contenus dans le dossier `<publis/bin/>`_.

---------------------------------------------------------------------

Fichiers de configuration
-------------------------

`conky <publis/conky/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
 Configuration pour **GNU Conky**.

 :État: *À-jour.*


`gedit-coloration <publis/gedit-coloration/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Configuration pour **GTK-SourceView** (avec gedit ou gobby).

 :État: *À-jour.*


`gedit <publis/gedit/>`_
^^^^^^^^^^^^^^^^^^^^^^^^
 Divers plugins pour **Gnome Gedit**.

 :État: *À-jour.*


`muttrc <publis/muttrc/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^
 Configuration pour **Mutt**.

 :État: *À-jour.*

---------------------------------------------------------------------

Divers
------
`webcomics.pdf <publis/webcomics.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Un article sur `<http://questionablecontent.net>`_ pour la dernière Sauce
 (`<http://www.lasauce.ens-cachan.fr/archives.php>`_).

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
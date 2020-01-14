.. meta::
   :description lang=fr: Page décrivant les scripts JavaScript utilisés pour mes pages
   :description lang=en: Description of JavaScript scripts in my web pages

##########################################################################
 Utilisation concrète de JavaScript (pour des pages générées avec Sphinx)
##########################################################################

---------------------------------------------------------------------

À-propos
--------
Cette page décrit les divers **scripts JavaScript stockés dans le dépôt**
`web-sphinx-scripts <https://bitbucket.org/lbesson/web-sphinx-scripts>`_.

Mais elle **décrit aussi chaque utilisation de JS pour des fonctionnalités dans certaine des pages de ce site**.

.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter `celle là <index.html>`_.

------------------------------------------------------------------------------

Liste des utilisations de JS
----------------------------
* Utilisation intelligente de Google Analytics (un seul script pour des pages hébergées sur plusieurs serveurs différents),
* Pour ajouter des ``alert`` dans `<gnuplot.html>`_, `<ocaml.fr.html>`_ ou encore `<python.html>`_,
* Pour embarquer un graphique de progression de la traduction de Bitbucket.org sur `<transifex.fr.html>`_ et `<transifex.en.html>`_,
* Pour embarquer un fichier hébergé sur Bitbucket dans `<bitbucket-features.fr.html>`_,
* Pour tester des choses dans `<avoir.html>`_,
* Pour les terminaux dans `<try-ocaml.html>`_, `<skulpt.html>`_, `<python.html>`_, `<gnuplot.html>`_ et  `<gnuplot_embed.html>`_.
* Pour afficher la qualité de l'air à Paris dans `<plume-air-paris.fr.html>`_,

J'ai supprimé ces autres fonctionnalités en décembre 2017 pour adopter un style plus léger.

* (supprimé) Pour déterminer quel serveur est utilisé (afin d'afficher en bas l'image de NGinx ou d'Apache HTTPD),
* (supprimé) Pour embarquer `SquirtFR`_, via le raccourcis clavier "q",
* (supprimé) Pour le changement de style, via le raccourcis clavier "s", pour changer le style de couleur (violet, orange, ou vert),

------------------------------------------------------------------------------

Liste des scripts du dépôt
--------------------------
Pas les miens
^^^^^^^^^^^^^
* `jQuery <_static/jquery.js>`_,
  la célèbre librairie JS. Incluse par défaut par Sphinx
  (pour la gestion de la barre latérale et d'autres trucs).

* `ace <_static/ace-new/>`_,
  un éditeur de texte en JS, intégré aux toplevels Python (`<python.html>`_ et `<skulpt.html>`_) ou en solo (`<ace.html>`_).

* `gnuplot.js <_static/gnuplot.js>`_ et `gnuplot_api.js <_static/gnuplot_api.js>`_
  pour le `terminal GNUPlot embarqué <gnuplot.html>`_.

* `skulpt.js <_static/skulpt.js>`_ et `python.js <_static/python/>`_
  pour les terminaux Python embarqués (`<skulpt.html>`_ et `<python.html>`_).

* `toplevel.js <_static/toplevel.js>`_ et `try-ocaml <_static/try-ocaml/>`_
  pour les terminaux OCaml embarqués (`<ocaml.fr.html>`_ et `<try-ocaml.fr.html>`_).

* (supprimé) `mousetrap.min.js <_static/mousetrap.min.js>`_ pour définir des raccourcis clavier
  (Allez-y, essayez ! Appuyez sur 'h' ou 'i' ou '→' ou '←' ou 'n' ou 'p', ou 'u' par exemple).

Les plugins jQuery
^^^^^^^^^^^^^^^^^^
* `jquery.scrollUp.min.js <_static/jquery.scrollUp.min.js>`_ pour ajouter un bouton
  pour remonter au sommet de la page, dans la barre latérale *(en bas à gauche !)*,

* `jquery.smooth-scroll.min.js <_static/jquery.smooth-scroll.min.js>`_ pour permettre
  le défilement fluide lors du clic d'un lien *interne* à une page,

* (supprimé) `jquery.timeago.js <_static/jquery.timeago.js>`_  pour afficher la date de dernier changement via le raccourcis clavier "u".

Pas les miens mais adaptés
^^^^^^^^^^^^^^^^^^^^^^^^^^
* `horloge.js <_static/horloge.js>`_ pour `<time.html>`_,

* (supprimé) `simpleimagetrail.js <_static/simpleimagetrail.js>`_ (désactivé par défaut),

* (supprimé) `nprogress.js <_static/nprogress.js>`_ et `nprogress.ccs <_static/nprogress.ccs>`_
  pour afficher une barre de progression dans le bas de la page (en :cyan:`cyan`),

* (supprimé) `forkit.js <_static/forkit.js>`_ (la *bannière* "Sur Bitbucket?" qui bouge en haut à droite, :red:`désactivé désormais`) et `fokus.min.js <_static/fokus.min.js>`_ (la page donne le focus lors de la sélection d'un élément :red:`désactivé désormais`) viennent de `hakim.se <http://hakim.se/>`_. Merci à lui !

Les miens
^^^^^^^^^
* (supprimé) `referrer.js <_static/referrer.js>`_
  utilisé par les pages de gestions d'erreur (`<404.html>`_ ou `<403.html>`_)
  pour éventuellement afficher des messages d'informations,

* (utilisé pour les dossiers) `StrapDown.js <_static/md/>`_ un compilateur Markdown > HTML,

* (utilisé pour les dossiers) `SquirtFR <_static/squirt/>`_ un *signapplet* pour lire rapidement une page web.

.. (c) Lilian Besson, 2011-2020, https://bitbucket.org/lbesson/web-sphinx/

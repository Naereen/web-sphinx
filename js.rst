.. meta::
   :description lang=fr: Page décrivant les scripts JavaScript utilisés pour mes pages
   :description lang=en: Description of JavaScript scripts in my web pages

##########################################################################
 Utilisation concrète de JavaScript (pour des pages générées avec Sphinx)
##########################################################################

.. todo:: Maintenir cette page à jour !

---------------------------------------------------------------------

À-propos
--------
Cette page est là pour décrire les divers **scripts JavaScript stockés dans le dépôt**
`web-sphinx-scripts <https://bitbucket.org/lbesson/web-sphinx-scripts>`_.

Mais aussi pour **décrire chaque utilisation de JS pour de nombreuses
petites fonctionnalités dans chacune des pages** (afficher une information différente selon
la localisation de la page ou encore afficher la résolution d'écran utilée pour afficher,
par exemple).

.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter `celle là <index.html>`_.

------------------------------------------------------------------------------

Liste (non exhaustive) des autres utilisations de JS
----------------------------------------------------
* Utilisation intelligente de Google Analytics (un seul script pour des pages hébergées en plusieurs endroits),
* Pour afficher le nom de la page dans la barre supérieure,
* Pour déterminer quel serveur est utilisé (afin d'afficher l'image de NGinx ou d'Apache) en bas,
* Pour ajouter des ``alert`` dans `<gnuplot.html>`_, `<ocaml.fr.html>`_ ou encore `<python.html>`_,
* Pour embarquer un graphique de progression de la traduction de Bitbucket.org sur `<transifex.fr.html>`_ et `<transifex.en.html>`_,
* Pour embarquer un fichier hébergé sur Bitbucket dans `<bitbucket-features.fr.html>`_,
* Pour un test dans `<sparkline.html>`_,
* Pour embarquer `SquirtFR`_, via le raccourcis clavier "q",
* Pour le changement de style, via le raccourcis clavier "s", pour changer le style de couleur (violet, orange, ou vert),
* Pour tester des choses dans `<avoir.html>`_,
* Et pour plein d'autres choses, ce n'est pas toujours facile de garder une liste à jour ici.

------------------------------------------------------------------------------

Liste des scripts du dépôt
--------------------------
Pas les miens
^^^^^^^^^^^^^
* `jQuery <_static/jquery.js>`_,
  la célèbre librairie JS. Incluse par défaut par Sphinx
  (pour la gestion de la barre latérale). Simplement mise à jour !

* `ace <_static/ace-new/>`_,
  un éditeur de texte en JS, intégré aux toplevels Python (`<python.html>`_ et `<skulpt.html>`_) ou en solo (`<ace.html>`_).

* `gnuplot.js <_static/gnuplot.js>`_ et `gnuplot_api.js <_static/gnuplot_api.js>`_
  pour le `terminal GNUPlot embarqué <gnuplot.html>`_.

* `skulpt.js <_static/skulpt.js>`_ et `python.js <_static/python/>`_
  pour les terminaux Python embarqués (`<skulpt.html>`_ et `<python.html>`_).

* `toplevel.js <_static/toplevel.js>`_ et `try-ocaml <_static/try-ocaml/>`_
  pour les terminaux OCaml embarqués (`<ocaml.fr.html>`_ et `<try-ocaml.fr.html>`_).

* `mousetrap.min.js <_static/mousetrap.min.js>`_ pour définir des raccourcis clavier
  (Allez-y, essayez ! Appuyez sur 'h' ou 'i' ou '→' ou '←' ou 'n' ou 'p', ou 'u' par exemple).

Les plugins jQuery
^^^^^^^^^^^^^^^^^^
* `jquery.scrollUp.min.js <_static/jquery.scrollUp.min.js>`_ pour ajouter un bouton
  pour remonter au sommet de la page, dans la barre latérale *(en bas à gauche !)*,

* `jquery.smooth-scroll.min.js <_static/jquery.smooth-scroll.min.js>`_ pour permettre
  le défilement fluide lors du clic d'un lien *interne* à une page,

* `jquery.timeago.js <_static/jquery.timeago.js>`_  pour afficher la date de dernier changement
   via le raccourcis clavier "u".

Pas les miens mais adaptés
^^^^^^^^^^^^^^^^^^^^^^^^^^
* `horloge.js <_static/horloge.js>`_ pour `<time.html>`_,

* `simpleimagetrail.js <_static/simpleimagetrail.js>`_ (désactivé par défaut),

* `nprogress.js <_static/nprogress.js>`_ et `nprogress.ccs <_static/nprogress.ccs>`_
  pour afficher une barre de progression dans le bas de la page (en :cyan:`cyan`),

* `forkit.js <_static/forkit.js>`_ (la *bannière* "Sur Bitbucket?" qui bouge en haut à droite, :red:`désactivé désormais`)
  et `fokus.min.js <_static/fokus.min.js>`_ (la page donne le focus lors de la sélection d'un élément :red:`désactivé désormais`)
  viennent de `hakim.se <http://hakim.se/>`_. Merci à lui !

Les miens
^^^^^^^^^
* `referrer.js <_static/referrer.js>`_
  utilisé par les pages de gestions d'erreur (`<404.html>`_ ou `<403.html>`_)
  pour éventuellement afficher des messages d'informations,

* `StrapDown.js <_static/md/>`_ un compilateur Markdown > HTML,

* `SquirtFR <_static/squirt/>`_ un *signapplet* pour lire rapidement une page web.

Et plein d'autres
^^^^^^^^^^^^^^^^^
Et encore plein d'autres que j'oublie de lister ici... La flemme !


.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

.. meta:: 
   :description lang=fr: Page décrivant les scripts JavaScript utilisés pour mes pages
   :description lang=en: Description of JavaScript scripts in my web pages

###########################################################################################
 Scripts et petites fonctionnalités en JavaScript (pour des pages générées avec Sphinx)...
###########################################################################################
.. include:: .special.rst
.. include:: .javascript.rst
.. warning:: Cette page est en cours de rédaction...

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

---------------------------------------------------------------------

Liste des scripts du dépôt
--------------------------
Pas les miens
^^^^^^^^^^^^^
* `jQuery <_static/jquery.js>`_,
  librairie célèbre. Incluse par défaut par Sphinx 
  (pour la gestion de la barre latérale). Simplement mis à jour !

* `ace <_static/ace/>`_,
  un éditeur de texte en JS. Intégration aux toplevels Python et Ocaml
  toujours en développement.

* `gnuplot.js <_static/gnuplot.js>`_ et `gnuplot_api.js <_static/gnuplot_api.js>`_
  pour le terminal GNUPlot embarqué (voir `<gnuplot.html>`_).

* `skulpt.js <_static/skulpt.js>`_ et `python <_static/python/>`_
  pour les terminaux Python embarqués.

* `toplevel.js <_static/toplevel.js>`_ et `try-ocaml <_static/try-ocaml/>`_
  pour les terminaux OCaml embarqués.

* `shortcuts.js <_static/shortcuts.js>`_ pour définir des raccourcis clavier
  (essayez ! Appuyez sur 'h' ou 'i' ou '→' ou '←' ou 'n' ou 'p').

Les plugins jQuery
^^^^^^^^^^^^^^^^^^
* `jquery.scrollUp <_static/jquery.scrollUp.min.js>`_ pour ajouter un bouton
  pour remonter au sommet de la page, dans la barre latérale *(en bas à gauche :) !)*.

* `jquery.smooth-scroll <_static/jquery.smooth-scroll.min.js>`_ pour permettre
  le défilement fluide lors du clic d'un lien **interne** à une page.

* `jquery.timeago <_static/jquery.timeago.js>`_ (toujours en béta).

* `waypoints <_static/waypoints.min.js>`_ (toujours en béta).

Pas les miens mais adaptés
^^^^^^^^^^^^^^^^^^^^^^^^^^
* `horloge.js <_static/horloge.js>`_ pour `<time.html>`_.

* `simpleimagetrail.js <_static/simpleimagetrail.js>`_ (désactivé par défaut).

Les miens
^^^^^^^^^
* `referrer.js <_static/referrer.js>`_ (**toujours en béta**)
  utilisé par les pages de gestions d'erreur (`<404.html>`_ ou `<403.html>`_)
  pour éventuellement afficher des messages d'informations.

------------------------------------------------------------------------------

Liste (non exhaustive) des autres utilisations de JS
----------------------------------------------------
* Utilisation intelligente de Google Analytics (un seul script pour des pages hébergées en plusieurs endroits)...
* Pour la sidebar (mais ça, c'est fait par Sphinx sans que je n'y touche)...
* Pour afficher la location dans la barre supérieure...
* Pour les détails du navigateur (user-agent), la taille d'écran, la localisation et l'adresse IP dans la barre inférieure...
* Pour déterminer quel serveur est utilisé (afin d'afficher l'image de NGinx ou d'Apache) en bas...
* Pour proposer de voir la page sur un autre serveur (ex. jarvis propose lbesson.qc.to et besson.qc.to)...
* Pour ajouter des ``window.alert`` dans `<gnuplot.html>`_, `<ocaml.html>`_ ou encore `<python.html>`_...
* Pour utiliser le convertisseur *RSS*>*HTML* de **generateit.net** dans `<rss.html>`_...
* Pour embarquer un graphique de progression de la traduction de Bitbucket.org sur `<transifex.fr.html>`_ et `<transifex.en.html>`_...
* Et pour tester des choses dans `<avoir.html>`_ !


.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
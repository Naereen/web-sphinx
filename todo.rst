##########################################
 Liste de problèmes à régler (TODO liste)
##########################################
.. include:: .special.rst
À propos
--------
Cette page accueille une liste des problèmes à résoudre.

.. sidebar:: Liste personnelle

   Une liste "à jour" de chose à faire (privée) est là `<TODO.html>`_.


Cette fonctionnalité viend de l'extension officielle ``sphinx.ext.todo``.

De tels soucis peuvent être déclarés via : ::

    .. todo::

    Voici un soucis.


TODO génériques
---------------
Ici se trouve des **TODO** génériques, qui concernent le projet entier (hebergé
sur le dépôt `web-sphinx <https://bitbucket.org/lbesson/web-sphinx/>`_).

.. todo:: Articles sur Google Analytics, connexe à `<beacon.html>`_.

.. todo:: Nettoyer les vieilles pages, notamment `<trademarks.html>`_.

.. todo:: Intégrer Squirt dans la barre relbar supérieure (uniquement sur PC, via *@media*).

.. todo:: ftp://ftp2.naheulbeuk.com/naheulbe/donjon-ba2012.zip

   Faire un article sur le Donjon de Naheulbeuk dans la Sauce ?

.. todo:: Débugguer `<skulpt.html>`_ ! Normalement c'est bon pour et `<python.html>`_ ?

.. todo:: Terminer l'intégration d'ACE aux toplevels Skulpt, GNUPlot et OCaml !

.. todo:: Installer un Blog (`<http://besson.qc.to/blog/>`_) avec Tinkerer

   Un script pour automatiquement ajouter l'entrée dans blog/index.html.
   Il faut trier les articles par blog/annee/mois/jour/titre/.
   
   :Objectif: actualiser le blog par courriel ou texto (pas ssh).
 
   Réfléchir: un cron qui lit les courriels, en cherche un commençant par [blog] envoyé par moi,
   et ajoute le contenu du courriel comme nouvel article.
   
   Ça à l'air pas mal, je continue de tester et je le mettrai en ligne quand j'en serais
   content.
   
   :Correction: En fait, Wordpress est vraiment pas mal (et permet de publier par courriel) !

   .. note:: J'ai aussi testé Jekyll, pas parfaitement convaincu non plus.


------------------------------------------------------------------------------

Toujours grâce à cette extension, il suffit d'utiliser la directive
``.. todolist::`` pour afficher la liste des différents **TODO**
écrits dans d'autres pages.

La liste
--------
.. todolist::

.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
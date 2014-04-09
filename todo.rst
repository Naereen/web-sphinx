#####################################
 Trucs à corriger sur ces pages webs
#####################################
.. include:: .special.rst
À propos
--------
Cette page accueille une liste des problèmes à résoudre, de trucs à faire, 
et d'idées pour améliorer ces pages webs (`<index.html>`_ pour en savoir plus).

.. sidebar:: Liste personnelle

   Une liste "à jour" de chose à faire (privée) est là `<TODO.html>`_.


Cette fonctionnalité viend de l'extension officielle ``sphinx.ext.todo``.

De tels soucis peuvent être déclarés via : ::

    .. todo:: Bug !

    Voici un soucis.


TODO génériques
---------------
Ici se trouve des **TODO** génériques, qui concernent le projet entier (hebergé
sur le dépôt `web-sphinx <https://bitbucket.org/lbesson/web-sphinx/>`_).

.. todo:: Article sur Google Analytics, connexe à `<beacon.html>`_.

.. todo:: Nettoyer les vieilles pages, notamment `<trademarks.html>`_.

.. todo:: Intégrer Squirt ?

   Dans la barre relbar supérieure (uniquement sur PC, via *@media*).
   Déjà installé via le raccourci clavier "q", qui de toute façon ne marche pas vraiment sur téléphone, donc ça revient au même.

.. todo:: ftp://ftp2.naheulbeuk.com/naheulbe/donjon-ba2012.zip

   Faire un article sur le Donjon de Naheulbeuk dans la Sauce ?


.. versionadded:: 2.1 

   J'ai réparé `<skulpt.html>`_ et `<python.html>`_.
   Ils ont tous les deux ACE d'activés, de jolis bouton etc


.. todo:: Terminer l'intégration d'ACE aux toplevels GNUPlot et OCaml !

.. todo:: Installer un Blog (`<http://besson.qc.to/blog/>`_) avec Tinkerer ?

   Un script pour automatiquement ajouter l'entrée dans blog/index.html.
   Il faut trier les articles par blog/annee/mois/jour/titre/.
   
   :Objectif: actualiser le blog par courriel ou texto (pas ssh). Par texto, ce serait carrément le plus drôle.
 
   Réfléchir: un cron qui lit les courriels, en cherche un commençant par [blog] envoyé par moi,
   et ajoute le contenu du courriel comme nouvel article.
   
   Ça à l'air pas mal, je continue de tester et je le mettrai en ligne quand j'en serais content.
   
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
##########################################
 Liste de problèmes à régler (TODO liste)
##########################################
.. include:: .special.rst
À propos
--------
Cette page accueille une liste des problèmes à résoudre.

Cette fonctionnalité viend de l'extension officielle ``sphinx.ext.todo``.

De tels soucis peuvent être déclarés via : ::

    .. todo::

    Voici un soucis.

TODO génériques
---------------
Ici se trouve des **TODO** génériques, qui concernent le projet entier (hebergé
sur le dépôt `web-sphinx <https://bitbucket.org/lbesson/web-sphinx/>`_).

.. todo:: Terminer l'intégration d'ACE aux toplevels Skulpt et OCaml.

.. todo:: Installer un Blog (`<http://besson.qc.to/blog/>`_) avec Wordpress ? Avec Sphinx et un script ?

   Un script pour automatiquement ajouter l'entrée dans blog/index.html.
   
   Il faut trier les articles par blog/annee/mois/jour/titre/ (mais WD fait ça seul).
   
   Objectif: actualiser le blog par mail ou texto (pas ssh).
   Réfléchir: un cron qui lit les mails, en cherche un commençant par [blog] envoyé par moi,
   et ajoute le contenu du mail comme nouvel article.


.. todo:: Réfléchir v3 du site, avec la barre latérale "fixe" scrollable.

------------------------------------------------------------------------------

Toujours grâce à cette extension, il suffit d'utiliser la directive
``.. todolist::`` pour afficher la liste des différents **TODO**
écrits dans d'autres pages.

La liste
--------
.. todolist::

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
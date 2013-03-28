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

.. todo:: terminer de bosser sur .templates/*.html

.. todo:: idée : utiliser .templates/*.html pour changer le code rajouter en haut,en base (previous next), et lui faire rajouter un raccourcis.

------------------------------------------------------------------------------

Toujours grâce à cette extension, il suffit d'utiliser la directive
``.. todolist::`` pour afficher la liste des différents **TODO**
écrits dans d'autres pages.

La liste
--------

.. todolist::

.. include:: .bottom.fr.rst
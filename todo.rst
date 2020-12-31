#####################################
 Trucs à corriger sur ces pages webs
#####################################

À propos
--------
Cette page accueille une liste des problèmes à résoudre, de trucs à faire,
et d'idées pour améliorer ces pages webs (`<index.html>`_ pour en savoir plus).

------------------------------------------------------------------------------

Grâce à `cette extension <http://sphinx-doc.org/ext/todo.html>`_,
il suffit d'utiliser la directive ``.. todolist::`` pour afficher
la liste des différents **TODO** écrits dans d'autres pages.

La liste
--------
.. todolist::

------------------------------------------------------------------------------


Cette fonctionnalité viend de l'extension officielle ``sphinx.ext.todo``
(voir `cette page (sphinx.ext.todo) <http://sphinx-doc.org/ext/todo.html>`_ pour plus de détails).

De tels soucis peuvent être déclarés via : ::

    .. todo:: Bug !

       Voici un soucis.


TODO génériques
---------------
Ici se trouve des **TODO** génériques, qui concernent le projet entier (hebergé
sur le dépôt `web-sphinx <https://bitbucket.org/lbesson/web-sphinx/>`_).

.. todo:: Nettoyer les vieilles pages, notamment `<trademarks.html>`_.
.. todo:: Abandonner l'intégration d'ACE aux toplevels GNUPlot et OCaml !

.. versionadded:: 2.1

   J'ai réparé `<skulpt.html>`_ et `<python.html>`_.
   Ils ont tous les deux ACE d'activés, de jolis bouton etc.


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

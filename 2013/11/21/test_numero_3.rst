Test numero 3
=============
Voici un *autre* test de post sur ce blog.

Cette fois, on va *utiliser* :

 * les catégories (``.. categories:: ``),
 * la balise auteur (``.. author:: default``) pour rajouter un auteur,
 * la balise tag (``.. tags:: ``),
 * la balise commtaire (``.. comments:: ``).

.. more::

Là c'est la **suite du post**,
après la balise ``.. more::``.

 * Ça marche ?
 * C'est joli ?

Comment ça marche ?
^^^^^^^^^^^^^^^^^^^
C'est construit avec **Tinkerer**.

La doc est `par là <http://tinkerer.me/doc/tinkering.html#pages>`_.


Autres remarques
^^^^^^^^^^^^^^^^
Tinkerer est sensé savoir construire des pages *particulières* :

 * `<master.html>`_ ou `<index.html>`_, page d'accueil du blog.
 * `<page1.html>`_, `<page2.html>`_ quand il y aura plein de posts,
 * `<categories/>`_ pour regrouper les catégories,
 * `<tags/>`_ pour regrouper les tags,
 * `<archive.html>`_ pour regrouper tout les posts,
 * `<rss.html>`_ pour le flux RSS, même si pour l'instant ma page
   créée avec `<_sources/rss.txt>`_ qui l'emporte,


Fin ?
^^^^^
En attendant le post suivant !


.. author:: default
.. categories:: tinkerer, sphinx
.. tags:: test
.. comments:: Second post, le titre est un piège.

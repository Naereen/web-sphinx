############################
 Liste des **trucs à voir**
############################
.. include:: .special.rst

Espace d'expérimentations
-------------------------
.. versionadded:: 1.4

D'autres rôles (rajoutés grâce à `<_sources/.special.txt>`_ et au travail
réalisé pour `.templates/layout.html` :

 * :under:`souligné`, avec ``:under:`texte```;
 * :blink:`clignotant`, avec ``:blink:`texte``` (pas toujours supporté !);
 * :over:`surligné`, avec ``:over:`texte```;
 * :line:`barré`, avec ``:line:`texte```;
 * :it:`italique`, avec ``:it:`texte```;
 * :ob:`oblique`, avec ``:ob:`texte``` (comme italique semble-t-il).

Valideurs CSS et HTML
---------------------
.. versionadded:: 1.5

Deux liens vers les valideurs **CSS** et **HTML** du W3C sont désormais
intégrés dans le bas de la page.

Une des deux images est codée en *base64*, pour essayer.

L'autre est :

.. image:: .valid-xhtml10.png

Résultats attendus (et :blink:`enfin` obtenus depuis peu) :

 * aucune erreur pour les feuilles **CSS** !
 * aucune erreur pour les pages **XHTML** 1.0 Transitional !
 * aucune erreur pour le flux RSS !

.. warning:: Pas toujours parfaits

   Certaines pages ne passent pas le test CSS ou XHTML, à cause de bout de
   code écrits par des extensions non officielles de Sphinx (sphinx.ext.gnuplot
   par exemple).

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
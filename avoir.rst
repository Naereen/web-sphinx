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

------------------------------------------------------------------------------

D'autres ajouts
---------------

``sphinx_git``
^^^^^^^^^^^^^^

.. git_changelog::


``sphinx_pyreverse``
^^^^^^^^^^^^^^^^^^^^

.. uml:: scripts/python/lib/python2.7/json


``sphinxcontrib.bitbucket``
^^^^^^^^^^^^^^^^^^^^^^^^^^^
 Un signalement d'erreur via bitbucket :bbissue:`3`.

 Et une modification, indiquée via son hash long
 (822ba395fceeac8e8a2a25b571503ec790e4fe35)
 :bbchangeset:`822ba395fceeac8e8a2a25b571503ec790e4fe35`.

------------------------------------------------------------------------------

.. versionadded:: 1.8

Citation random !
^^^^^^^^^^^^^^^^^

 Cette ligne Bash affiche une citation aléatoire.
 Actuellement, ``~/.quotes.txt`` est une liste très complète
 des meilleurs citations de Kaamelott.
 
 Cette liste est obtenue à partir des deux scripts suivants,
 depuis les données du site `<http://fr.wikiquote.org/wiki/Kaamelott/>`_ :
 
  * `quotes.sh <publis/bin/quotes.sh>`_ to find one quote,

  * `makequotes.sh <publis/bin/makequotes.sh>`_ to build a quotes.txt file.

.. runblock:: console

   $ LANG=en ; echo -e "Random quote:" ; shuf /home/lilian/.quotes.txt 2>/dev/null| head -n 1 | recode utf8..tex | iconv -c -s -t ascii | fold -s -w 90

------------------------------------------------------------------------------

.. versionadded:: 1.8

Tests : auto mailto: ?
^^^^^^^^^^^^^^^^^^^^^^

Une différence entre les trois liens suivants ?

* moi.supermoi@domain.extension .

* :blue:`supermoi.moi@otherdomain.ext` .

* `<mailto:supermoi@domain.ext>`_.


Test JavaScript
^^^^^^^^^^^^^^^
.. versionadded:: 1.8.6

 Donne des infos sur le navigateur utilisé par le visiteur :

.. raw:: html

   <noscript>Exemple non disponible sans JavaScript...</noscript>
   <script type="text/javascript"> 
    txt = "<p>Browser CodeName: " + navigator.appCodeName + "</p>";
    txt+= "<p>Browser Name: " + navigator.appName + "</p>";
    txt+= "<p>Browser Version: " + navigator.appVersion + "</p>";
    txt+= "<p>Cookies Enabled: " + navigator.cookieEnabled + "</p>";
    txt+= "<p>Platform: " + navigator.platform + "</p>";
    txt+= "<p>User-agent header: " + navigator.userAgent + "</p>";
    txt+= "<p>User-agent language: " + navigator.systemLanguage + "</p>";
   
    document.getElementById("example").innerHTML=txt;
   </script>


------------------------------------------------------------------------------

Autres
------

.. todo:: A venir.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
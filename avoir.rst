############################
 Liste des **trucs à voir**
############################
.. include:: .special.rst
.. include:: .javascript.rst

Tests JavaScript
----------------

Sticky Elements
^^^^^^^^^^^^^^^
.. versionadded:: 1.9

Devrait permettre (un jour) d'avoir la barre supérieure fixe.

.. raw:: html

   <h2 class="my-sticky-element">Sticky Elements</h2>
   <script type="text/javascript">
   $(document).ready(function() {
   	$('.my-sticky-element').waypoint('sticky');
   	});
   </script>
   <script type="text/javascript">
   $('#example-direction').waypoint(function(direction) {
     window.alert('Direction example triggered scrolling ' + direction);
     }, { offset: 25%} );
   $('#example-basic').waypoint(function() {
     window.alert('Basic example callback triggered.');
     });
   $('example-basic').waypoint(function() {
     window.alert('Basic example callback triggered.');
     });
   </script>


TimeAgo
^^^^^^^
Affiche des dates.

Directement avec un script :

.. raw:: html

   <script type="text/javascript">
   window.document.write("<br>Now: " + 
    jQuery.timeago(new Date()) + "</br>" );
   //=> "less than a minute ago"
   window.document.write("<br>2008-07-17" + 
    jQuery.timeago("2008-07-17") + "</br>" );
   //=> "5 years ago"
   </script>


Ou avec un ``<abbr class="timeago">`` :

.. raw:: html

   <abbr class="timeago" title="2008-07-17T09:24:17Z">July 17, 2008</abbr>

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

   <pre id="example-basic">
    <br>#example-basic a été passé.</br>
   </pre>
   <noscript>Exemple non disponible sans JavaScript...</noscript>
   <script type="text/javascript"> 
    window.document.write(
      "<p>Browser CodeName: " + navigator.appCodeName + "</p>"
    + "<p>Browser Name: " + navigator.appName + "</p>"
    + "<p>Browser Version: " + navigator.appVersion + "</p>"
    + "<p>Cookies Enabled: " + navigator.cookieEnabled + "</p>"
    + "<p>Platform: " + navigator.platform + "</p>"
    + "<p>User-agent header: " + navigator.userAgent + "</p>"
    + "<p>User-agent language: " + navigator.systemLanguage + "</p>")
   </script>


 Précise quelle page est affichée :

.. raw:: html

   <noscript>Exemple non disponible sans JavaScript...</noscript>
   <script type="text/javascript">
    window.document.write("<ul><li>Page " + window.location.pathname + ",</li>")
    window.document.write("<li>Hosted on " + window.location.host + ",</li>")
    window.document.write("<li>Protocol is " + window.location.protocol + ",</li>")
    window.document.write("<li>Port is " + window.location.port + "</li></ul>") 
   </script>


 Donne des infos sur l'écran :


.. raw:: html

   <pre id="example-direction">
    <br>#example-direction a été passé.</br>
   </pre>
   <noscript>Exemple non disponible sans JavaScript...</noscript>
   <script type="text/javascript">
    window.document.write("Taille d'écran "
     + screen.availWidth + "x"
     + screen.availHeight ) 
   </script>


------------------------------------------------------------------------------

Autres
------

.. todo:: A venir.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
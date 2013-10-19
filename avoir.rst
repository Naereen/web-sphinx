############################
 Liste des **trucs à voir**
############################
.. include:: .special.rst
.. include:: .javascript.rst

Tests MathJax
-------------
.. versionadded:: 1.9.7

En rST
^^^^^^
Normalement, on peut inclure des maths avec ``:math:`code LaTeX```
ou alors avec ``.. math:: code LaTeX sur une seule ligne``
ou enfin avec ``.. math:: \n\n    code LaTeX\n    sur plusieurs lignes``
(où ``\n`` est un sauté de ligne).

Ceci est bien détaillé dans `<math.html>`_.

.. code-block:: rst

   Quand :math:`a > 0` alors il y a deux solutions à

   .. math:: ax^2 + bx + c = 0

   et elles sont exactement 

   .. math::
      
      x = {-b \pm \sqrt{b^2 - 4ac} \over 2a}.


Ce qui donne :

Quand :math:`a > 0` alors il y a deux solutions à

.. math:: ax^2 + bx + c = 0

et elles sont exactement 

.. math::
      
   x = {-b \pm \sqrt{b^2 - 4ac} \over 2a}.


En HTML
^^^^^^^
Mais il semblerait qu'on puisse aussi, *en HTML*, utiliser ``\(code LaTeX\)`` (inliné)
ou ``$$code LaTeX$$`` (non inliné).
Une autre méthode est d'utiliser une balise ``<script>``
de type ``math/tex`` (un type inventé par et pour `MathJax <http://mathjax.org>`_).

.. code-block:: html

   Quand \(a > 0\) alors il y a deux solutions à
   $$ax^2 + bx + c = 0$$
   et elles sont exactement 
   $$x = {-b \pm \sqrt{b^2 - 4ac} \over 2a}.$$


Ce qui donne (en incluant du HTML avec ``.. raw:: html``):

.. raw:: html

   Quand \(a > 0\) alors il y a deux solutions à
   $$ax^2 + bx + c = 0$$
   et elles sont exactement 
   $$x = {-b \pm \sqrt{b^2 - 4ac} \over 2a}.$$


Ce que je voulais expérimenter
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Savoir s'il est possible d'utiliser ``\(code LaTeX inliné\)`` et
``$$code LaTeX non inliné$$`` **directement en rST** !

Et bien, testons le code *rst* suivant :

.. code-block:: rst 

   Quand \\(a > 0\\) alors il y a deux solutions à $$ax^2 + bx + c = 0$$
   et elles sont exactement 
   $$x = \\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}.$$


Ce qui donne :

Quand \\(a > 0\\) alors il y a deux solutions à $$ax^2 + bx + c = 0$$
et elles sont exactement 
$$x = \\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}.$$

.. warning::

   Avec ``$$code ... encore du code$$``, et donc aussi
   ``\(code LaTeX\)`` il *faut* échapper les
   ``\`` sinon rien ne marche.
   
   Il suffit donc d'écrire ``\\`` quand du "vrai" code \(LaTeX\)
   n'utilise que ``\``.


.. warning::

   Normalement, ``\[code LaTeX non inliné\]``
   devrait faire comme ``$$code LaTeX non inliné$$`` !


:blink:`Alors ?!` Ça marche bien :) Normalement, les trois paragraphes
(en rST avec ``:math:``, en HTML avec ``.. raw:: html`` et directement avec ``\(code LaTeX\)``)
affichent la même chose.

------------------------------------------------------------------------------

Tests JavaScript
----------------

Sticky Elements
^^^^^^^^^^^^^^^
.. versionadded:: 1.9

Aurait pu permettre d'avoir la barre latérale
mobile un moment, puis fixe quand a atteind le bas. Toujours pas résolu !

.. raw:: html

   <h2 class="my-sticky-element">Sticky Element 1</h2>


.. raw:: html

   <!-- FIXME -->
   <script type="text/javascript">
   $(document).ready(function() {
     $('.my-sticky-element').waypoint('sticky');
   });
   </script>
   <!-- FIXME -->
   <script type="text/javascript">
   $('#example-direction').waypoint(function(direction) {
     window.alert('Direction example triggered scrolling ' + direction);
     }, { offset: 25} );
   $('example-direction').waypoint(function(direction) {
     window.alert('Direction example triggered scrolling ' + direction);
     }, { offset: 25} );
   $('.#example-direction').waypoint(function(direction) {
     window.alert('Direction example triggered scrolling ' + direction);
     }, { offset: 25} );
   $('.example-direction').waypoint(function(direction) {
     window.alert('Direction example triggered scrolling ' + direction);
     }, { offset: 25} );
   
  $('#example-basic').waypoint(function() {
     window.alert('Basic example callback triggered.');
     });
   $('example-basic').waypoint(function() {
     window.alert('Basic example callback triggered.');
     });
   $('.#example-basic').waypoint(function() {
     window.alert('Basic example callback triggered.');
     });
   $('.example-basic').waypoint(function() {
     window.alert('Basic example callback triggered.');
     });
   </script>


.. raw:: html

   <h2 class="my-sticky-element">Sticky Element 2</h2>


TimeAgo
^^^^^^^
Affiche des dates,
directement avec un script :

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

D'autres rôles (rajoutés grâce à `.special.rst <_sources/.special.txt>`_ et au travail
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

 * aucune erreur sérieuse pour les feuilles **CSS** !
 * aucune erreur grave pour les pages **XHTML** 1.0 Transitional !
 * aucune erreur pour le flux RSS !

.. warning:: Mes pages ne sont plus parfaites ...

   Aucunes pages ne passent désormais le test XHTML, à cause de bout de
   code écrits par des extensions non officielles de Sphinx (sphinx.ext.gnuplot
   par exemple).
   
   Aucunes pages ne passent désormais le test CSS, à cause de la feuille
   `buttons.css <_static/buttons.css>`_.
   
   :red:`Mais j'y travaille ! J'essaie de nétoyer au mieux les modèles de pages, et le code de chaque pages. Dans ce but, tout retour est le bienvenu ! Le traqueur de bug est là pour ça :`
   `<http://besson.qc.to/git/web-sphinx/issues/new/>`_.

------------------------------------------------------------------------------

D'autres ajouts
---------------
``sphinx_git``
^^^^^^^^^^^^^^
Une liste des dernières modifications. Une liste plus complète
peut-être consultée avec le flux `rss <https://bitbucket.org/lbesson/web-sphinx/rss>`_.

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
 
  * `quotes.sh <publis/bin/quotes.sh>`_ pour télécharger et analyser les citations,

  * `makequotes.sh <publis/bin/makequotes.sh>`_ pour construire un fichier ``quotes.txt``.


.. runblock:: console

   $ LANG=en ; echo -e "Random quote:" ; shuf /home/lilian/.quotes.txt 2>/dev/null| head -n 1 | recode utf8..tex | iconv -c -s -t ascii | fold -s -w 90


------------------------------------------------------------------------------

Suite des tests JavaScripts (sticky elements)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. raw:: html

   <pre id="example-basic">
    <br>id example-basic a été passé.</br>
   </pre>


.. raw:: html

   <pre class="example-basic">
    <br>class example-basic a été passé.</br>
   </pre>


Tests : auto mailto: ?
^^^^^^^^^^^^^^^^^^^^^^
.. versionadded:: 1.8

Une différence entre les trois liens suivants ?

* moi.supermoi@domain.extension .

* :blue:`supermoi.moi@otherdomain.ext` .

* `<mailto:supermoi@domain.ext>`_.


Test JavaScript
^^^^^^^^^^^^^^^
.. versionadded:: 1.8.6

Donne des infos sur le navigateur utilisé par le visiteur (intégré dans le *footer*) :

.. raw:: html

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


Précise quelle page est affichée (désormais intégré dans la barre horizontale) :

.. raw:: html

   <noscript>Exemple non disponible sans JavaScript...</noscript>
   <script type="text/javascript">
    window.document.write("<ul><li>Page " + window.location.pathname + ",</li>")
    window.document.write("<li>Hosted on " + window.location.host + ",</li>")
    window.document.write("<li>Protocol is " + window.location.protocol + ",</li>")
    window.document.write("<li>Port is " + window.location.port + "</li></ul>") 
   </script>


Donne des infos sur l'écran (désormais intégré dans le *footer*) :

.. raw:: html

   <pre id="example-direction">
    <br>id example-direction a été passé.</br>
   </pre>
   <pre class="example-direction">
    <br>class example-direction a été passé.</br>
   </pre>
   <noscript>Exemple non disponible sans JavaScript...</noscript>
   <script type="text/javascript">
    window.document.write("Taille d'écran "
     + screen.availWidth + "x"
     + screen.availHeight ) 
   </script>


.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
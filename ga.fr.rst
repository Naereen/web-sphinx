.. meta::
   :description lang=fr: Utiliser Google Analytics dans un projet Sphinx
   :description lang=en: How to use Google Analytics in a Sphinx project

#################################################
 Utiliser Google Analytics dans un projet Sphinx
#################################################

.. note:: Cette page parle de Google Analytics

   Pour plus de détails, il peut être utile d'aller s'informer ailleurs :
    * par exemple sur `fr.wikipedia.org/wiki/Google_Analytics <https://fr.wikipedia.org/wiki/Google_Analytics>`_,
    * ou sur `www.google.com/analytics <http://www.google.com/analytics/>`_.


.. note:: Cette page parle aussi de Sphinx

   Et donc, pour plus de détails, il peut aussi être utile
   d'avoir en tête le fonctionnement de Sphinx, notamment sur le *templating* :
   `sphinx-doc.org/templating.html <http://sphinx-doc.org/templating.html>`_.


Google Analytics, par défaut
----------------------------
Le code de base :

.. code-block:: javascript

   (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
   (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
   m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
   })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
   ga('create', 'UA-38514290-15', 'ga-beacon.appspot.com');
   ga('send', 'pageview');


Donc, la première solution est bien sûr de modifier la page de
*template* principale (normalement, ``_templates/layout.html`` ou ``.templates/layout.html``)
et d'y ajouter ce code entre deux balises ``<script type="text/javascript">`` et ``</script>``.

Si possible, il faut le mettre *à la fin de la page*, pour accélérer le chargement.


Une version un peu plus consise
-------------------------------
*(Et aussi plus facile à maintenir !)*
Il suffit de créer un script ``ga.js`` contenant le morceau de code précédant,
et l'ajouter sur votre site, n'importe où.

Par exemple : `ga.js <http://perso.crans.org/besson/_static/ga.js>`_.

Il faut alors l'inclure dans chaque page avec ce code ``HTML``
à la fin du fichier (dans ``<bottom>`` ou à la fin de ``<body>``) :

.. code-block:: html

   <script type="text/javascript" async src="http://perso.crans.org/besson/_static/ga.js"></script>


En plus, la balise ``async`` accélèrera le chargement de la page
en *déférant* l'exécution du script. Super !

Comment et où l'inclure
-----------------------
Pour un exemple, vous pouvez consulter le fichier *template* de ces pages,
`layout.html <https://bitbucket.org/lbesson/web-sphinx/src/master/.templates/layout.html#cl-290>`_.

------------------------------------------------------------------------------

D'autres solutions ?
--------------------
Sphinx propose une petite extension pour facilement ajouter le suivi Google Analytics, voir `sur cette liste <http://sphinx-doc.org/latest/develop.html#extensions>`_ (`dans ce dossier sur le dépôt de sphinx-contrib <https://bitbucket.org/birkenfeld/sphinx-contrib/src/default/googleanalytics/>`_).
C'est simple et rapide à utiliser, ça marche bien, et par exemple je m'en sers notamment sur des petits projets Sphinx : `<infoMP/TPs/solution>`_, `<infoMP/DSs/solution>`_ et `<infoMP/TDs/solution>`_.


.. seealso::

   GA-Beacon (`<beacon.html>`_)
      Comment utiliser une image d'*une seule pixel* pour analyser les visites
      d'une page ou d'un courriel via Google Analytics.


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

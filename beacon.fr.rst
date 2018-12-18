.. meta::
   :description lang=fr: Google Analytics avec une petite image
   :description lang=en: Google Analytics with a beacon image
   :keywords: Google, Google Analytics, beacon, image, picture, without javascript, Google Analytics without javascript, Google Analytics with a picture, Google Analytics with an image, beacon analytics, beacon Google Analytics, Google Analytics sans javascript, Google Analytics avec une image, Google Analytics avec une photo

#################################################
 Utiliser Google Analytics avec une petite image
#################################################

.. note:: Cette page parle de Google Analytics

   Pour plus de détails, il peut être utile d'aller s'informer ailleurs :
    * par exemple sur `fr.wikipedia.org/wiki/Google_Analytics <https://fr.wikipedia.org/wiki/Google_Analytics>`_,
    * ou sur `www.google.com/analytics <http://www.google.com/analytics/>`_.


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


Une version un peu plus consise
-------------------------------
Et aussi plus facile à maintenir !
Il suffit de créer un script ``ga.js`` contenant le morceau de code précédant,
et l'ajouter sur votre site, n'importe où.

Par exemple : `ga.js <http://perso.crans.org/besson/_static/ga.js>`_.

Il faut alors l'inclure dans chaque page avec ce code ``HTML``
à la fin du fichier (dans ``<bottom>`` ou à la fin de ``<body>``) :

.. code-block:: html

   <script type="text/javascript" async src="http://perso.crans.org/besson/_static/ga.js"></script>


En plus, la balise ``async`` accélèrera le chargement de la page
en déférant l'exécution du script. Super !

------------------------------------------------------------------------------

Une jolie astuce
----------------
Ce `Post de blog`_ explique comment utiliser **une** image,
ou même un simple pixel pour "simuler" une communication avec Google Analytics.

En suivant son tutoriel, on arrive à pouvoir embarquer simplement une image,
dans un courriel ou une page web (comme par exemple une page d'accueil d'un projet
sur bitbucket ou github).

Cette image est en fait récupérée via ``ga-beacon.appspot.com/UA-XXXXXX-YY``
et va déclencher une visite, visible immédiatement dans le panneau Google Analytics associé
(ici, ``UA-XXXXXX-YY`` est la clé associée au profil GA créé pour l'exemple).


Intégrer cette image peut être fait en ``HTML`` avec le code suivant :

.. code-block:: html

   <img style="visibility:hidden;display:none;" src="https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html?pixel" />


Ou bien avec le code ``rST`` suivant,
pour une page générée avec *Sphinx* comme celle que vous êtes en train de lire :

.. code-block:: rst

   .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html?pixel


.. warning:: Astuce pour Sphinx :

   Embarquer une image avec une adresse URL *non-locale* comme ça
   va déclencher un message d'avertissement lors de la génération des pages web,
   par Sphinx, mais ça ne doit pas être une source d'inquiétude !

------------------------------------------------------------------------------

Enfin, il est possible d'utiliser un petit *badge* plutôt qu'un pixel invisible,
en enlevant le ``?pixel`` à la fin de l'adresse URL.

  Par exemple :

  .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html/avec-un-badge
     :scale: 300%
     :align: center
     :alt: Un petit badge « analytics | GA ».
     :target: http://perso.crans.org/besson/beacon.html


  est obtenu avec le code ``rST`` suivant :

  .. code-block:: rst

     .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html/avec-un-badge


  .. note:: Une adresse URL quelconque ?

     L'exemple donné ici montre une adresse URL virtuelle, parce que l'image précédente
     a été téléchargée depuis ``appspot`` avec l'adresse du fichier *"virtuel"* ``beacon.fr.html/avec-un-badge``.
     Il est en fait possible, avec cette méthode, d'utiliser n'importe quelle adresse URL,
     la seule limite est votre imagination !
     (hum, ça ressemblait drôlement à une pub pour des Legos… ou peut-être juste pour moi !)


En pratique : comment rédiger un courriel en ``HTML`` ?
-------------------------------------------------------
Outlook, Thunderbird ou GMail permettent facilement de composer
des courriels en ``HTML``, et donc il est facile d'ajouter une ligne à la fin du courriel
pour y ajouter un traqueur.

Il est même possible d'adopter une convention de nommage
des adresses du service *beacon* pour surveiller « chaque courriel » indépendemment :

.. code-block:: html

   <img style="visibility:hidden;display:none;" src="https://ga-beacon.appspot.com/UA-38514290-15/mail/11-03-2014/7?pixel" />


L'exemple précédent montre la convention de nommage que j'utilise pour ma correspondance électronique :
chaque jour, on numérote les courriers sous la forme **JJ-MM-YYYY/NUM**, où **NUM** est le numéro du courrier envoyé ce jour là.

Par exemple, le premier mail écrit le 11 mars 2014 correspond au code **11-03-2014/1**
et donc se terminera par le morceau de code ``HTML`` suivant :

.. code-block:: html

   Cordialement;<br>
   -- <br>
   Lilian<br>
   <img style="visibility:hidden;display:none;" src="https://ga-beacon.appspot.com/UA-38514290-15/mail/11-03-2014/1?pixel" />


.. warning:: Bien sûr, si vous voulez utiliser cette technique pour vos propres analyses, il **ne faut pas oublier de changer l'identifiant Google Analytics** ! Utiliser `UA-38514290-15` est inutile, vous ne seriez pas capable de voir les résultats… (mais moi oui, et c'est inutile).

.. note:: Quelqu'un a vraiment fait ça en fait…

   En octobre, novembre and décembre 2017, j'ai vu du trafic bizarre sur cette page Google Analytics, émanant d'une entitée appelée `EDM`, qui apparemment a envoyé des emails utilisant cette clé et ces beacon d'analyse d'audience, quelques fois.
   J'espère qu'ils ont réalisé que c'était inutile, mais en attendant, j'ai reçu presque 30K de requêtes inutiles…

   .. figure:: _images/stats-google-analytics/weird_visits_on_my_beacon_analytics_id.png
      :width: 100%
      :align: center
      :alt: Une capture d'écran de la page d'accueil de Google Analytics montrant les visites d'une entité "EDM" inconnue
      :target: _images/stats-google-analytics/

      Une capture d'écran de la page d'accueil de Google Analytics montrant les visites d'une entité "EDM" inconnue.


Un seul pixel caché
-------------------
À titre d'exemple, une autre image sous forme d'*un seul pixel* est inséré,
juste ci-dessus. Il est possible de la visualiser avec n'importe quel outil de débuggage (*FireBug* par exemple).

.. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html/une-seule-pixel?pixel

(le pixel invisible est au-dessus)

Sources
-------
Deux pages (du même auteur) :

 #. `post de blog <http://www.sitepoint.com/using-beacon-image-github-website-email-analytics/>`_ détaillant l'utilisation pour faire des analyses dans un courriel,
 #. `page github <https://github.com/igrigorik/ga-beacon>`_ du projet

------------------------------------------------------------------------------

Un bonus ?
----------
Il est possible de rendre les choses plus rapides et plus discrètes du côté utilisateur en mettant en place
une règle `Apache <http://httpd.apache.org/>`_ (ou `NGinx <nginx.org>`_ ou autre) pour demander au serveur d'aller chercher l'image, via un proxy invisible.

Ensuite, il faut utiliser `une url de ce genre <beacon/une%20page%20bidon/hé%20oui%20n'importe%20quoi%20marche/par%20Næreen>`_
"``beacon/une page bidon``" qui va demander au serveur (où la page courante est affichée) d'aller chercher
l'image "``https://ga-beacon.appspot.com/UA-38514290-1/une page bidon``".

En pratique, la règle suivante permet de le faire facilement :

.. code-block:: bash

   RewriteEngine On    # Turn on the rewriting engine
   RewriteRule ^([^0-9].*)$ http://ga-beacon.appspot.com/UA-38514290-1/$1 [L,P]    # Sans clé : "-1" par défaut


On peut affiner le procédé, en ajoutant d'abord la redirection `<beacon/>`_ vers `<beacon.html>`_
(qui ensuite pointe vers `<beacon.fr.html>`_ ou `<beacon.en.html>`_) :

.. code-block:: bash

   RewriteRule ^()$ /besson/beacon.html [L]    # Pointer vers la page explicative.


Et si on veux permettre l'utilisation du proxy pour d'autres sous-clés Google Analytics
(chaque clé correspond à un compte, et chaque sous-clés à des données d'analyse différentes, par exemple une sous-clé par site web),
on peut ajouter une règle pour rediriger une url de la forme "``beacon/14/ma page bidon comptée comme étant sur lbesson.bitbucket.io !``"
vers l'image "``https://ga-beacon.appspot.com/UA-38514290-14/ma page bidon comptée comme étant sur lbesson.bitbucket.io !``",
qui sera donc affichée comme étant une page avec l'url "``ma page bidon comptée comme étant sur lbesson.bitbucket.io !``"
sur le site correspond à la clé "``UA-38514290-14``", soit `<http://lbesson.bitbucket.io/>`_ !

.. code-block:: bash

   RewriteRule ^([0-9]*)/(.*)$ http://ga-beacon.appspot.com/UA-38514290-$1/$2 [L,P]    # Avec une clé précisée


.. note:: Limitations ?

   Cette petite astuce permet d'être plus transparent côté utilisateurs, ceux-ci ne pouvant savoir si l'adresse `beacon` utilise en *back-end* un service de Google ou non.
   Par contre, comme c'est le serveur web qui s'occupe de récupérer l'imagine *beacon*, Google Analytics ne permettra pas de visualiser l'origine géographique de la requête.

   Tous les visiteurs traqués avec cette technique génèreront en effet des visites émises par me serveur (donc, même localisation, même *User-Agent* etc).


.. (c) Lilian Besson, 2011-2018, https://bitbucket.org/lbesson/web-sphinx/

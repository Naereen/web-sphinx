.. meta::
   :description lang=fr: Google Analytics avec une petite image
   :description lang=en: Google Analytics with a beacon image

#################################################
 Utiliser Google Analytics avec une petite image
#################################################
.. include:: .special.rst
.. warning:: Encore en rédaction !

.. note:: Cette page parle de Google Analytics

   Pour plus de détails, il peut être utile d'aller s'informer ailleurs,
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

   <script async type="text/javascript" src="http://perso.crans.org/besson/_static/ga.js?1"></script>


En plus, la balise ``async`` accélèrera le chargement de la page 
en déférant l'exécution du script. Super !

------------------------------------------------------------------------------

Une jolie astuce
----------------
Ce `Post de blog`_ explique comment utiliser **une** image, 
ou même une simple pixel pour simuler une communication avec Google Analytics.

En suivant son tutoriel, on arrive à pouvoir embarquer simplement une image, 
dans un courriel ou une page web (comme par exemple une page d'accueil d'un projet
sur bitbucket ou github).

Cette image est en fait récupérée via ``ga-beacon.appspot.com/UA-XXXXXX-YY`` 
et va déclencher une visite, visible immédiatement dans le panneau Google Analytics associé
(ici, ``UA-XXXXXX-YY`` est la clé associée au profil GA créé pour l'exemple).


Intégrer cette image peut être fait en ``HTML`` avec le code suivant :

.. code-block:: html

   <img src="https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html?pixel"></img>


Ou bien avec le code ``rST`` suivant, 
pour une page générée avec *Sphinx* comme celle que vous êtes en train de lire :

.. code-block:: rst

   .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html?pixel


.. tip:: Astuce pour Sphinx :

   Embarquer une image avec une adresse URL *non-locale* comme ça
   va déclencher un message d'avertissement lors de la génération des pages web,
   par Sphinx, mais ça ne doit pas être une source d'inquiétude !

------------------------------------------------------------------------------

Enfin, il est possible d'utiliser un petit *badge* plutôt qu'une pixel invisible,
en enlevant le ``?pixel`` à la fin de l'adresse URL.

  Par exemple : 
 
  .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html/avec-un-badge
     :scale: 250%
     :align: center
     :alt: Un petit badge « analytics | GA ».
     :target: http://besson.qc.to/beacon.html
  
 
  est obtenu avec le code ``rST`` suivant :
 
  .. code-block:: rst
 
     .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html/avec-un-badge


  .. note:: Une adresse URL quelconque ?

     L'exemple donné ici montre une adresse URL virtuelle, parce que l'image précédente
     a été téléchargée depuis ``appspot`` avec l'adresse du fichier *"virtuel"* ``beacon.fr.html/avec-un-badge``.
     Il est en fait possible, avec cette méthode, d'utiliser n'importe quelle adresse URL,
     la seule limite est votre imagination !
     (hum, ça ressemblait drôlement à une pub pour des Legos... ou peut-être juste pour moi !)


En pratique : comment rédiger un courriel en ``HTML`` ?
-------------------------------------------------------
Outlook, Thunderbird ou GMail permettent facilement de composer
des courriels en ``HTML``, et donc il est facile d'ajouter une ligne à la fin du courriel
pour y ajouter un traqueur.

Il est même possible d'adopter une convention de nommage
des adresses du service *beacon* pour surveiller « chaque courriel » indépendemment :

.. code-block:: html

   <img src="https://ga-beacon.appspot.com/UA-38514290-15/mail/27-02-2014/3?pixel"></img>


L'exemple précédent montre la convention de nommage que j'utilises pour ma correspondance électronique : 
chaque jour, on numérote les courriers sous la forme **JJ-MM-YYYY/NUM**, où **NUM** est le numéro du courrier envoyé ce jour là.

Par exemple, le premier mail écrit le 03 mars 2014 se terminera par :

.. code-block:: html

   Cordialement;<br>
   -- <br>
   Lilian<br>
   <img src="https://ga-beacon.appspot.com/UA-38514290-15/mail/03-03-2014/1?pixel"></img>


Une seule pixel
---------------
À titre d'exemple, une autre image sous forme d'une seule pixel est inséré,
juste ci-dessus. Il est possible de la visualiser avec n'importe quel outil de débuggage.

.. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.fr.html/une-seule-pixel?pixel

Sources
-------
Deux pages du même auteur :

 #. `Post de blog <http://www.sitepoint.com/using-beacon-image-github-website-email-analytics/>`_ détaillant l'utilisation pour faire des analyses dans un courriel,
 #. `Page github <https://github.com/igrigorik/ga-beacon>`_ du projet.


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/lbesson/web-sphinx/
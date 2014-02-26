.. meta::
   :description lang=en: Google Analytics with a beacon image
   :description lang=fr: Google Analytics avec une petite image

#################################################
 How to use Google Analytics with a beacon image
#################################################
.. include:: .special.rst
.. warning:: Still in progress!

.. note:: This short page is focusing on Google Analytics

   For more informations, it might be useful to consult first one of these pages:
    * `en.wikipedia.org/wiki/Google_Analytics <https://en.wikipedia.org/wiki/Google_Analytics>`_,
    * `www.google.com/analytics <http://www.google.com/analytics/>`_.

«Vanilla» Google Analytics code
-------------------------------
.. warning:: I'm not done translating this page yet !

The default code to add in every page is the following piece of JavaScript:

.. code-block:: javascript

   (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
   (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
   m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
   })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
   ga('create', 'UA-38514290-15', 'ga-beacon.appspot.com');
   ga('send', 'pageview');


A smaller piece of code
-----------------------
And also easier to maintain !
You just have to create a small ``ga.js`` script contenaning 
the previous piece of code, and add it somewhere on your website.

Then you have to load it in every webpage with one-line of ``HTML`` code
at the end of the file (in the ``<bottom>`` paragraph or at the head of ``<body>``) :

.. code-block:: html

   <script async type="text/javascript" src="http://perso.crans.org/besson/_static/ga.js?1"></script>


Moreover, the ``async`` tag will improve the speed of the page, by
loading asynchronously the ``ga.js`` script. Awesome!

------------------------------------------------------------------------------

A pretty nice idea
------------------
That `blog post`_ explain how to use **one** image, 
or even a single pixel to emulate a communication with Google Analytics.

En suivant son tutoriel, on arrive à pouvoir embarquer simplement une image, 
dans un courriel ou une page web (comme par exemple une page d'accueil d'un projet
sur bitbucket ou github).

Cette image est en fait récupérée via ``ga-beacon.appspot.com/UA-XXXXXX-YY`` 
et va déclencher une visite, visible immédiatement dans le panneau Google Analytics associé
(ici, ``UA-XXXXXX-YY`` est la clé associée au profil GA créé pour l'exemple).


Intégrer cette image peut être fait en ``HTML`` avec le code suivant :

.. code-block:: html

   <img src="https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html?pixel"></img>


Ou bien avec le code ``rST`` suivant :

.. code-block:: rst

   .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html?pixel


------------------------------------------------------------------------------

Enfin, il est possible d'utiliser un petit *badge* plutôt qu'une pixel invisible,
en enlevant le ``?pixel`` à la fin de l'adresse URL.

  Par exemple : 
 
  .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html
    :scale: 250%
    :align: center
    :alt: A small « analytics | GA » badge.
    :target: http://besson.qc.to/beacon.html
  
 
  est obtenu avec le code ``rST`` suivant :
 
  .. code-block:: rst
 
     .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html


En pratique
-----------
Outlook, Thunderbird ou GMail permettent facilement de composer
des courriels en ``HTML``, et donc il est facile d'ajouter une ligne à la fin du courriel
pour y ajouter un traqueur.

Il est même possible d'adopter une convention de nommage
des adresses du service *beacon* pour surveiller « chaque courriel » :

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

.. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html/une-seule-pixel?pixel

Sources
-------
Deux pages du même auteur :

 #. `blog post <http://www.sitepoint.com/using-beacon-image-github-website-email-analytics/>`_ détaillant l'utilisation pour faire des analyses dans un courriel,
 #. `github page <https://github.com/igrigorik/ga-beacon>`_ du projet.


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/lbesson/web-sphinx/
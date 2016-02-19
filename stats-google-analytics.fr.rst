.. meta::
   :description lang=fr: Résumé de trois ans d'utilisation de Google Analytics
   :description lang=en: How to use Google Analytics in a Sphinx project

#######################################################
 Résumé de trois ans d'utilisation de Google Analytics
#######################################################

.. note:: Cette page parle de *Google Analytics*

   Pour plus de détails, il peut être utile d'aller s'informer ailleurs :

    * `<ga.fr.html>`_ sur ce site,
    * et par exemple sur `fr.wikipedia.org/wiki/Google_Analytics <https://fr.wikipedia.org/wiki/Google_Analytics>`_,
    * ou sur `www.google.com/analytics <https://www.google.com/analytics/>`_.


Rapide historique
-----------------
 - `Ce site web <index.html>`_ ``http://perso.crans.org/besson`` est hébergé par les `pages personnelles du CRANS <http://www.crans.org/PagesPerso>`_.
 - Il est `en ligne <http://isup.me/perso.crans.org/besson/>`_ sous `cette forme <https://developers.google.com/speed/pagespeed/insights/?url=http%3A%2F%2Fperso.crans.org%2Fbesson>`_ depuis mars 2013 (le code est sur `ce dépôt git <https://bitbucket.org/lbesson/web-sphinx/>`_).
 - Il utilise `Sphinx <http://www.sphinx-doc.org/>`_ pour générer un site web statique (ie. des fichiers HTML et CSS, et un peu de JavaScript), à partir de fichiers textes écrits en `rST <demo.html>`_.
 - Depuis le début, malgré les questions éthiques que ça soulève, j'avais choisi d'utiliser `Google Analytics <https://www.google.com/analytics/>`_.


.. raw:: html

   Cela fait donc trois ans (<abbr class="timeago" title="2013-03-22T03:00:43Z">22 Mars 2013</abbr>, cf. <a href="https://bitbucket.org/lbesson/web-sphinx/commits/b3a0205a3f2fe288f91e9bceb9f1ac6f6335bce3">le premier commit</a>) que ce site accueille des visiteurs et conserve des statistiques sur ces visites.

------------------------------------------------------------------------------

*Plan:*

- Le reste de ce court article donne un aperçu de ces visites, par quelques chiffres clés.
- Cet article est ici dans le but d'*être informatif* et *par soucis de transparence*, **pas** par frime ou pour divulguer des informations confidentielles (Google Analytics est anonyme, en fait (d'une certaine façon...)).

Principaux chiffres
-------------------
Ces chiffres sont simplement cumulés depuis 3 ans.

- **27000 visites**, soit une moyenne d'environ *25 visites par jour* (mais ça compte les visites de robots...),
- **51000 pages vues**, tout compris (avec `cette page <sublime-text.fr.html>`_ attirant 10% des visites, et `celle là <beacon.en.html>`_ 5%),
- un rapport de *83% de nouveaux utilisateurs* vs utilisateurs connus.


**Origine géographique :**

- **149 pays différents** (presque tous !) en trois ans, et en 6 semaines, j'en ai en moyenne une centaine (e.g., 110 entre le 01-01-16 à 19-01-16). La plupart des pays n'ont été vus que grâce à moins de dix visites, et 33 une seule visite ! Seulement 22 pays ont émis plus de 100 visites, et 5 pays se partagent environ 75% du trafic (par ordre, France 45%, USA 20%, Russie 7%, Inde 4%, UK 3%),
- **5 continents différents** (je les ai *tous* !), avec Europe 60%, Amérique 23%, Asie 10% et Océanie à 1 %,
- **21 sous-continents différents** (je les ai *tous* !), même répartition en gros (Europe Ouest 45%, Europe Nord 15%)
- **2846 villes différentes** (... y'en a beaucoup !). Les dix plus importantes étant "Inconnu" (*25%*), Paris (7%), Cachan (6%), Samara (en Russie, il doit y avoir un bot ou un crawler web là-bas, 3%), Londres (3%), Hyderabad (2%), Toulouse (1%), Bangalore (0.9%), New York (0.8%) et Rennes (0.8%). On voit nettement l'influence de `ma présence <cv.fr.pdf>`_ sur ces chiffres (ayant vécu à Paris, Cachan, Londres, et Hyderabad entre 2013 et 2016), et des grands pôles d'Internet (New York) et des maths et info en France (Rennes et Toulouse) et ailleurs (Bangalore).


**Langues :** français à 40%, anglais à 25%, *"inconnu"* ou non renseigné à 25%, et russe, espagnol et autres à 10%.


D'autres statistiques
---------------------
**Navigateurs** (répartition qui suit l'évolution de la part de marché globale des navigateurs) :

- Google Chrome a 52%, mais tout le monde sait que `Firefox <firefox-extensions.fr.html>`_ est le meilleur,
- Mozilla Firefox a 28%,
- Apple Safari a 10%,
- le reste est Internet Explorer (3%), Opera (2%), et d'autres mineurs.


**Répartition du support :** ordinateurs (90%) vs mobiles (8%) vs tablettes (1%).


**Durée moyenne des visites :** 2 minutes 02 secondes.


**Origine des visites :** Google (45%), *"accès direct"* (42%, qui compte le moteur de recherche anonyme `DuckDuckGo <https://duckduckgo.com/>`_ notamment), Facebook (5%), `<http://lbesson.bitbucket.org>`_ (3%), `<http://crans.org>`_ (2%) et `<http://www.mahindraecolecentrale.edu.in/>`_ (1%).

------------------------------------------------------------------------------

Plus d'images
-------------
Voir `ce dossier et cette jolie galerie de captures d'écran <_images/stats-google-analytics/>`_
pour plus d'exemples et de chiffres, illustrés en image.

D'autres sites ?
----------------
`Ce site <index.html>`_ est celui qui attire le plus de visiteurs sur des pages écrites par `moi <cv.fr.pdf>`_, mais j'en ai d'autres :

- Certains projets hébergés sur ce domaine (``perso.crans.org/besson``) ont une clé Google Analytics différentes, donc ne sont pas comptées dans la même *"vue"* (ie. base de données), mais ils sont tous quasi-négligeables en terme de nombre de visites,
- Mon Bitbucket `<https://bitbucket.org/lbesson>`_ et `<http://lbesson.bitbucket.org/>`_ ont reçues environ 5000 visites en trois ans (et `ce jeu en a la moité <http://lbesson.bitbucket.org/2048-agreg/>`_,
- Mes `ressources pour l'informatique pour tous en prépa MP <infoMP/>`_ environ 1200 pages vues pour 400 visites et 290 utilisateurs depuis août 2015 (elles ont donc des visiteurs récurrents, c'est bon signe, mes élèves s'en servent !),
- Mon module Python `ANSIColors <https://pypi.python.org/pypi/ANSIColors-balises>`_, `son code <https://bitbucket.org/lbesson/ansi-colors/>`_ et `sa doc <https://pythonhosted.org/ANSIColors-balises/>`_ ont eu environ 1100 visites depuis leur mise en ligne (février 2013),
- Mon GitHub `<https://github.com/naereen>`_ et `<http://naereen.github.io/>`_ ont eu environ 400 visites (depuis septembre 2015).

.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

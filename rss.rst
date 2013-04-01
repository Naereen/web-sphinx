##########
 Flux RSS
##########
.. include:: .special.rst
.. include:: .javascript.rst
Je tente ici d'inclure un flux **RSS** dans une page générée par Sphinx.

S'abonner au flux
-----------------
Il y a deux flux :

 * Celui produit par Bitbucket d'après mes commits au dépôt *lbesson/web-sphinx/*.
   On peut s'y abonner facilement, il suffit de `cliquer sur ce texte 
   <http://bitbucket.org/lbesson/web-sphinx/rss>`_;
 * ou celui que j'écrit moi-même. On peut s'y abonner en cliquant sur cette image :

.. image:: .valid-rss.png
   :scale: 100%
   :align: right
   :alt: Flux RSS (perso.crans.org/besson/rss.xml)
   :target: http://perso.crans.org/besson/rss.xml

Le flux 1 (Bitbucket)
---------------------
.. raw:: html

   <script language="javascript" src="http://www.generateit.net/rss-javascript/feed2js.php?src=http%3A%2F%2Fbitbucket.org%2Flbesson%2Fweb-sphinx%2Frss&amp;chan=y&amp;num=12&amp;date=y&amp;tz=+1&amp;targ=y&amp;utf=y&amp;pc=y&amp;html=a" type="text/javascript"></script>
   <noscript>
   <a href="http://www.generateit.net/rss-javascript/feed2js.php?src=http%3A%2F%2Fbitbucket.org%2Flbesson%2Fweb-sphinx%2Frss&amp;chan=y&amp;num=12&amp;date=y&amp;tz=+1&amp;targ=y&amp;utf=y&amp;pc=y&amp;html=y">Voir ce flux RSS (JavaScript n'est pas disponible)</a>
   </noscript>

Le flux 2 (écrit à la main)
---------------------------
.. raw:: html

   <script language="javascript" src="http://www.generateit.net/rss-javascript/feed2js.php?src=http%3A%2F%2Fperso.crans.org%2Fbesson%2Frss.xml&amp;chan=y&amp;num=12&amp;date=y&amp;tz=+1&amp;targ=y&amp;utf=y&amp;pc=y&amp;html=a" type="text/javascript"></script>
   <noscript>
   <a href="http://www.generateit.net/rss-javascript/feed2js.php?src=http%3A%2F%2Fperso.crans.org%2Fbesson%2Frss.xml&amp;chan=y&amp;num=12&amp;date=y&amp;tz=+1&amp;targ=y&amp;utf=y&amp;pc=y&amp;html=y">Voir ce flux RSS (JavaScript n'est pas disponible)</a>
   </noscript>

À propos
--------
 Pour le moment, j'utilise un *web-service* de **generateit.net**.
 Je cherche une solution pour le faire indépendemment d'un autre site.

 Je cherche aussi une solution n'utilisant pas le PHP.
 Parce que c'est moche le PHP...

Flux valide ?
-------------
.. image:: .valid-rss.png
   :scale: 100%
   :alt: "[Valid RSS]"
   :target: http://feed1.w3.org/check.cgi?url=http%3A//perso.crans.org/besson/rss.xml
   :align: right

Normalement, le flux écrit à la main est valide, comme le montre le lien suivant :

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
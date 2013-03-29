##########
 Flux RSS
##########
.. include:: .special.rst
.. include:: .javascript.rst

Je tente ici d'inclure un flux **RSS** dans une page générée par
Sphinx.


S'abonner au flux
-----------------
.. image:: .rss.png
   :scale: 140%
   :align: right
   :alt: Flux RSS (bitbucket.org/lbesson/web-sphinx/rss)
   :target: http://bitbucket.org/lbesson/web-sphinx/rss

Il y a deux solutions :

 * `en cliquant sur ce texte <http://bitbucket.org/lbesson/web-sphinx/rss>`_;
 * ou sur cette image :

Le flux
-------

.. raw:: html

   <script language="javascript" src="http://www.generateit.net/rss-javascript/feed2js.php?src=http%3A%2F%2Fbitbucket.org%2Flbesson%2Fweb-sphinx%2Frss&amp;chan=y&amp;num=12&amp;date=y&amp;tz=+1&amp;targ=y&amp;utf=y&amp;pc=y&amp;html=a" type="text/javascript"></script>

   <noscript>
   <a href="http://www.generateit.net/rss-javascript/feed2js.php?src=http%3A%2F%2Fbitbucket.org%2Flbesson%2Fweb-sphinx%2Frss&amp;chan=y&amp;num=12&amp;date=y&amp;tz=+1&amp;targ=y&amp;utf=y&amp;pc=y&amp;html=y">Voir ce flux RSS (javascript n'est pas disponible)</a>
   </noscript>


À propos
--------
 Pour le moment, j'utilise un *web-service* de **generateit.net**.
 Je cherche une solution pour le faire indépendemment d'un autre site.

 Je cherche aussi une solution n'utilisant pas le PHP.
 Parce que c'est moche le PHP...

.. include:: .bottom.fr.rst
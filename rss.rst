###############
 Deux flux RSS
###############
.. include:: .special.rst
Cette page était une expérience pour inclure un flux **RSS** dans une page générée par Sphinx.

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


.. warning:: generateit.net est fermé. Pas encore trouvé de service de remplacement


Le flux 1 (Bitbucket)
---------------------
Ce flux ne s'affiche plus, mais en revanche, l'extension bitbucket permet d'afficher
les dernières modifications du dépôt git (presque pareil que le flux) :

.. git_changelog::



Le flux 2 (écrit à la main)
---------------------------
Sans *generateit.net*, marche plus :(

Flux valide ?
-------------
.. image:: .valid-rss.png
   :scale: 100%
   :alt: Valid RSS
   :target: http://feed1.w3.org/check.cgi?url=http%3A//perso.crans.org/besson/rss.xml
   :align: right

Normalement, le flux écrit à la main est valide, comme le montre le lien suivant :

.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
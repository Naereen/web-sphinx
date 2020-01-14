########################
 Affichage d'un dossier
########################
Contenu du dossier
------------------

.. MIDDLE MIDDLE MIDDLE MIDDLE


------------------------------------------------------------------------------

À propos
--------

.. container:: smallpar

    Cet affichage amélioré est produit avec **Apache v2**, avec quelques commandes dans le
    fichier ``.htaccess`` à la racine de ce site.
    Les icônes et le style vient du superbe projet `apaxy <http://adamwhitcroft.com/apaxy/>`_.

    Les fichiers d'en-tête et de pied-de-page sont respectivement :

     * `header.html <https://bitbucket.org/lbesson/web-sphinx/src/master/header.html>`_,
     * `footer.html <https://bitbucket.org/lbesson/web-sphinx/src/master/footer.html>`_,

    Ils sont produits à partir de Sphinx, comme les autres pages, à partir du fichier source
    `folders.rst <https://bitbucket.org/lbesson/web-sphinx/src/master/folders.rst>`_
    que je découpe en deux *"à la main"* (pas envie de faire un script pour ça, comme il n'est
    pas nécessaire de mettre à jour ces `footer.html`_ et `header.html`_ trop souvent!).


   .. note::

      Cette fonctionnalité d'affichage amélioré des répertoires avec Apache est stable, et devrait fonctionner sur n'importe quelle navigateur récent.
      N'hésitez pas à `signaler un bug <https://bitbucket.org/lbesson/web-sphinx/issues/new>`_ si besoin est !

   .. seealso::

      Autoindex-Strapdown
         `Autoindex-Strapdown <http://ais.habilis.net/>`_ est aussi un projet intéressant, utilisant à la fois les propriétés `Apache's mod_autoindex directory listings <http://httpd.apache.org/docs/2.2/mod/mod_autoindex.html>`_ et le super projet `StapDown.js <http://lbesson.bitbucket.io/md/>`_.
         Je n'utilise plus une page générée par Sphinx pour l'affichage des dossiers (voir `<folders.html>`_ pour un exemple), mais désormais j'ai `installé AutoIndex-StrapDown <http://perso.crans.org/besson/autoindex_strapdown/>`_ sur ce site.
         Et ça rend trop bien !


.. (c) Lilian Besson, 2011-2020, https://bitbucket.org/lbesson/web-sphinx/

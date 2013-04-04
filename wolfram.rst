##############################################
 Utilise Wolfram Alpha (en ligne de commande)
##############################################
.. include:: .special.rst

Wolfram Alpha ?
---------------
 Si vous ne connaissez pas, allez faire un tour sur la page principale,
 `www.wolframalpha.com/ <http://www.wolframalpha.com/>`_.

 Merci à Romain Vernoux qui m'a fait découvrir cet outil l'an dernier !

Wolf : un client pour Wolfram Alpha ?
-------------------------------------
 La page principale est `github.com/cldwalker/wolf 
 <https://github.com/cldwalker/wolf>`_.
 
 Il s'agit d'un client **en ligne de commande** pour l'outil Wolfram Alpha.

ruby1.9.1
^^^^^^^^^
 Pour l'installer **sur Ubuntu 11.10** (et plus récent), il est nécessaire
 d'installer les paquets ``ruby1.9.1`` et ``ruby1.9.1-dev`` :

 .. code-block:: bash

    sudo apt-get install ruby1.9.1 ruby1.9.1-dev

nokogiri
^^^^^^^^
 Ensuite, il faut installer `Nokogiri 
 <http://nokogiri.org/tutorials/installing_nokogiri.html>`_ :

 .. code-block:: bash

    sudo apt-get install ri1.9.1 rdoc1.9.1 irb1.9.1
    sudo apt-get install libreadline-ruby1.9.1 libruby1.9.1 libopenssl-ruby1.9.1
    # nokogiri requirements
    sudo apt-get install libxslt-dev libxml2-dev
    # Attention: là ça change du tutoriel officiel
    sudo gem1.9.1 install nokogiri

wolf
^^^^
 Et enfin, il faut installer ``wolf`` :

 .. code-block:: bash

    sudo gem1.9.1 install wolf

------------------------------------------------------------------------------

Obtenir une clé d'application
-----------------------------
 Comme l'explique la page de ``wolf`` sur Github,
 il faut `créer un compte <http://developer.wolframalpha.com/portal/apisignup.html>`_,
 puis obtenir une clé en cliquant sur le bouton "Get an AppID".
 
 Pour l'info, c'est une petite chaîne de caractère qui ressemble à ça : ::

     3HHP2W-UUPQUT6997

 .. warning:: Ceci n'est pas une clé valide !

Enregistrer la clé
------------------
 Le plus simple est de créer un fichier "~/.wolfrc" contenant ça : ::
 
     echo "Wolfram.appid=3HHP2W-UUPQUT6997" > ~/.wolfrc

Tester le tout
--------------
 Un simple test ``wolf 0+0`` permet d'être sûr de la réussite ou de l'échec
 de l'installation.
 
 Normalement, les messages d'erreurs renvoyés par **Ruby** sont à peu près
 compréhensibles, donc si le premier test vous engueule, il doit aussi donner
 les infos nécessaires pour corriger l'installation.
 
 .. warning:: Le problème le plus fréquent est une confusion entre ruby1.8 et ruby1.9.1 !

------------------------------------------------------------------------------

Exemples
--------
 Normalement, avec l'extension `runblock <runblock.html>`_, il doit être possible
 d'embarquer le résultat d'un appel à ``wolf`` directement dans la page !

 .. runblock:: console

    $ wolf 0+0

Un premier exemple, tiré du cours de logique (L3)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 .. runblock:: console

    $ wolf "distance Paris New York"

------------------------------------------------------------------------------

D'autres essais ?
-----------------

.. warning:: En cours de rédaction.

Résoudre une équation
^^^^^^^^^^^^^^^^^^^^^


------------------------------------------------------------------------------

À propos
--------
 Pour embarquer la commande et la sortie de ``wolf``, j'utilise le morceau
 de code suivant :
 
 .. code-block:: rst
 
    .. runblock:: console
    
       $ wolf "ma question"

Faiblesse de cette méthode
^^^^^^^^^^^^^^^^^^^^^^^^^^
 Une première faiblesse de ``.. runblock:: console`` pour exécuter ``wolf question``
 est la limitation à des caractères ASCII imposée par l'extension `runblock 
 <runblock.html>`_ (limitation déjà signalée dans cette page, où je suis forcé
 de changer la langue du terminal pour que ``gpg`` ne me sorte pas d'accents).

Un extension ?
^^^^^^^^^^^^^^
 On pourrait envisager de faire une extension Sphinx qui, comme `gnuplot
 <gnuplot_embed.html>`_, permettrait d'embarquer des graphiques et des
 tableaux produits par *Wolfram|Alpha*.
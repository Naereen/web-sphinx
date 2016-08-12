.. meta::
   :description lang=fr: Utiliser Wolfram|Alpha (en ligne de commande)
   :description lang=en: Using Wolfram|Alpha from the command line

###############################################
 Utiliser Wolfram|Alpha (en ligne de commande)
###############################################

Wolfram|Alpha ?
---------------
 Si vous ne connaissez pas, allez faire un tour sur la page principale,
 `www.wolframalpha.com/ <http://www.wolframalpha.com/>`_.

 Merci à `Romain Vernoux <http://vernoux.fr>`_ qui m'a fait découvrir cet outil en 2012 !

  * **Wolfram|Alpha** est © et ® Wolfram Research Company;
  * ``wolf`` (ruby cli) est © `Gabriel Horner <https://github.com/cldwalker/wolf>`_;
  * ``wolfram`` (ruby cli) est aussi © `Gabril Horner <https://github.com/cldwalker/wolfram>`_.
  * ``ruby`` et ``nokogiri`` sont la propriétés de leurs auteurs respectifs.

------------------------------------------------------------------------------

`wa.sh`_ : un premier client pour Wolfram|Alpha, léger et en Bash ?
-------------------------------------------------------------------
Avantages et inconvénients
^^^^^^^^^^^^^^^^^^^^^^^^^^
 L'avantage de ce premier client est sa portabilité : il est **très léger**
 (47 lignes de code, *avec* les commentaires!), et ne demande **aucune dépendance**,
 à part ``grep``, ``curl``, ``tr`` et ``sed``, déjà installés sur n'importe quel Linux, et disponibles sur Mac OS X (avec `brew <https://www.brew.sh/>`) and on Windows (with `cygwin <https://www.cygwin.org/>`_)..

 Néanmoins, ce client est plus minimaliste que ``wolf`` (présenté plus bas), et il ne présente aucune option.

Source
^^^^^^
 La version originale est ici `wa.sh (original) <https://github.com/saironiq/shellscripts/blob/master/wolframalpha_com/wa.sh>`_.

 Ma version, sans couleur en sortie, est là `wa_nocolor.sh <https://bitbucket.org/lbesson/bin/src/master/wa_nocolor.sh>`_.
 Une version "plus à jour" se trouve ici `wa.sh <https://bitbucket.org/lbesson/bin/src/master/wa.sh>`_.

Obtenir une clé d'application
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 `Pour plus de détails, voir plus bas <#obtenir-une-cle-d-application-bis>`_.

 Il faut cette fois l'enregistrer dans un fichier ``~/.wolfram_api_key`` sous la forme : ::

     export API_KEY="3HHP2W-UUPQUT6997"


 Par exemple avec la commande suivante : ::

     mv ~/.wolfram_api_key /tmp/  # Pour ne pas écraser un fichier qui serait déjà là !
     echo 'export API_KEY="3HHP2W-UUPQUT6997"' > ~/.wolfram_api_key
     # Assurez vous que ce fichier ait les bonnes permissions de lecture !
     chmod +r ~/.wolfram_api_key

Exemples
^^^^^^^^
 Voici quelques exemples, qui permettent de comparer les sorties des deux clients
 (voir plus bas pour des exemples avec ``wolf``) :


#. Un test stupide : ``0+0`` :

   .. runblock:: console

      $ wa_nocolor.sh "0+0"

#. Un calcul de distance :

   .. runblock:: console

      $ wa_nocolor.sh "distance Paris Hyderabad"

#. Résolution d'une équation :

   .. runblock:: console

      $ wa_nocolor.sh "x^3 - sinx = e^-x"

#. Et un exemple plus drôle, un `Pokémon <pokedex-doc/index.html>`_ :

   .. runblock:: console

      $ wa_nocolor.sh pikachu | sed 's/\\#/#/g'

#. Allez, un dernier exemple, on demande `le cours actuel <http://finance.yahoo.com/echarts?s=EURINR=X&t=5d&l=on&z=m&q=l&c=>`_ de la `roupie indienne <https://fr.wikipedia.org/wiki/Roupie_indienne>`_ :

   .. runblock:: console

      $ LANG=en ; echo -e "Request to Wolfram|Alpha being processed..."
      $ echo -e "The $(date), 1 Euro was worth $(wa_nocolor.sh "1 EUR in INR" | grep -o "₹.*$")."


Attention
^^^^^^^^^
 On pourrait se plaindre de l'**incroyable lenteur** de cette solution.
 Plusieurs secondes d'attente pour 4 requêtes, *c'est pas mal !*

------------------------------------------------------------------------------

``wolf`` : un second client pour Wolfram|Alpha, en *ruby* ?
-----------------------------------------------------------
 La page principale est `github.com/cldwalker/wolf <https://github.com/cldwalker/wolf>`_.

 Il s'agit aussi d'un client **en ligne de commande** pour l'outil Wolfram|Alpha.

``ruby1.9.1``
^^^^^^^^^^^^^
 Pour l'installer **sur Ubuntu 11.10** (et plus récent), il est nécessaire
 d'installer les paquets ``ruby1.9.1`` et ``ruby1.9.1-dev`` :

 .. code-block:: bash

    sudo apt-get install ruby1.9.1 ruby1.9.1-dev

.. warning:: Ruby 1.9.1 n'est plus disponible dès Ubuntu 15.10 !

   Je ne peux donc plus tester les exemples d'utilisation de ``wolf`` inclus ci-dessous, désolé.


``nokogiri``
^^^^^^^^^^^^
 Ensuite, il faut installer `Nokogiri <http://nokogiri.org/tutorials/installing_nokogiri.html>`_.

 D'abord, ses dépendances (quelques paquets ``ruby``), et deux librairies :

 .. code-block:: bash

    sudo apt-get install ri1.9.1 rdoc1.9.1 irb1.9.1
    sudo apt-get install libreadline-ruby1.9.1 libruby1.9.1 libopenssl-ruby1.9.1
    # nokogiri requirements
    sudo apt-get install libxslt-dev libxml2-dev


 Attention, la dernière étape change du tutoriel *officiel* sur la page de l'auteur.
 Attention aussi, car cette installation est **très longue**,
 la gem ayant besoin d'une étape de compilation, apparemment très longue
 (plusieurs minutes à *100%* de temps ``CPU``).

 .. code-block:: bash

    # Attention : là ça change du tutoriel officiel
    sudo gem1.9.1 install nokogiri

wolf
^^^^
 Et enfin, il faut installer la gem ``wolf`` :

 .. code-block:: bash

    sudo gem1.9.1 install wolf

------------------------------------------------------------------------------

Obtenir une clé d'application (bis)
-----------------------------------
 Comme l'explique la page de ``wolf`` sur Github,
 il faut `créer un compte <http://developer.wolframalpha.com/portal/apisignup.html>`_,
 puis obtenir une clé en cliquant sur le bouton "Get an AppID".

 Pour l'info, c'est une petite chaîne de caractère qui ressemble à ça : ::

     3HHP2W-UUPQUT6997


.. warning:: Ceci n'est pas une clé valide ! Utilisez la votre !

Enregistrer la clé
------------------
 Le plus simple est de créer un fichier ``~/.wolfrc`` contenant ça ``"Wolfram.appid=3HHP2W-UUPQUT6997"`` : ::

     mv ~/.wolfrc /tmp/  # Pour ne pas écraser un fichier qui serait déjà là !
     echo "Wolfram.appid=3HHP2W-UUPQUT6997" > ~/.wolfrc
     # Assurez vous que ce fichier ait les bonnes permissions de lecture !
     chmod +r ~/.wolfrc


Tester le tout
--------------
 Un simple test ``wolf 0+0`` permet d'être sûr de la réussite ou de l'échec
 de l'installation.

 Normalement, les messages d'erreurs renvoyés par **Ruby** sont à peu près
 compréhensibles, donc si le premier test vous engueule, il *devrait* aussi donner
 les infos nécessaires pour corriger l'installation.

 .. warning:: Le problème le plus fréquent est une confusion entre ruby1.8 et ruby1.9.1 !

------------------------------------------------------------------------------

Exemples : directement embarqués dans cette page web ?
------------------------------------------------------
 Avec l'extension `runblock <runblock.html>`_, il est possible
 d'embarquer le résultat d'un appel à ``wolf`` directement dans la page !

 .. runblock:: console

    $ wolf 0+0

Un premier exemple
^^^^^^^^^^^^^^^^^^
 .. runblock:: console

    $ wolf "distance Paris Hyderabad"

------------------------------------------------------------------------------

D'autres essais ?
-----------------

Résoudre une équation
^^^^^^^^^^^^^^^^^^^^^
 .. runblock:: console

    $ wolf "x^3 - sinx = e^-x"

Base de données de Pokémon
^^^^^^^^^^^^^^^^^^^^^^^^^^
 Un ajout drôle qui a fait pas mal parler de lui !

 .. runblock:: console

    $ wolf pikachu | sed s/"\\\'"/""/ | sed s/"\\\%"/"%"/

D'autres exemples
^^^^^^^^^^^^^^^^^
 Par exemple `<wolfram.example>`_ montre la sortie de la requette "``distance Paris Montreal``".

 Pour plus d'inspiration, il suffit d'aller piocher `là bas <http://www.wolframalpha.com/examples/>`_.

------------------------------------------------------------------------------

À propos de cette page
----------------------
 Pour embarquer la commande et la sortie de ``wolf``, j'utilise le morceau de code suivant :

 .. code-block:: rst

    .. runblock:: console

       $ wolf "ma question"

Faiblesse de cette méthode
^^^^^^^^^^^^^^^^^^^^^^^^^^
 Une première faiblesse de l'utilisation de la `commande rST <demo.html>`_
 ``.. runblock:: console`` pour exécuter ``wolf question`` est
 la limitation à des caractères ASCII imposée par l'extension `runblock <runblock.html>`_
 (limitation déjà signalée dans `cette page <runblock.html>`_, où je suis forcé de changer la langue du terminal pour que ``gpg`` ne me sorte pas d'accents).

Une extension ?
^^^^^^^^^^^^^^^
 On pourrait envisager de faire une extension Sphinx qui, comme `greffon GNUplot <gnuplot_embed.html>`_, permettrait d'embarquer des graphiques et des tableaux produits par *Wolfram|Alpha*.
 J'ai la flemme de le faire moi-même !

.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

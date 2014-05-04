###############################################
 Utiliser Wolfram|Alpha (en ligne de commande)
###############################################
.. include:: .special.rst
.. todo:: Vérifier de temps en temps que ce tutoriel est à jour !

Wolfram|Alpha ?
---------------
 Si vous ne connaissez pas, allez faire un tour sur la page principale,
 `www.wolframalpha.com/ <http://www.wolframalpha.com/>`_.

 Merci à `Romain Vernoux <http://vernoux.fr>`_ qui m'a fait découvrir cet outil l'an dernier !

  * **Wolfram|Alpha** est © et ® Wolfram Research Company;
  * ``wolf`` (ruby cli) est © `Gabriel Horner <https://github.com/cldwalker/wolf>`_;
  * ``wolfram`` (ruby cli) est aussi © `Gabril Horner <https://github.com/cldwalker/wolfram>`_.
  * ``ruby`` et ``nokogiri`` sont la propriétés de leurs auteurs respectifs.

------------------------------------------------------------------------------

`wa.sh`_ : un premier client pour Wolfram|Alpha, léger et en Bash ?
-------------------------------------------------------------------
Avantage et inconvénient
^^^^^^^^^^^^^^^^^^^^^^^^
L'avantage de ce premier client est sa portabilité : il est **très léger**
(47 lignes, *avec* les commentaires!), et ne demande **aucune dépendance**
(à part ``grep``, ``curl``, ``tr`` et ``sed``, déjà installés sur n'importe quel Linux).

Néanmoins, ce client est plus minimaliste que ``wolf`` (présenté plus bas),
et il ne présente aucune option.

Source
^^^^^^
La version originale est ici `wa.sh (original) <https://github.com/saironiq/shellscripts/blob/master/wolframalpha_com/wa.sh>`_.

Ma version, sans couleur en sortie, est là `wa_nocolor.sh <http://bitbucket.org/lbesson/bin/src/master/wa_nocolor.sh>`_.
Une version "plus à jour" sera bientôt ici `wa.sh <http://bitbucket.org/lbesson/bin/src/master/wa.sh>`_.

Obtenir une clé d'application (bis)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
`Voir plus bas <#obtenir-une-cle-d-application>`_.

Il faut cette fois l'enregistrer dans un fichier ``~/.wolfram_api_key`` sous la forme : ::

    export API_KEY="3HHP2W-UUPQUT6997"


Par exemple avec la commande suivante : ::

    mv ~/.wolfram_api_key /tmp/  # Pour ne pas écraser un fichier qui serait déjà là !
    echo 'export API_KEY="3HHP2W-UUPQUT6997"' > ~/.wolfram_api_key  # Assurez vous que ce fichier ait les bonnes permissions de lecture !

Exemples
^^^^^^^^
Voici quelques exemples, qui permettent de comparer les sorties des deux clients
(voir plus bas pour la sortie de ``wolf``) :

#. Un test : ``0+0`` :

   .. runblock:: console
   
      $ ~/bin/wa_nocolor.sh "0+0"

#. Un calcul de distance :

   .. runblock:: console
   
      $ ~/bin/wa_nocolor.sh "distance Paris New-York" | recode ..ascii | iconv -c -s -t ascii | fold -s -w 90

#. Résolution d'une équation :

   .. runblock:: console
   
      $ ~/bin/wa_nocolor.sh "x^3 - sinx = e^-x"

#. Et, en bonus, un pokémon :

   .. runblock:: console
   
      $ ~/bin/wa_nocolor.sh zapdos | grep -v Japanese | recode utf8..tex | iconv -c -s -t ascii | fold -s -w 90


Attention
^^^^^^^^^
On pourrait se plaindre de l'**incroyable lenteur** de cette solution.
Plusieurs secondes d'attente pour 4 requêtes, *c'est pas mal !*

------------------------------------------------------------------------------

``wolf`` : un second client pour Wolfram|Alpha en *ruby* ?
----------------------------------------------------------
 La page principale est `github.com/cldwalker/wolf <https://github.com/cldwalker/wolf>`_.

 Il s'agit d'un client **en ligne de commande** pour l'outil Wolfram Alpha.

``ruby1.9.1``
^^^^^^^^^^^^^
 Pour l'installer **sur Ubuntu 11.10** (et plus récent), il est nécessaire
 d'installer les paquets ``ruby1.9.1`` et ``ruby1.9.1-dev`` :

 .. code-block:: bash

    sudo apt-get install ruby1.9.1 ruby1.9.1-dev

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
 (plusieurs minutes a *100%* de temps ``CPU``).

 .. code-block:: bash

    # Attention: là ça change du tutoriel officiel
    sudo gem1.9.1 install nokogiri

wolf
^^^^
 Et enfin, il faut installer la gem ``wolf`` :

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
 Le plus simple est de créer un fichier ``~/.wolfrc`` contenant ça : ::

     mv ~/.wolfrc/tmp/  # Pour ne pas écraser un fichier qui serait déjà là !
     echo "Wolfram.appid=3HHP2W-UUPQUT6997" > ~/.wolfrc # Assurez vous que ce fichier ait les bonnes permissions de lecture !


Tester le tout
--------------
 Un simple test ``wolf 0+0`` permet d'être sûr de la réussite ou de l'échec
 de l'installation.

 Normalement, les messages d'erreurs renvoyés par **Ruby** sont à peu près
 compréhensibles, donc si le premier test vous engueule, il doit aussi donner
 les infos nécessaires pour corriger l'installation.

 .. warning:: Le problème le plus fréquent est une confusion entre ruby1.8 et ruby1.9.1 !

------------------------------------------------------------------------------

Exemples : directement embarqués ?
----------------------------------
 Normalement, avec l'extension `runblock <runblock.html>`_, il doit être possible
 d'embarquer le résultat d'un appel à ``wolf`` directement dans la page !

 .. runblock:: console

    $ wolf 0+0

Un premier exemple
^^^^^^^^^^^^^^^^^^
 .. runblock:: console

    $ wolf "distance Paris New-York"

------------------------------------------------------------------------------

D'autres essais ?
-----------------

Résoudre une équation
^^^^^^^^^^^^^^^^^^^^^
 .. runblock:: console

    $ wolf "x^3 - sinx = e^-x"

Base de données de pokémon
^^^^^^^^^^^^^^^^^^^^^^^^^^
 Un ajout drôle qui a fait pas mal parler de lui !

 .. runblock:: console

    $ wolf pikachu | grep -v Japanese | recode utf8..tex | iconv -c -s -t ascii | sed s/"\\\'"/""/ | sed s/"\\\%"/"%"/ | fold -s -w 90

D'autres exemples
^^^^^^^^^^^^^^^^^
 Par exemple `<wolfram.example>`_ montre la sortie de la requette "``distance Paris Montreal``".

 Pour plus d'inspiration, il suffit d'aller piocher `là bas <http://www.wolframalpha.com/examples/>`_.

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
 On pourrait envisager de faire une extension Sphinx qui,
 comme `gnuplot <gnuplot_embed.html>`_, permettrait d'embarquer
 des graphiques et des tableaux produits par *Wolfram|Alpha*.


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
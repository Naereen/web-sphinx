########################
 Extension **runblock**
########################
.. include:: .special.rst

Je teste ici la fonctionnalité "expérimentale" d'exécuter du code lors de la
génération de la web, avec une directive ``.. runblock::``.

Exemples
--------
pycon
~~~~~
La première directive est ``..runblock:: pycon``.
Elle fait appel à **Python**, mais utilise la syntaxe d'une session
interactive de l'intérpreteur.

Par exemple, le code suivant : ::

    .. runblock:: pycon

       >>> for i in range(5):
       ...  print i


produira la sortie suivante :

.. runblock:: pycon
   
    >>> for i in range(5):
    ...  print i


**Mais**, cette extension **runcode** permet aussi de faire plus !

------------------------------------------------------------------------------

Exemples plus intéressants
--------------------------
console
~~~~~~~
Par exemple, la date courante :

.. runblock:: console
    
    $ LANG=en ; echo "Date: `date`. Folder: `pwd`."

Ou bien une liste des fichiers ``.rst`` dans le répertoire courant :

.. runblock:: console
    
    $ LANG=en ls -larth *.rst .*.rst

Ou bien encore, on peut réaliser une signature *GPG* à la volée du 
fichier courant (pour plus d'infos sur *GPG* voir `<pgp.html>`_) :

.. runblock:: console

    $ LANG=en gpg --quiet -o - --armor --detach-sign runblock.rst

Autres exemples
~~~~~~~~~~~~~~~

*figlet* pour afficher du texte en ASCII art :

.. runblock:: console

    $ LANG=en figlet "C'est  joli  non  ?"


Mon script `<bin/series.sh>`_ permet de lire automatiquement l'épisode suivant
d'une série télé, et utilise un fichier *~/current* pour savoir quel dossier lire :

.. runblock:: console

    $ echo -e "En ce moment, je regarde la serie `basename \"\`cat /home/lilian/current\`\"` :)"


Le script `<bin/CheckDownload_Pypi.sh>`_ permet de consulter les statistiques de téléchargement
d'un paquet Python hébergé sur Pypi. En l'occurence, https://pypi.python.org/pypi/ANSIColors-balises !

.. runblock:: console

    $ echo -e "For the package ANSIColors-balises (hosted on https://pypi.python.org/pypi/ANSIColors-balises) :" 
    $ ~/bin/CheckDownload_Pypi.sh | tail -n3


État du dépôt git (montre quels fichiers sont nouveaux (*N*), modifiés (*M*) ou supprimés (*D*)) :

.. runblock:: console

    $ git status --porcelain 


Un truc débile avec un élan (cf. Bohort : "Non, moi ça m'évoque plutôt un élan" via `<publis/.quotes/txt>`_) :

.. runblock:: console

    $ cowthink -W 160 -f /usr/share/cowsay/cows/moose.cow "Et vous trouvez ca drole ?"


Afficher une image en ASCII :

.. runblock:: console

    $ convert ~/.link.png jpg:- | jp2a -b - --size=31x20

Et :

.. runblock:: console

    $ convert ~/.link.png jpg:- | jp2a -b -


Des ajouts
~~~~~~~~~~
Dans le fichier ``conf.py``, on peut créer de nouveaux types de **runblock**,

Il faut d'abord créér un dictionnaire vide appelé ``autorun_languages``.

Et ensuite :

.. code-block:: python

    autorun_languages['ocaml'] = u'ocaml -init /dev/null'
    autorun_languages['ocaml_prefix_chars'] = 2

ocaml
^^^^^
.. runblock:: ocaml

    # let rec f = function 0 -> 1 | n -> n *( f (n-1)) in
    # print_int (f 11);;


ocaml-stdin
^^^^^^^^^^^
.. runblock:: ocaml-stdin

    # let rec f = function 0 -> 1 | n -> n *( f (n-1)) in
    # print_int (f 11);;

.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
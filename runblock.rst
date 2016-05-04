########################
 Extension **runblock**
########################

Je teste ici la fonctionnalité "expérimentale" d'exécuter du code lors de la
génération de la web, avec une directive ``.. runblock::``.

Exemples
--------
pycon
~~~~~
La première directive est ``..runblock:: pycon``.
Elle fait appel à **Python**, mais utilise la syntaxe d'une session
interactive de l'intérpreteur.

Par exemple, le code suivant :

.. code-block:: rst

   .. runblock:: pycon

       >>> for i in range(5):
       ...  print i


produira la sortie suivante :

.. runblock:: pycon

    >>> for i in range(5):
    ...  print i


On peut aussi vérifier la version de Python utilisée par l'extension :

.. runblock:: pycon

    >>> import sys
    >>> print(sys.version)


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

Ou bien encore, on peut réaliser une signature *GPG* (*à la volée*) du fichier courant (pour plus d'infos sur *GPG* voir `<pgp.html>`_) :

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

    $ LANG=en echo -e "En ce moment, je regarde la serie `basename \"\`cat /home/lilian/current | tr _ ' ' | recode utf8..tex | iconv -c -s -t ascii\`\"` :)"


Le script `<bin/CheckDownload_Pypi.sh>`_ permet de consulter les statistiques de téléchargement
d'un paquet Python hébergé sur Pypi. En l'occurence, https://pypi.python.org/pypi/ANSIColors-balises !

.. runblock:: console

    $ LANG=en echo -e "For the package ANSIColors-balises (hosted on https://pypi.python.org/pypi/ANSIColors-balises) :"
    $ ~/bin/CheckDownload_Pypi.sh | tail -n3


État du dépôt git (montre quels fichiers sont nouveaux (*N*), modifiés (*M*) ou supprimés (*D*)) :

.. runblock:: console

    $ LANG=en git status --porcelain | recode utf8..tex | iconv -c -s -t ascii


Un truc débile avec un élan (cf. Bohort : "Non, moi ça m'évoque plutôt un élan" via `<publis/.quotes.txt>`_) :

.. runblock:: console

    $ cowthink -W 160 -f /usr/share/cowsay/cows/moose.cow "Et vous trouvez ca drole ?"


Afficher une image en ASCII :

.. runblock:: console

    $ convert ~/.link.ico jpg:- | jp2a -b - --size=31x20 | recode utf8..tex | iconv -c -s -t ascii


Et la même en plus gros :

.. runblock:: console

    $ convert ~/.link.ico jpg:- | jp2a -b - --size=62x30 | recode utf8..tex | iconv -c -s -t ascii


Quelques statistiques sur `ce dépôt git <https://bitbucket.org/lbesson/web-sphinx/>`_ (`avec ce script <https://bitbucket.org/lbesson/bin/src/master/git-complete-stats.sh>`_):

.. runblock:: console
   
   $ git-complete-stats.sh | head -n14 | recode utf8..tex | iconv -c -s -t ascii


Un calendrier montrant les jours d'activités de ce dépôt git (`avec cet autre script <https://bitbucket.org/lbesson/bin/src/master/git-cal>`_) :

.. runblock:: console
   
   $ git-cal --ascii | recode utf8..tex | iconv -c -s -t ascii


Des ajouts : OCaml ?
~~~~~~~~~~~~~~~~~~~~
Dans le fichier `conf.py <https://bitbucket.org/lbesson/web-sphinx/src/master/conf.py#conf.py-96>`_,
on peut facilement créer des raccourcis pour faciliter l'unilisation de cette extension **runblock**.

Il faut d'abord créér un *dictionnaire* vide appelé ``autorun_languages``.

.. code-block:: python

   autorun_languages = {}

Et ensuite ajouter une valeur ``truc`` (un programme valide, comme `gnuplot <gnuplot.html>`_ ou `ocaml <ocaml.html>`_)
et ``truc_prefix_chars`` (taille des préfixes)
pour rendre utilisable la balise ``.. code-block:: truc`` dans les documents en *rST* :

.. code-block:: python

   # Ajouter ça dans votre conf.py
   autorun_languages['ocaml'] = u'ocaml -stdin'
   autorun_languages['ocaml_prefix_chars'] = 2

``.. runblock:: ocaml`` désormais
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Avec cette astuce, il n'affiche plus ces messages inutiles : victoire !

.. runblock:: ocaml

   # let rec f = function 0 -> 1 | n -> n *(f (n-1)) in
   # print_int (f 11);;
   # Printf.printf "\n        OCaml version %s\n" Sys.ocaml_version;;

------------------------------------------------------------------------------

.. todo:: Translate this page to English!

Bug étrange de ``pygments``
^^^^^^^^^^^^^^^^^^^^^^^^^^^
J'ai des fois vu ``pygments`` ou ``pygmentize`` se casser complètement, et la correction que je fais :red:`manuellement` est de supprimer
le support (annoncé comme expérimental) de ``pkg_resources``
dans le fichier `plugin.py <https://bitbucket.org/birkenfeld/pygments-main/src/default/pygments/plugin.py#plugin.py-41>`_,
en forçant :red:`manuellement` ``pkg_resources = None``
(`à la ligne 41 <https://bitbucket.org/birkenfeld/pygments-main/src/default/pygments/plugin.py#plugin.py-41>`_).
:red:`C'est sale` mais ça corrige le bug...

.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

.. meta::
   :description lang=fr: Extension ``runblock``
   :description lang=en: Testing the ``autorun`` Sphinx extension

########################
 Extension ``runblock``
########################

Je teste ici la fonctionnalité "expérimentale" de `Sphinx <http://www.sphinx-doc.org/en/stable/>`_,
`l'extension autorun <https://pypi.python.org/pypi/sphinxcontrib-autorun/>`_, qui donne une directive ``.. runblock::``,
qui permet d'exécuter du code lors de la génération de la page web.

.. seealso:: Pour une liste d'extensions Sphinx utiles, `cette page donne un bonne idée de ce qui existe <http://sphinxext-survey.readthedocs.io/en/latest/index.html>`_ (en anglais).
.. seealso:: `Plus de détails sur runblock et autorun <http://pvbookmarks.readthedocs.io/en/latest/devel/documentation/doc_generators/sphinx/extensions/contributed_extensions/autorun.html>`_ (en anglais).

Exemples
--------
pycon
~~~~~
La première directive est ``..runblock:: pycon``.
Elle fait appel au `langage Python <https://www.python.org/>`_,
mais utilise la syntaxe d'une session interactive de l'intérpreteur.

Par exemple, le code suivant :

.. code-block:: rst

   .. runblock:: pycon

       >>> for i in range(5):
       ...  print(i)


produira la sortie suivante :

.. runblock:: pycon

    >>> for i in range(5):
    ...  print(i)


On peut aussi vérifier la version de Python utilisée par l'extension :

.. runblock:: pycon

    >>> import sys
    >>> print(sys.version)


Cette directive ``.. runblock:: pycon`` est intéressante, pour donner des exemples et de courtes démonstrations, dans des tutoriels ou de la documentation par exemple.

Mais, cette extension **runcode** permet aussi de faire plus !

------------------------------------------------------------------------------

Exemples plus intéressants
--------------------------
``.. runblock:: console``
~~~~~~~~~~~~~~~~~~~~~~~~~
Cette directive accepte la syntaxe d'un shell (``sh`` classique) ou de Bash, où le code est précédé d'un symbole *$ *.


Par exemple, la date courante et le dossier de travail courant :

.. runblock:: console

    $ LANG=en ; echo "Date: `date`. Folder: `pwd`."

Ou bien une liste des fichiers `reStructuredText <demo.html>`_ (``.rst``) dans le répertoire courant :

.. runblock:: console

    $ LANG=en ls -larth ./{,.}*.rst

Ou bien encore, on peut réaliser une signature *GPG* (*à la volée*) du fichier courant (pour plus d'infos sur *GPG*, voir `<pgp.html>`_) :

.. runblock:: console

    $ LANG=en gpg --quiet -o - --armor --detach-sign runblock.fr.rst

Autres exemples divers
~~~~~~~~~~~~~~~~~~~~~~

*figlet* pour afficher du texte en ASCII art :

.. runblock:: console

    $ LANG=en figlet "C'est  joli  non  ?"


Mon script `<bin/series.sh>`_ permet de lire automatiquement l'épisode suivant
d'une série télé, et utilise un fichier *~/current* pour savoir quel dossier lire.
On peut s'en servir pour afficher quelle série télé je regarde en ce moment :

.. runblock:: console

    $ LANG=en echo -e "En ce moment, je regarde la serie $(basename "$(cat /home/lilian/current | tr _ ' ' | recode utf8..tex | iconv -c -s -t ascii)") :)"


Le script `<bin/CheckDownload_Pypi.sh>`_ permet de consulter les statistiques de téléchargement d'un paquet Python hébergé sur Pypi.
En l'occurence, je vais utiliser mon package `ANSIColors-balises <https://pypi.python.org/pypi/ANSIColors-balises>`_ pour l'exemple !

.. runblock:: console

    $ LANG=en echo -e "Pour le paquet ANSIColors-balises (sur https://pypi.python.org/pypi/ANSIColors-balises) :"
    $ ~/bin/CheckDownload_Pypi.sh | tail -n3


État du dépôt git (montre quels fichiers sont nouveaux (*N*), modifiés (*M*) ou supprimés (*D*)) :

.. runblock:: console

    $ LANG=en git status --porcelain | recode utf8..tex | iconv -c -s -t ascii


Un truc débile avec un élan (cf. Bohort : "Non, moi ça m'évoque plutôt un élan" via `<publis/.quotes.txt>`_) :

.. runblock:: console

    $ cowthink -W 160 -f /usr/share/cowsay/cows/moose.cow "Et vous trouvez ca drole ?"


On peut essayer une idée encore plus folle, afficher une image **en texte ASCII** :

.. runblock:: console

    $ convert ~/.link.ico jpg:- | jp2a -b - --size=31x20 | recode utf8..tex | iconv -c -s -t ascii


Et la même en plus gros (*au fait*, cette image est `l'icone de ce site web <https://bitbucket.org/lbesson/web-sphinx/src/master/.static/.favicon.ico>`_) :

.. runblock:: console

    $ convert ~/.link.ico jpg:- | jp2a -b - --size=62x30 | recode utf8..tex | iconv -c -s -t ascii


Quelques statistiques sur `ce dépôt git <https://bitbucket.org/lbesson/web-sphinx/>`_ :

.. runblock:: console

   $ echo "Nombre de commits par auteur (dans ce depot git) :"
   $ git --no-pager shortlog -sn --all | iconv -c -s -t ascii


Un calendrier montrant les jours d'activités de ce dépôt git (`avec cet autre script <https://bitbucket.org/lbesson/bin/src/master/git-cal>`_, si vous êtes curieux `cette web-page est une jolie version web de ce "calendrier" minimaliste <https://bitbucket.org/lbesson/web-sphinx/addon/bitbucket-graphs/graphs-repo-page>`_) :

.. runblock:: console

   $ git-cal --ascii | iconv -c -s -t ascii


Des ajouts : OCaml ?
~~~~~~~~~~~~~~~~~~~~
Dans le fichier de configuration de Sphinx, `conf.py <https://bitbucket.org/lbesson/web-sphinx/src/master/conf.py#conf.py-96>`_,
on peut facilement créer des raccourcis pour faciliter l'utilisation de cette extension **runblock**.

Il faut d'abord créér un *dictionnaire* vide appelé ``autorun_languages`` :

.. code-block:: python

   autorun_languages = {}

Et ensuite ajouter une valeur ``truc`` (un programme valide, comme `gnuplot <gnuplot.html>`_ ou `ocaml <ocaml.html>`_)
et ``truc_prefix_chars`` (taille des préfixes)
pour rendre utilisable la balise ``.. code-block:: truc`` dans les documents reStructuredText (dans *ce* projet seulement) :

.. code-block:: python

   # Ajouter ça dans votre 'conf.py'
   autorun_languages['ocaml'] = u'ocaml -stdin'
   autorun_languages['ocaml_prefix_chars'] = 2

``.. runblock:: ocaml`` marche désormais
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Avec cette astuce, on peut désormais inclure facilement des exemples de code en OCaml :

.. runblock:: ocaml

   # let rec f = function 0 -> 1 | n -> n *(f (n-1)) in
   # print_int (f 11);;
   # Printf.printf "\n        OCaml version %s\n" Sys.ocaml_version;;

------------------------------------------------------------------------------

Bug étrange de ``pygments``
^^^^^^^^^^^^^^^^^^^^^^^^^^^
This ``runblock`` extension uses the great `pygments <http://pygments.org/>`_ Python library to color the code.

J'ai des fois vu ``pygments`` ou ``pygmentize`` se casser complètement, et la correction que je fais :red:`manuellement` est de supprimer
le support (annoncé comme expérimental) de ``pkg_resources``
dans le fichier `plugin.py <https://bitbucket.org/birkenfeld/pygments-main/src/default/pygments/plugin.py#plugin.py-41>`_ dans les sources de pygments,
en forçant :red:`manuellement` ``pkg_resources = None``
(`à la ligne 41 <https://bitbucket.org/birkenfeld/pygments-main/src/default/pygments/plugin.py#plugin.py-41>`_).
:red:`C'est sale` mais ça corrige le bug...

.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/
#################################################
Exécuter du code lors de la génération de la page
#################################################
Un test
-------

 Je teste ici la fonctionnalité "expérimentale" d'exécuter du code lors de la
 génération de la web, avec une balise ``.. runcode::``.

Exemples
--------
pycon
~~~~~
.. runblock:: pycon
   
    >>> for i in range(5):
    ...    print i


console
~~~~~~~
Par exemple, la date courante :

.. runblock:: console
    
    $ echo "Date: `date`. Dossier: `pwd`."

Ou bien une liste des fichiers ``.rst`` dans le répertoire courant :

.. runblock:: console
    
    $ ls -arth *.rst .*.rst

Ou bien encore, on peut réaliser une signature *GPG* à la volée du 
fichier courant (pour plus d'infos sur *GPG* voir `<pgp.html>`_) :

.. runblock:: console

    $ gpg --quiet -o - --armor --detach-sign runblock.rst

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


octave
^^^^^^
:red:`Ne marche pas encore bien.`

.. runblock:: octave
    
    >> printf('Matrice random, taille %ix%i, determinant = %f.\n', 100, 100, det(rand(100,100)))
    >> d = det(rand(100,100))
    >> fprintf('%f\n\n', d)

ANSIColors
^^^^^^^^^^

Pour plus d'infos sur *ANSIColors*, voir cette page
`lbesson/ansi-colors <https://bitbucket.org/lbesson/ansi-colors/>`_.

Je teste ici la possibilité d'embarquer des codes couleurs ANSI dans le 
résultat d'une directive ``.. runblock::`` :

.. runblock:: console
    
    $ python -m ANSIColors --help

.. include:: .bottom.fr.rst
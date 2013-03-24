#################################################
Exécuter du code lors de la génération de la page
#################################################

 Je teste ici la fonctionnalité "expérimentale" d'exécuter du code lors de la
 génération de la web, avec une balise ``.. runblock::``.

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
    
    $ echo "Date: `date`. Dossier: `pwd`."

Ou bien une liste des fichiers ``.rst`` dans le répertoire courant :

.. runblock:: console
    
    $ ls -larth *.rst .*.rst

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

.. todo::

   Je ne sais pas ce qui empêche cet exemple de marcher, mais je cherche.

.. include:: .bottom.fr.rst
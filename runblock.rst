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
    ...  print i


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

On peut tenter de forcer l'utilisation avec ``--ANSI`` :

Ça fonctionne, mais les couleurs, comme prévu, ne sont pas interprétés :
vous voyez plein de ``[1m`` ou ``[0;39;49m``.

Peut-être qu'avec l'extension **ansi** du dépot ``sphinx-contrib``.

.. include:: /tmp/runblock_out2.rst

Alors ?

.. ansi-block::
   
   Ca marche ? 
   ^[[01;32mANSI Colors utility ^[[01;31mmodule^[[0;39;49m and ^[[01;34mscript^[[0;39;49m.
       ^[[4mmailto:naereen-corporation@laposte.net^[[24m.
       ^[[4mhttps://sites.google.com/site/naereencorp^[[24m.


.. include:: .bottom.fr.rst
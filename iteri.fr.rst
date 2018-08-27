.. meta::
   :description lang=fr: List.iteri et Array.iteri en OCaml
   :description lang=en: List.iteri and Array.iteri in OCaml

####################################
 List.iteri et Array.iteri en OCaml
####################################

.. note:: Un petit article sur deux fonctions pratiques `du langage OCaml <http://ocamllang.org/>`_.

.. warning:: Si le mot OCaml n'évoque rien pour vous, cet article ne vous intéressera pas !

``List.iter`` et ``Array.iter``
-------------------------------
Ces deux fonctions sont des classiques des modules *List* [#listiter]_ et *Array* [#arrayiter]_.

Ces fonctions sont des itérateurs du type suivant :

.. code-block:: ocaml

   val List.iter : ('a -> unit) -> 'a list -> unit
   val Array.iter : ('a -> unit) -> 'a array -> unit


Elles permettent donc d'appliquer une fonction *f : 'a -> unit* qui agit par effets de bords (e.g., affichage)
à **chaque élément** d'une liste (ou d'un tableau).

Pratique donc !

Une meilleure version ?
-----------------------
*Mais*… Souvent, on a besoin, en plus de la valeur ``x`` de chaque élément, de leur **indice** ``i``
(par exemple pour afficher "la case i contient x[i]" ou autre).

Donc, on aimerait aussi avoir des itérateurs du type suivant :

.. code-block:: ocaml

   val List.iteri : (int -> 'a -> unit) -> 'a list -> unit
   val Array.iteri : (int -> 'a -> unit) -> 'a array -> unit


Où désormais *f* prend en premier argument **l'indice correspondant à son deuxième argument**.
Très pratique pour éviter les boucles *for* !

.. note:: En Python… ?

   La syntaxe commune à tous les *itérateurs* permet d'éviter ça de toutes façons, e.g. :

   .. code-block:: python

      for i in [2*i for i in range(8)]:
          print i

   Et la fonction `enumerate <https://www.python.org/dev/peps/pep-0279/>`_ permet de faire ça aussi, en itérant sur ``i, xi``.


Deux fonctions qui ont tardées à venir
--------------------------------------
On constate que si *Array.iteri* a été codée en 1997 [#arraydiff]_,
son équivalent pour les listes *List.iteri* n'a été ajoutée **qu'en… 2010**
avec OCaml v4.00.1 ! (cf [#listdiff]_).


Quel est le problème ?
----------------------
Ces fonctions sont assez pratiques, donc souvent utilisés.

Dans le cadre des projets et autre exercices demandés par certains cours à l'`ENS Cachan <http://www.ens-cachan.fr/>`_,
il faut faire marcher son code sur (au moins) une machine de la *salle 411*, qui sont **vieilles** !

C'est ainsi qu'en décembre 2013, nous avions perdu quelques minutes (durant un examen oral !) à trouver la source du problème,
et inclure un petit *"patch"* v3.12 → v4.01.0 en ajoutant *à la main* le code de *List.iteri*
dans nos projets [#projet]_.

En particulier, ce lien [#patch]_ montre les modifications effectuées sur mon code lors
de la découverte de ce bug.

Bref, on aurait aimé les avoir plus tôt !
-----------------------------------------
Voilà un titre qui résume bien le message (inutile) de ce petit post.

------------------------------------------------------------------------------

.. rubric:: Références

.. [#arrayiter] :Documentation: `Array.iter <http://caml.inria.fr/pub/docs/manual-ocaml/libref/Array.html#VALiter>`_ dans la doc du module Array;

.. [#listiter] :Documentation: `List.iter <http://caml.inria.fr/pub/docs/manual-ocaml/libref/List.html#VALiter>`_ dans la doc du module List;

.. [#arraydiff] :Source: le `diff pour array.ml <http://caml.inria.fr/cgi-bin/viewvc.cgi/ocaml/release/4.01.0/stdlib/array.ml?r1=1740&r2=1741&>`_ qui a introduit *Array.iteri* (sur le *svn* de l'INRIA);

.. [#listdiff] :Source: le `diff pour list.ml <http://caml.inria.fr/cgi-bin/viewvc.cgi/ocaml/trunk/stdlib/list.ml?r1=10761&r2=10760&pathrev=10761>`_ qui a introduit *List.iteri* (sur le *svn* de l'INRIA);

.. [#projet] :Voir: le `rapport <http://perso.crans.org/besson/a/m/projet/rapport.html>`_ du projet **Laby** fait en décembre 2013 pour l'épreuve de modélisation de l'agrég;

.. [#patch] :Voir: le `commit <https://bitbucket.org/lbesson/agreg/diff/modelisation/projet/projet.ml?diff2=3318706bdc86&at=master>`_ rapportant la compatibilité avec OCaml v3.12.1 pour mon projet **Laby** (privé).

------------------------------------------------------------------------------

.. note:: *« Mais OCaml c'est nul non ? »*

   **Non**, faut pas écouter `ceux qui disent ça <http://sucre.syntaxique.fr/doku.php?id=ocaml>`_, OCaml c'est super !


.. (c) Lilian Besson, 2016, https://bitbucket.org/lbesson/web-sphinx/

.. meta::
   :description lang=en: List.iteri and Array.iteri in OCaml
   :description lang=fr: List.iteri et Array.iteri en OCaml

####################################
 List.iteri and Array.iteri in OCaml
####################################

.. note:: This is a small article about two very convenient function in the `OCaml language <http://ocamllang.org/>`_.

.. warning:: If the name OCaml does not ring a bell for you, this article will probably not interest you at all!

``List.iter`` and ``Array.iter``
--------------------------------
These are two very classical functions, from the modules *List* [#listiter]_ and *Array* [#arrayiter]_.

These functions are iterators of the following type:

.. code-block:: ocaml

   val List.iter : ('a -> unit) -> 'a list -> unit
   val Array.iter : ('a -> unit) -> 'a array -> unit


They allow to apply a certain function *f : 'a -> unit* which acts by side effects (e.g., printing)
to **each element** of a list or an array.

Very convenient!

A better version?
-----------------
*But*... quite often, we need more than just the value of ``x`` of each element, we might need their **index** ``i``
(for instance to print something like "the ith value contains x[i]").

So, we would like to have two other iterator functions with the following signature:

.. code-block:: ocaml

   val List.iteri : (int -> 'a -> unit) -> 'a list -> unit
   val Array.iteri : (int -> 'a -> unit) -> 'a array -> unit


Now, *f* accepts as first argument the **index** ``i`` corresponding to its second argument the **value** ``xi``.
That will be very convenient to avoid *for* loops!

.. note:: In Python... ?

   The common syntax for every *iterator* is already doing this, e.g. :

   .. code-block:: python

      for i in [2*i for i in range(8)]:
          print i

   And the `enumerate <https://www.python.org/dev/peps/pep-0279/>`_ function also allows to iterate on both index and value, ``i, xi``.


Two functions that took their time to appear
--------------------------------------------
We can check that *Array.iteri* has been implemented back in 1997 [#arraydiff]_,
but its straightforward equivalent for lists *List.iteri* has only been added **in... 2010**
with OCaml v4.00.1 ! (cf [#listdiff]_).


So what's the issue?
--------------------
These two functions are very useful, and so they are used a lot.

During some programming projects and exercises that were asked to me during some courses at `ENS Cachan <http://www.ens-cachan.fr/version-anglaise/>`_,
I have been ask to make my OCaml code work on at least a machine in *room 411*, machines which were old at this time!

And that's why in December 2013, we lost a few minutes (during an oral exam) trying to find the source of a bug,
and I included a tiny *"patch"* v3.12 → v4.01.0 which adds manually the code for *List.iteri*
in my project [#projet]_.

In particular, this link [#patch]_ shows the different modifications on my code, after I saw this bug.

Anyway, we would have liked to get them before!
-----------------------------------------------
That's basically what this (useless) article was about.

------------------------------------------------------------------------------

.. rubric:: References

.. [#arrayiter] :Documentation: `Array.iter <http://caml.inria.fr/pub/docs/manual-ocaml/libref/Array.html#VALiter>`_ in the doc of the Array module;

.. [#listiter] :Documentation: `List.iter <http://caml.inria.fr/pub/docs/manual-ocaml/libref/List.html#VALiter>`_ in the doc of the List module;

.. [#arraydiff] :Source: the `diff on array.ml <http://caml.inria.fr/cgi-bin/viewvc.cgi/ocaml/release/4.01.0/stdlib/array.ml?r1=1740&r2=1741&>`_ which introduced the *Array.iteri* function (on the INRIA's *svn* repository);

.. [#listdiff] :Source: the `diff on list.ml <http://caml.inria.fr/cgi-bin/viewvc.cgi/ocaml/trunk/stdlib/list.ml?r1=10761&r2=10760&pathrev=10761>`_ which introduced the *List.iteri* function (on the INRIA's *svn* repository);

.. [#projet] :Cf.: the `written report (in French) <http://perso.crans.org/besson/a/m/projet/rapport.html>`_ for the tiny **Laby** project implemented in December 2013, as a training for the computer-science oral exam for the highly competitive french national exam to become a prep' school professor ("agrégation");

.. [#patch] :Cf.: the `commit <https://bitbucket.org/lbesson/agreg/diff/modelisation/projet/projet.ml?diff2=3318706bdc86&at=master>`_ reporting compatibility with OCaml v3.12.1 for my **Laby** project (private).

------------------------------------------------------------------------------

.. note:: *« But OCaml is lame isn't it? »*

   **No**, do not listen to `people saying this <http://sucre.syntaxique.fr/doku.php?id=ocaml>`_, OCaml is awesome!


.. (c) Lilian Besson, 2016, https://bitbucket.org/lbesson/web-sphinx/

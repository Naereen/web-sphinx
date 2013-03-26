################################
 Un toplevel ``OCaml`` embarqué
################################

Je teste ici la fonctionnalité "expérimentale" d'embarquer des
scripts (en **Javascript**) dans des pages webs générées avec **Sphinx**.

.. warning::

   À priori, cette superbe page devrait 
   **fonctionner sur n'importe quel navigateur**,
   pour peu :green:`qu'il supporte Javascript` !

------------------------------------------------------------------------------

Le toplevel
-----------

.. raw:: html

   <script type="text/javascript" src="_static/toplevel.js"></script>
   <noscript><span style="color:red" align="center">
   Attention: votre navigateur semble ne pas supporter Javascript !</span>
   </noscript>
   <div id="toplevel" align=left></div>

------------------------------------------------------------------------------

À propos
--------
Comme dans `.special.rst <_sources/.special.txt>`_,
j'utilise la directive ``.. raw:: html`` pour
**embarquer du code** ``HTML`` dans la page produite par **Sphinx**.

:cyan:`C'est simple, c'est propre.`

J'utilise aussi une balise ``HTML`` appelée ``noscript``,
qui, le cas échéant, permet de signaler à l'utilisateur que son navigateur ne
supporte pas Javascript.

.. todo::

   Voir pourquoi le focus de la page va en bas dès qu'on utilise le toplevel.

.. todo:: Passer à OCaml 4.00.1 ?

Hébergements
------------

Les scripts **Javascript** utilisés sur mes pages sont désormais
hébergé sur ce dépot git : `lbesson/web-sphinx-scripts 
<https://bitbucket.org/lbesson/web-sphinx-scripts>`_.

Copyrights
----------
 i) **OCaml** est © et ® Inria, et est publié sour la licence MIT.

 ii) **toplevel.js** est obtenu par le compilateur **js_of_ocaml**.
     Pour plus d'infos, voir `ocsigen.org/js_of_ocaml 
     <http://www.ocsigen.org/js_of_ocaml/>`_.


Remerciements
-------------
 i) Merci aux auteurs de **js_of_ocaml** (voir `ocsigen.org/js_of_ocaml`_).

 ii) Merci aux auteurs d'**OCaml**.

 iii) Merci aux auteurs de **TryOCaml** (`try.ocamlpro.com <http://try.ocamlpro.com/>`_).
      La page de référence pour ces morceaux de code est 
      `github.com/OCamlPro/tryocaml <https://github.com/OCamlPro/tryocaml>`_.


.. include:: .bottom.fr.rst
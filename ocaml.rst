################################
 Un toplevel ``OCaml`` embarqué
################################

 Je teste ici la fonctionnalité "expérimentale" d'embarquer des
 scripts (en **Javascript**) dans des pages webs générées avec **Sphinx**.

 En l'occurrence, le script que j'aimerais embarquer est 
 `toplevel.js <_static/toplevel.js>`_.

.. warning::

   Cette page est :red:`en construction`.

   À priori, elle devrait fonctionner sur n'importe quel navigateur.

------------------------------------------------------------------------------

Le toplevel
-----------

.. raw:: html

   <script type="text/javascript" src="toplevel.js"></script>
   <body id="toplevel">
   </body>

------------------------------------------------------------------------------

.. rubric:: Copyrights

 i) **OCaml** est © et ® Inria, et est publié sour la licence
MIT.

 ii) **toplevel.js** est obtenu par le compilateur **js_of_ocaml**.
     Pour plus d'infos, voir `ocsigen <http://www.ocsigen.org/js_of_ocaml/>`_.

.. rubric:: Remerciements

 i) Merci aux auteurs de **js_of_ocaml**.

 ii) Merci aux auteurs d'**OCaml**.

 iii) Merci aux auteurs de **TryOCaml** (`try.ocamlpro.com <http://try.ocamlpro.com/>`_).
      La page de référence pour ces morceaux de code est 
      `github.com/OCamlPro/tryocaml <https://github.com/OCamlPro/tryocaml>`_.

.. include:: .bottom.fr.rst
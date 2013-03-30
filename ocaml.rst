####################################
 Un **toplevel** ``OCaml`` embarqué
####################################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

Le toplevel
-----------

.. raw:: html

   <script type="text/javascript" src="_static/toplevel.js"></script>
   <div align=center>
   <div id="toplevel" align=left>
   <script>window.alert("~~~ Le terminal OCaml (3.12.1) semble bien initialisé ! ~~~")</script>
   </div></div>

.. image:: .ocaml-powered.png
   :scale: 130 %
   :align: center
   :alt: OCaml powered :)
   :target: http://caml.inria.fr

------------------------------------------------------------------------------

.. seealso::

   Try Ocaml
      La page `<try-ocaml.html>`_ présente **Try OCaml**, directement copié
      depuis `try.ocamlpro.com <http://try.ocamlpro.com>`_, qui présente les 
      avantages suivants :
      
       * version d'OCaml à jour (4.00.1);
       * leçons intéractives en français ou en anglais;
       * support du "drag & drop" de fichiers;
       * permet de télécharger l'historique des entrées;
       * etc


À propos
--------
Comme dans `.special.rst <_sources/.special.txt>`_,
j'utilise la directive ``.. raw:: html`` pour
**embarquer du code** ``HTML`` dans la page produite par **Sphinx**.
:blue:`C'est simple, c'est propre.`

.. todo::

   Voir pourquoi le focus de la page va en bas dès qu'on utilise le toplevel.

.. todo:: Passer à OCaml 4.00.1 ?

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts 
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
 * **OCaml** est © et ® Inria, et est publié sour la licence MIT.

 * **toplevel.js** est obtenu par le compilateur **js_of_ocaml**.
     Pour plus d'infos, voir `ocsigen.org/js_of_ocaml 
     <http://www.ocsigen.org/js_of_ocaml/>`_.

Remerciements
-------------
 * Merci aux auteurs de **js_of_ocaml** (voir `ocsigen.org/js_of_ocaml`_).

 * Merci aux auteurs d'**OCaml**.

 * Merci aux auteurs de **TryOCaml** (`try.ocamlpro.com <http://try.ocamlpro.com/>`_).
   La page de référence pour ces morceaux de code est 
   `github.com/OCamlPro/tryocaml <https://github.com/OCamlPro/tryocaml>`_.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
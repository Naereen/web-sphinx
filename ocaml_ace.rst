###############################################
 Un **toplevel** ``OCaml`` embarqué (avec ACE)
###############################################
.. include:: .special.rst
.. include:: .javascript.rst
.. warning:: Encore expérimental !
------------------------------------------------------------------------------

Le toplevel
-----------
.. raw:: html

   <script type="text/javascript" src="_static/toplevel.js"></script>
   <div align="center">
   <div id="toplevel" align="left">
   <textarea id="textarea"
    style="position: relative; font-size: 22pt; height: 700px; width: 100%"
   >(* Un exemple en OCaml, le même que celui du Toplevel OCaml intégré *)
   let x = 10+10;;
   let y = x * 3;;
   String.make x 'a';;
   sin 1.;;
   let rec fact n =
     if n = 0
     then 1.
     else float n *. fact (n - 1)
   ;;
   fact 20;;
   </textarea>
   <script type="text/javascript" src="_static/ace_ocaml.js"></script>
   <script type="text/javascript">window.alert("~~~ Le terminal OCaml (3.12.1) semble bien initialisé ! ~~~")</script>
   </div></div>

------------------------------------------------------------------------------

.. warning::

   Pour le moment, un de mes scripts (en Bash) modifie le contenu de la page
   après sa génération pour ajouter (à la main) un ``id="textarea"`` au bloc
   ``textarea`` correspondant à l'entrée du toplevel.

.. image:: .ocaml-powered.png
   :scale: 130 %
   :align: center
   :alt: OCaml powered :)
   :target: http://caml.inria.fr

------------------------------------------------------------------------------

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts 
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
 * **OCaml** est © et ® INRIA;

 * **toplevel.js** est obtenu par le compilateur **js_of_ocaml**.
     Pour plus d'infos, voir `ocsigen.org/js_of_ocaml 
     <http://www.ocsigen.org/js_of_ocaml/>`_.

Remerciements
-------------
 * Merci aux auteurs de **js_of_ocaml** (voir `ocsigen.org/js_of_ocaml`_);

 * Merci aux auteurs d'**OCaml**;

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
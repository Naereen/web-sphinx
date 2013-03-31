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
   <div align="center">
   <div id="toplevel" align="left">
   <script type="text/javascript">window.alert("~~~ Le terminal OCaml (3.12.1) semble bien initialisé ! ~~~")</script>
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

.. warning::

   Cette version du toplevel n'est pas à jour.
   
   Et je n'ai pas réussi à la recompiler. Il semblerait que le dossier 'toplevel'
   distribué dans l'archive de js_of_ocaml ne soit pas à jour (dernière modification
   il y a 14 mois, or la dernière version d'OCaml (4.00.1) est sortie en Octobre).
   
   Et je n'ai ni le temps ni l'envie de le modifier.
   
   C'est bête, j'aurais bien aimé ajouter des ``id="input"`` à l'entrée,
   pour permettre de l'éditer avec **ACE**, ou alors régler le bug qui scroll
   vers le bas lors de l'appuis du bouton "Send".
   
   Dommage !

Un exemple de programme OCaml
-----------------------------
 Le toplevel se charge avec les quelques lignes suivantes dans son *buffer*
 d'entrée :

.. code-block:: ocaml

   let x = 10+10;;
   let y = x * 3;;
   String.make x 'a';;
   sin 1.;;
   let rec fact n = if n = 0 then 1. else float n *. fact (n - 1);;
   fact 20;;


À propos
--------
 Comme dans `.special.rst <_sources/.special.txt>`_,
 j'utilise la directive ``.. raw:: html`` pour
 **embarquer du code** ``HTML`` dans la page produite par **Sphinx**.
 :blue:`C'est simple, c'est propre.`

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
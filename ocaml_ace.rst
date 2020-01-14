#########################################################
 Un **toplevel** ``OCaml`` embarqué (avec l'éditeur ACE)
#########################################################

.. include:: .javascript.fr.rst

------------------------------------------------------------------------------

Le toplevel
-----------

.. warning:: Ne marche pas encore :( !

.. raw:: html

   <h4>Toplevel OCaml 3.12.1 avec l'éditeur ACE</h4>
   <style type="text/css" media="screen">
    #toplevel {
        font-family: monospace;
        font-size: 18px;
        position: relative;
        height: 450px;
        width: 90%;
        margin-left: 40px;
    }
   </style>
   <script type="text/javascript" src="_static/toplevel.js"></script>
   <div align="center"><div id="toplevel" align="left"></div></div>
   <script src="_static/ace-new/ace.js" type="text/javascript" charset="utf-8"></script>
   </br>
   <script type="text/javascript">
    window.alert("~~~ Le terminal OCaml (3.12.1) commence à s'initialiser… ~~~");
    $(document).ready(function() {
   // window.onload = function() {
       // Launch ACE
      var editor = ace.edit("toplevel");
       // ACE Option. See http://ace.c9.io/#nav=howto for more options.
       editor.setTheme("ace/theme/cobalt");
       editor.getSession().setMode("ace/mode/ocaml");
       editor.getSession().setTabSize(8);
       editor.getSession().setUseWrapMode(true);
       editor.setHighlightActiveLine(true);
       editor.setShowPrintMargin(false);
       editor.setReadOnly(false);  // true to make it non-editable
      var output = document.getElementById('output');
      // Skulpt buttons stuff.
      var cleanin = document.getElementById('cleanin');
        cleanin.value = "Efface l'entrée";
        cleanin.disabled = false;
        cleanin.onclick = function() {
          var tmpvalue = editor.getValue();
          editor.setValue("");
          window.alert("Zone d'édition vidée ! Ancien contenu :\n" + tmpvalue);
        };
      var cleanout = document.getElementById('cleanout');
        cleanout.value = "Efface la sortie";
        cleanout.disabled = false;
        cleanout.onclick = function() {
          var output = document.getElementById('output');
          var tmpvalue = output.value;
          output.value = "";
          window.alert("Sortie du toplevel vidée ! Ancien contenu :\n" + tmpvalue);
      };
     // Done !
   // };
    });
    $(document).ready(function() {
      window.alert("~~~ Le terminal OCaml (3.12.1) semble bien initialisé ! ~~~");
    });
   </script>
   </br></br>
   <input disabled="disabled" id="cleanin" type="button" class="btn btn-success" onclick="editor.setValue('');" value="Chargement…" style="margin: auto;" />
   <input disabled="disabled" id="cleanout" type="button" class="btn btn-warning" onclick="output.value=''" value="Chargement…" style="margin: auto;" />
   </br></br>


.. Ceci est un commentaire inutile.


+----------------------------------+-------------------------------+
| .. image:: .ocaml-powered.png    | .. image:: .ace-powered.png   |
|    :scale: 130 %                 |    :scale: 40 %               |
|    :align: right                 |    :align: left               |
|    :alt: OCaml powered :)        |    :alt: ACE powered :)       |
|    :target: http://Caml.Inria.fr |    :target: http://ACE.C9.io/ |
+----------------------------------+-------------------------------+

------------------------------------------------------------------------------

.. seealso::

   Try Ocaml
      La page `<try-ocaml.fr.html>`_ présente **Try OCaml**, directement copié
      depuis `try.ocamlpro.com <http://try.ocamlpro.com>`_, qui présente les
      avantages suivants :

       * version d'OCaml à jour (4.00.1);
       * leçons intéractives en français ou en anglais;
       * support du "drag & drop" de fichiers;
       * permet de télécharger l'historique des entrées;


.. warning::

   Cette version du toplevel n'est pas à jour.

   Et je n'ai pas réussi à la recompiler. Il semblerait que le dossier 'toplevel'
   distribué dans l'archive de js_of_ocaml ne soit pas à jour (dernière modification
   il y a plusieurs années, or la dernière version d'OCaml (4.00.1) est sortie en Octobre).

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

   let x = 50+10;;
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
 * **OCaml** est © et ® Inria;
 * **toplevel.js** est obtenu par le compilateur **js_of_ocaml**.
     Pour plus d'infos, voir `<http://www.ocsigen.org/js_of_ocaml/>`_.

Remerciements
-------------
 * Merci aux auteurs de **js_of_ocaml** (voir `<http://ocsigen.org/js_of_ocaml>`_);
 * Merci aux auteurs d'**OCaml** (voir `<http://OCaml.org/>`_);


.. (c) Lilian Besson, 2011-2020, https://bitbucket.org/lbesson/web-sphinx/

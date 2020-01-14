##############################
 Un éditeur de texte intégré
##############################

.. include:: .javascript.fr.rst

------------------------------------------------------------------------------

Avertissements
--------------
.. warning:: Nécessite une connexion Internet active.

   :red:`Attention, pour le moment`, j'utilise un miroir, proposé par les
   développeurs d'**ACE**. Par contre, ça empèche d'utiliser la page *localement*.


.. seealso::

   Démonstration plus complète
      La page `<ace.html>`_ présente une démo plus complète de cet éditeur,
      avec notamment :

       * un onglet permettant de changer les paramètres;
       * un stockage local donc indépendant d'un service annexe (et plus rapide il me semble);
       * une traduction française de l'onglet des paramètres.

------------------------------------------------------------------------------

L'éditeur **ACE**
-----------------

.. raw:: html

   <textarea id="editor" style="position: relative; font-size: 21pt; height: 700px; width: 100%;" >
   (* Un exemple en OCaml, le même que celui du Toplevel OCaml intégré *)
   let x = 10+10;;
   let y = x * 3;;
   String.make x 'a';;
   sin 1.;;
   let rec fact n = if n = 0 then 1. else float n *. fact (n - 1);;
   fact 20;;
   </textarea>
   <script src="http://d1n0x3qji82z53.cloudfront.net/src-min-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
   <script type="text/javascript">
   var editor = ace.edit("editor");
    editor.setTheme("ace/theme/twilight");
    editor.getSession().setMode("ace/mode/ocaml");
    editor.setShowInvisibles(true);
    editor.setPrintMarginColumn(79);
    editor.setShowPrintMargin(true);
    editor.setShowFoldWidgets(true);
    editor.getSession().setUseWrapMode(true);
    editor.setHighlightActiveLine(false);
   window.alert("~~~ L'éditeur de texte ACE semble être bien initialisé ~~~")
   </script>

------------------------------------------------------------------------------

À propos
--------
 Comme dans `.special.rst <_sources/.special.txt>`_,
 j'utilise la directive ``.. raw:: html`` pour
 **embarquer du code** ``HTML`` dans la page produite par **Sphinx**.
 :blue:`C'est simple, c'est propre.`

Copyrights
----------
 **ACE** est © et ® d'AjaxOrg.
 Voir la page officielle du projet, `ajaxorg.github.io/ace
 <http://ajaxorg.github.io/ace/#about>`_.

.. (c) Lilian Besson, 2011-2020, https://bitbucket.org/lbesson/web-sphinx/

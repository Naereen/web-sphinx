##############################
 Un éditeur de texte intégré
##############################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

L'éditeur **ACE**
-----------------

.. warning:: Nécessite une connexion Internet active.

   :red:`Attention, pour le moment`, j'utilise un miroir, proposé par les
   développeurs d'**ACE**, afin d'"accélérer le chargement" (d'après eux).
   Par contre, ça empèche d'utiliser la page *localement*.
   
   Mais je suis en train d'améliorer ça !
   Vous pouvez m'aider via mon dépôt public `lbesson/web-sphinx-scripts
   <https://bitbucket.org/lbesson/web-sphinx-scripts/>`_ !

.. seealso::

   Démonstration plus complète
      La page `Kitchen-Sink <http://ace.ajax.org/build/kitchen-sink.html>`_
      présente une démo plus complète de l'éditeur **ACE**.

.. raw:: html

   <style type="text/css" media="screen">
    #editor {
      position:  relative;
      font-size: 21pt;
      height:    700px;
      width:     100%;
    }
   </style>
   <div id="editor">let x = 10+10;;
   let y = x * 3;;
   String.make x 'a';;
   sin 1.;;
   let rec fact n = if n = 0 then 1. else float n *. fact (n - 1);;
   fact 20;;
   </div>
   <script src="_static/ace.js" type="text/javascript" charset="utf-8"></script>
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

.. todo:: Trouver un moyen d'enregistrer le fichier édité !
.. todo:: Trouver un moyen d'utiliser cet "éditeur" pour les toplevel OCaml, Python et GNU Plot.
.. todo:: Stocker localement le script !
.. todo:: Embarquer les contrôles, notamment ceux permettant de régler le mode d'édition.

Copyrights
----------
 **ACE** est © et ® d'AjaxOrg.
 Voir la page officielle du projet, `ajaxorg.github.com/ace
 <http://ajaxorg.github.com/ace/#nav=about>`_.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
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

.. raw:: html

   <style type="text/css" media="screen">
   #editor {
    position: relative;
    font-size: 20pt;
    height: 700px;
    width: 100%;
   }
   </style>
   <div id="editor">#!/usr/bin/env python
   #-*- encoding: utf-8 -*-
   def foo(items):
     x = "Ceci est un exemple"
     return(x)
   # Voilà un bête exemple en Python
   import sys
   from random import *
   foo(sys.stderr)</div>
   <script src="http://d1n0x3qji82z53.cloudfront.net/src-min-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
   <script src="_static/ace.js" type="text/javascript" charset="utf-8"></script>
   <script>
   var editor = ace.edit("editor");
   editor.setTheme("ace/theme/twilight");
   editor.getSession().setMode("ace/mode/python");
   editor.setShowInvisibles(true);
   editor.setPrintMarginColumn(79);
   editor.setShowPrintMargin(true);
   editor.setShowFoldWidgets(true);
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
.. todo:: Stocker localement le script !!

Copyrights
----------
 **ACE** est © et ® d'AjaxOrg.
 Voir la page officielle du projet, `ajaxorg.github.com/ace
 <http://ajaxorg.github.com/ace/#nav=about>`_.

.. include:: .bottom.fr.rst
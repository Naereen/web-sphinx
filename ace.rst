##############################
 Un éditeur de texte intégré
##############################
.. include:: .special.rst

.. warning:: Cette page n'est pas terminée !

.. important::

   À priori, cette page devrait 
   **fonctionner sur n'importe quel navigateur**,
   pour peu :green:`qu'il supporte Javascript` !

------------------------------------------------------------------------------

L'éditeur
---------

.. raw:: html

   <style type="text/css" media="screen">
   #editor {
    position: relative;
    height: 600px;
    width:  100%;
   }
   </style>
   <noscript><span style="color:red" align="center">
   Attention: votre navigateur semble ne pas supporter Javascript !</span>
   </noscript>
   <div id="editor">#!/usr/bin/env python
   #-*- encoding: utf-8 -*-
   def foo(items):
     x = "Ceci est un exemple"
     return(x)
   # Voilà un bête exemple en Python
   import sys
   from random import *
   foo(sys.stderr)</div>
   <script src="_static/ace.js" type="text/javascript" charset="utf-8"></script>
   <script>
   var editor = ace.edit("editor");
   editor.setFontSize(18);
   editor.setTheme("ace/theme/twilight");
   editor.getSession().setMode("ace/mode/python");
   editor.setShowInvisibles(true);
   editor.setPrintMarginColumn(79);
   editor.setShowPrintMargin(true);
   editor.setShowFoldWidgets(true);
   editor.setFontSize(18);
   window.alert("~~~ ACE Text Editor is well initialized ~~~")
   </script>

------------------------------------------------------------------------------

À propos
--------
Comme dans `.special.rst <_sources/.special.txt>`_,
j'utilise la directive ``.. raw:: html`` pour
**embarquer du code** ``HTML`` dans la page produite par **Sphinx**.

:blue:`C'est simple, c'est propre.`

J'utilise aussi une balise ``HTML`` appelée ``noscript``,
qui, le cas échéant, permet de signaler à l'utilisateur que son navigateur ne
supporte pas Javascript.

.. todo::
   Embarquer le script "ace.js" localement. Utilise Amazon Cloud, 
   pour le moment, et ça ne me va pas.

.. todo:: Trouver un moyen d'enregistrer le fichier édité !

.. todo:: Trouver un moyen d'utiliser cet "éditeur" pour les toplevel OCaml, Python et GNU Plot.

Copyrights
----------
 **ACE** est © et ® d'AjaxOrg.
 Voir la page officielle du projet, `ajaxorg.github.com/ace
 <http://ajaxorg.github.com/ace/#nav=about>`_.

.. include:: .bottom.fr.rst
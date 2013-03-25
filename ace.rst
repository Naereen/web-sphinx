##############################
 Un éditeur de texte intégré
##############################

Je teste ici la fonctionnalité "expérimentale" d'embarquer des
scripts (en **Javascript**) dans des pages webs générées avec **Sphinx**.

.. warning::

   À priori, cette superbe page devrait 
   **fonctionner sur n'importe quel navigateur**,
   pour peu :green:`qu'il supporte Javascript` !

------------------------------------------------------------------------------

L'éditeur
---------

.. raw:: html

    <style type="text/css" media="screen">
    #editor {
     position: absolute;
     top: 0;
     right: 0;
     bottom: 0;
     left: 0;
    }
    </style>
   <noscript><span style="color:red" align="center">
   Attention: votre navigateur semble ne pas supporter Javascript !</span>
   </noscript>
    <div id="editor">
    #!/usr/bin/env python
    #-*- encoding: utf-8 -*-
    def foo(items):
      x = "Ceci est un exemple"
      return(x)
    # Voilà un bête exemple en Python
    }</div>
    <script src="http://d1n0x3qji82z53.cloudfront.net/src-min-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
    <script>
    var editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.getSession().setMode("ace/mode/python");
    </script>

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

.. todo:: Conclure !

.. todo::
   Embarquer le script “ace.js” localement. Utilise Amazon Cloud, 
   pour le moment, et ça ne me va pas.

.. todo:: Trouver un moyen d'enregistrer le fichier édité !

Copyrights
----------
**ACE** est © et ® AjaxOrg. Voir la page officielle du projet, 
`ajaxorg.github.com/ace <http://ajaxorg.github.com/ace/#nav=about>`_.

.. include:: .bottom.fr.rst
#####################################
 Un **toplevel** ``Python`` embarqué
#####################################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

Le toplevel
-----------
.. warning:: Semble incompatible avec Android, allez plutôt voir `<skulpt.html>`_ !

.. warning:: Est cassé (en ce moment) !

.. raw:: html

   <h4>Toplevel Python 2.7.2 avec l'éditeur ACE</h4>
   <style type="text/css" media="screen">
    #editor { 
        font-family: monospace;
        font-size: 18px;
        position: relative;
        height: 450px;
        width: 90%;
        margin-left: 40px;
    }
   </style>
   <pre id="editor">
   # Une démonstration de python.js, utilisant l'éditeur ACE.js :) !
   print 'Bonjour, le monde !'
   print {i: i**9 for i in range(8)}  # dictionnaire en compréhension
   print {i*6 for i in range(8)}  # ensemble en compréhension
   # Un exemple, comme celui pour OCaml
   def factorial(n):
     if n == 0: return 1
     else: return n * factorial(n - 1)
   print factorial(11)
   # Dernier exemple, montre la version
   import sys, os
   print "Version: %s" % sys.version
   print "Dossier courant: %s" % os.getcwd()
   # Ajoutez votre propre commande Python :
   </pre>
   <!-- Load ACE Text Editor (new version) -->
   <script src="_static/ace-new/ace.js" type="text/javascript" charset="utf-8"></script>
   <script>
   // Launch ACE
   var editor = ace.edit("editor");
   // ACE Option. See http://ace.c9.io/#nav=howto for more options.
   editor.setTheme("ace/theme/cobalt");
   editor.getSession().setMode("ace/mode/python");
   editor.getSession().setTabSize(4);
   editor.getSession().setUseWrapMode(true);
   editor.setHighlightActiveLine(true);
   editor.setShowPrintMargin(false);
   editor.setReadOnly(false);  // true to make it non-editable
   // Python Toplevel stuff.
    function start() {
     var output = document.getElementById('output')
       , button = document.getElementById('button')
       , cleanin = document.getElementById('cleanin')
       , cleanout = document.getElementById('cleanout')
       , worker = new Worker('_static/python/worker.js')
       , loaded = false
       , handler = function (e) {
         if (!loaded) {
           loaded = true;
           button.value = "Exécute le code courant";
           cleanin.value = "Efface l'entrée";
           cleanout.value = "Efface la sortie";
           button.disabled = false;
           cleanin.disabled = false;
           cleanout.disabled = false;
           window.alert("~~~ Le terminal Python (2.7.2) semble bien initialisé ! ~~~");
           return;
         }
         output.value += e.data;
      };
      worker.addEventListener('message', handler, false);
      // Boutons
      button.onclick = function() {
        worker.postMessage(editor.getValue());
        window.alert("Interprétation en cours de :\n" + editor.getValue());
      };
      cleanin.onclick = function() {
        var tmpvalue = editor.getValue();
        editor.setValue("");
        window.alert("Zone d'édition vidée ! Ancien contenu :\n" + tmpvalue);
      };
      cleanout.onclick = function() {
        var output = document.getElementById('output');
        var tmpvalue = output.value;
        output.value = "";
        window.alert("Sortie du toplevel vidée ! Ancien contenu :\n" + tmpvalue);
      };
   };
   window.onload = start;
   </script>

   <input disabled="disabled" id="button" type="button" value="Chargement..." style="margin: auto" />
   <input disabled="disabled" id="cleanin" type="button" onclick="editor.setValue('');" value="Chargement..." style="margin: auto" />

   <h4>Sortie du toplevel :</h4>
   <textarea id="output" style="font-family: monospace; width: 100%" rows="8" cols="80"></textarea>
   <input disabled="disabled" id="cleanout" type="button" onclick="output.value=''" value="Chargement..." style="margin: auto" />


+--------------------------------+-------------------------------+
| .. image:: .python-powered.png | .. image:: .ace-powered.png   |
|    :scale: 120 %               |    :scale: 40 %               |
|    :align: right               |    :align: left               |
|    :alt: Python powered :)     |    :alt: ACE powered :)       |
|    :target: http://python.org  |    :target: http://ace.c9.io/ |
+--------------------------------+-------------------------------+

------------------------------------------------------------------------------

.. seealso::

   Skulpt (`<skulpt.html>`_)
      Skulpt est une autre implémentation en *JavaScript* de Python.
      Il semble aussi posséder un genre d'interface graphique :) !

   SymPy Live (`<http://live.sympy.org/>`_)
      Est encore un autre terminal Python s'exécutant dans un navigateur.
      Avec SymPy installé (calcul symbolique en Python), et en interprétant
      la sortie de SymPy comme du code LaTeX, rendu avec MathJax.

Libraire standard
-----------------
En utilisant un débuggeur JavaScript, comme `FireBug
<https://getfirebug.com/whatisfirebug>`_, il est possible de voir les appels
aux fichiers de la librairie Python.
 
Ils sont stockés dans ce dossier `<_static/python/lib/python2.7/>`_ :)

Autres pages
------------
Ce terminal est aussi disponible ici `<_static/python/index.html>`_, mais avec l'apparence la plus simpliste.

Par ailleurs, le sous dossier `<python-doc/>`_ contient une copie locale de la documentation de **Python 2.7.3**.

À propos
--------
Comme dans `.special.rst <_sources/.special.txt>`_, j'utilise la directive ``.. raw:: html`` pour
**embarquer du code** ``HTML`` dans la page produite par **Sphinx**. :navy:`C'est simple, c'est propre.`

Hébergements
------------
Les scripts **Javascript** utilisés sur mes pages sont hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts 
<https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
Le **toplevel** Python embarqué ici est implémenté en **Javascript**,
et vient du projet Empythoned (voir cette page 
`github.com/replit/empythoned <https://github.com/replit/empythoned>`_)
pour plus de détails.

.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
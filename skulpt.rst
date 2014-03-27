##########################################################
 Un **toplevel** ``Python`` embarqué (version **Skulpt**)
##########################################################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

Le toplevel
-----------

.. warning:: Est cassé (en ce moment) !

.. warning::

   Utilise une balise ``canvas``, donc non compatible XHTML 1.0 Transitionnal !
   :red:`Cette page n'est pas bien formée.`
   
   Et elle nécessite donc un navigateur compatible HTML 5.
   
   Malgré ça, cette version de l'interprète Python semble plus accessible que
   la première mise en place (`<python.html>`_), en particulier **Skulpt**
   semble plus compatible avec les navigateurs des smartphones (si ce n'est
   pas votre cas, un retour ou une remarque me ferait plaisir, voir
   `<index.html>`_ pour me contacter !).

------------------------------------------------------------------------------

.. raw:: html

   <h4>Toplevel Python 2.7.3 Skulpt avec l'éditeur ACE</h4>
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
   # Une démonstration de skulpt.js, utilisant l'éditeur ACE.js :) !
   print("Démonstration du module turtle en cours :) !")
   import turtle
   t = turtle.Turtle()
   for c in ['red', 'green', 'yellow', 'blue']:
       t.color(c)
       t.forward(75)
       t.left(90)
   t.forward(75)
   for c in ['red', 'green', 'yellow', 'blue']:
       t.color(c)
       t.forward(75)
       t.right(90)
   # Ajoutez votre propre commande Python :
   </pre>
   </br>
   <script src="_static/skulpt.js?1" type="text/javascript"></script>
   <script src="_static/builtin.js?1" type="text/javascript"></script>
   <script src="_static/ace-new/ace.js?1" type="text/javascript" charset="utf-8"></script>

   <input disabled="disabled" id="button" type="button" value="Chargement..." style="margin: auto" onclick="window.alert(\"Nothing :(...\")" />
   <input disabled="disabled" id="cleanin" type="button" onclick="editor.setValue('');" value="Chargement..." style="margin: auto" />
   </br>
   <h4>Sortie du toplevel :</h4>
   <textarea id="output" style="font-family: monospace; width: 100%" rows="8" cols="80"></textarea>
   <input disabled="disabled" id="cleanout" type="button" onclick="output.value=''" value="Chargement..." style="margin: auto" />
   </br></br>
   <canvas id="mycanvas"
           style="border-style: solid;" width="400" height="400">
    Il semblerait que votre navigateur ne supporte pas la balise canvas.
    La sortie graphique via le module ''turtle'' est donc non disponible !
   </canvas></br></br>

   <script type="text/javascript">
   // $(document).ready(function() {
    window.onload = function() {
       window.alert("~~~ Le terminal Python (2.7.3) commence à s'initialiser... ~~~");
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
       var output = document.getElementById('output');
      // Skulpt I/O stuff
       function outf(text) {
          window.alert("Écriture de '" + text + "' en sortie.");
          output.innerHTML = output.innerHTML + text;
       };
       function builtinRead(x) {
          if (Sk.builtinFiles === undefined || Sk.builtinFiles["files"][x] === undefined)
          throw "File not found: '" + x + "'";
          return Sk.builtinFiles["files"][x];
       };
       function runit() {
          var prog = editor.getValue();
          window.alert("Interprétation en cours de :\n" + prog);
          output.innerHTML = '';
          Sk.canvas = "mycanvas";
          Sk.pre = "output";
          Sk.configure({output:outf, read:builtinRead});
          eval(Sk.importMainWithBody("<stdin>", false, prog));
          window.alert("Interprétation terminée. Résultat:\n" + output.value);
      };
      // Skulpt buttons stuff.
      var button = document.getElementById('button');
        button.value = "Exécute le code courant";
        button.disabled = false;
        button.onclick = function() {
          window.alert("Interprétation commencée...");
          runit();
        };
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
       window.alert("~~~ Le terminal Python (2.7.3) semble bien initialisé ! ~~~");
     };
   // });
   </script>


+--------------------------------+-------------------------------+ 
| .. image:: .python-powered.png | .. image:: .ace-powered.png   |   
|    :scale: 120 %               |    :scale: 40 %               |
|    :align: right               |    :align: left               |
|    :alt: Python powered :)     |    :alt: ACE powered :)       |
|    :target: http://python.org  |    :target: http://ace.c9.io/ |
+--------------------------------+-------------------------------+

------------------------------------------------------------------------------

.. warning:: Les modules sys et os ne sont pas disponibles.

.. seealso::

   `Python Emscripten <python.html>`_
      Cette page intègre une autre implémentation en *JavaScript* de Python.
      Compilée à partir du compilateur Emscripten (bytecode → JavaScript).

.. seealso::

   `SymPy Live <http://live.sympy.org/>`_
      Est encore un autre terminal Python s'exécutant dans un navigateur.
      Avec SymPy installé (calcul symbolique en Python), et en interprétant
      la sortie de SymPy comme du code LaTeX, rendu avec MathJax.

Autres pages
------------
 Le premier terminal **Python** que j'ai intégré dans mes pages est là
 `<python.html>`_.

.. Par ailleurs, le sous dossier `<python-doc/>`_ contient une copie locale de la documentation de **Python 2.7.3**.

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts 
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
 Le **toplevel** Python embarqué ici vient du projet *Skulpt*,
 dont la page principale est `www.skulpt.org <http://www.skulpt.org/>`_.

.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
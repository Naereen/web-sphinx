##########################################################
 Un **toplevel** ``Python`` embarqué (version **Skulpt**)
##########################################################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

La boucle itérative (**toplevel**)
----------------------------------

.. warning:: Compatibilité HTML5 requise !
   
   Et elle nécessite donc `un navigateur compatible HTML 5 <http://html5test.com/>`_ 
   (voir aussi `html5readiness.com <http://html5readiness.com>`_)
   
   Malgré ça, cette version de l'interprète Python semble plus accessible que
   la première mise en place (`<python.html>`_), en particulier **Skulpt**
   semble plus compatible avec les navigateurs des smartphones (si ce n'est
   pas votre cas, un retour ou une remarque me ferait plaisir, voir
   `<index.html>`_ pour me contacter !).

------------------------------------------------------------------------------

.. raw:: html

   <h4>Toplevel Python 2.7.3 Skulpt</h4>
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
   <textarea id="editor" cols="85" rows="25">
   # Demo with 'turtle' module
   print("A demo of the 'turtle' module is in progress !")
   import turtle
   t = turtle.Turtle()
   for c in ['red', 'green', 'yellow', 'blue']:
       t.color(c)
       t.forward(75)
       t.left(90)
   t.color('cyan')
   t.forward(75)
   for c in ['blue', 'yellow', 'green', 'red']:
       t.color(c)
       t.forward(75)
       t.right(90)
   # Demo with 'document' module
   print("A demo of the 'document' module is in progress !")
   import document
   output = document.getElementById('output')
   print output.innerHTML
   # Second demo
   spanoutput = document.getElementById('spanoutput')
   spanoutput.innerHTML = spanoutput.innerHTML + '<h5 style="color:red;">Skulpt can also access DOM !</h5>'
   spanoutput.innerHTML = spanoutput.innerHTML + '<img alt="GA|Analytics" src="https://ga-beacon.appspot.com/UA-38514290-1/skulpt.html/AddedWithSkulpt" /><br/>'
   # Ajoutez votre propre commande Python :
   </textarea><br/>
   <script type="text/javascript" charset="utf-8" src="_static/skulpt/skulpt.min.js"></script>
   <script type="text/javascript" charset="utf-8" src="_static/skulpt/skulpt-stdlib.js"></script>
   <!-- ACE ? -->
   <script type="text/javascript" charset="utf-8" src="_static/ace-new/ace.js"></script>

   <input disabled="disabled" id="button" type="button" class="btn btn-success" value="Chargement..." style="margin: auto;" onclick="window.alert('Nothing :(...')" />
   <input disabled="disabled" id="cleanin" type="button" class="btn btn-danger" onclick="input.value='';" value="Chargement..." style="margin: auto;" />
   <br/>
   <h4>Sortie du toplevel :
   <input disabled="disabled" id="cleanout" type="button" class="btn btn-warning" onclick="output.value='';" value="Chargement..." style="margin: auto;" /></h4>
   <div id="outdiv">
    <pre id="output" style="font-family: monospace; width: 80%;"></pre><br/><hr/>
    <span id="spanoutput">Ce texte peut être modifié en modifiant le contenu de l'élément <b>DOM</b> d'identifiant <code>spanoutput</code>.</span>
   </div><br/><hr/>
   <br/><br/>
   <canvas id="mycanvas" style="border-style: solid;" width="400" height="400">
    Il semblerait que votre navigateur ne supporte pas la balise canvas.
    La sortie graphique via le module ''turtle'' est donc non disponible !
   </canvas><br/><br/>

   <script type="text/javascript">
   // $(document).ready(function() {
    window.onload = function() {
       window.alert("~~~ Le terminal Python (2.7.3) commence à s'initialiser... ~~~");
       // Launch ACE
       var editor = ace.edit("editor") || document.getElementById('editor');
       // ACE Option. See http://ace.c9.io/#nav=howto for more options.
       try {
         // editor.setTheme("ace-new/theme/cobalt");
         editor.setTheme("ace/theme/cobalt");
         // editor.getSession().setMode("ace-new/mode/python");
         editor.getSession().setMode("ace/mode/python");
         editor.getSession().setTabSize(4);
         editor.getSession().setUseWrapMode(true);
         editor.setHighlightActiveLine(true);
         editor.setShowPrintMargin(false);
         editor.setReadOnly(false);  // true to make it non-editable
       } catch(err) { console.log("[ERROR] There was an error : " + err.message); };
       // 
       var output = document.getElementById('output');
       var spanoutput = document.getElementById('spanoutput');
       var mycanvas = document.getElementById('mycanvas');
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
          var prog = editor.getValue() || input.innerHTML;
          window.alert("Interprétation en cours de :\n" + prog);
          output.innerHTML = '';
          Sk.canvas = "mycanvas";
          Sk.pre = "output";
          Sk.configure({output:outf, read:builtinRead});
          eval(Sk.importMainWithBody("<stdin>", false, prog));
          var out = output.innerHTML;
          window.alert("Interprétation terminée. Résultat:\n" + out);
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
          var tmpvalue = editor.getValue() || editor.innerHTML;
          try { editor.setValue(""); } catch(err) { editor.innerHTML = ""; };
          window.alert("Zone d'édition vidée ! Ancien contenu :\n" + tmpvalue);
        };
      var cleanout = document.getElementById('cleanout');
        cleanout.value = "Efface la sortie";
        cleanout.disabled = false;
        cleanout.onclick = function() {
          spanoutput.innerHTML = "";
          var tmpvalue = output.innerHTML;
          // try { output.value = ""; } catch(err) { output.innerHTML = ""; };
          output.innerHTML = "";
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
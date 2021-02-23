##########################################################
 Un **toplevel** ``Python`` embarqué (version **Skulpt**)
##########################################################

.. include:: .javascript.fr.rst

------------------------------------------------------------------------------

.. seealso:: Je recommande les outils suivants, plus modernes et plus complets !

  - `CodeSkulptor 3 <https://py3.codeskulptor.org/>`_ est assez complet pour la librairie standard et ça marche bien ! Pas sûr qu'il marche parfaitement hors ligne. Basé sur `Skulpt.org <http://skulpt.org/>`_, que j'avais déployé dans la page `<skulpt.html>`_ !
  - Le `notebook RustPython <https://rustpython.github.io/demo/notebook/>`_ est aussi bien fait, mais pas sûr de savoir quels modules de la librairie standard et quelles fonctionnalités de Python sont bien supportées. Mais c'est très impressionnant...

.. warning:: Compatibilité HTML5 requise !

   Cette page nécessite `un navigateur compatible HTML 5 <http://html5test.com/>`_
   (voir aussi `html5readiness.com <http://html5readiness.com>`_)

   Malgré ça, cette version de l'interprète Python semble plus accessible que
   la première mise en place (`<python.html>`_), en particulier **Skulpt**
   semble plus compatible avec les navigateurs des smartphones (si ce n'est
   pas votre cas, un retour ou une remarque me ferait plaisir, voir
   `<index.html>`_ pour me contacter !).

------------------------------------------------------------------------------

Toplevel Python 2.7.3 Skulpt
----------------------------

.. raw:: html

   <style type="text/css" media="screen">
    #preeditor {
        font-family: monospace;
        font-size: 18px;
        position: relative;
        height: 550px;
        width: 90%;
        margin-left: 40px;
    }
    @media (max-width: 380px) { #preeditor {
        margin-left: 5px;
        font-size: 15px;
    } }
   </style>
   <xmp id="preeditor" cols="85" rows="35"># Demo with 'turtle' module
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
   print("A demo of the minimalist DOM handler ('document') module is in progress !")
   import document
   spanoutput = document.getElementById('spanoutput')
   spanoutput.innerHTML = ' <br/><hr/><h1 style="color:red;">Skulpt can also access the DOM !</h1><br/><br/><hr/> '
   spanoutput.innerHTML = spanoutput.innerHTML + '<img alt="GA|Analytics" src="https://ga-beacon.appspot.com/UA-38514290-1/skulpt.html/AddedWithSkulpt" />'
   # Ajoutez votre propre commande Python :
   </xmp><br/>
   <script type="text/javascript" charset="utf-8" src="_static/skulpt/skulpt.min.js"></script>
   <script type="text/javascript" charset="utf-8" src="_static/skulpt/skulpt-stdlib.js"></script>
   <!-- Loading ACE -->
   <script type="text/javascript" charset="utf-8" src="_static/ace-new/ace.js"></script>

   <i id="buttons-input" style="margin-left: 20%; margin-right: auto; display: block;">
     <input disabled="disabled" id="button" type="button" class="btn btn-success" value="Chargement…" style="margin: auto;" onclick="window.alert('Nothing :(…');" />
     <input disabled="disabled" id="cleanin" type="button" class="btn btn-danger" onclick="input.value='';" value="Chargement…" style="margin: auto;" />
   </i><br/>
   <h4>Sortie du toplevel (<tt>output</tt>) :
   <input disabled="disabled" id="cleanout" type="button" class="btn btn-warning" onclick="output.value='';" value="Chargement…" style="margin: auto;" /></h4>
    <pre id="output" style="font-family: monospace; width: 80%;"></pre><br/><hr/>
   <h4>Espace d'écriture (<tt>spanaoutput</tt>) pour le toplevel :</h4>
   <div id="outdiv">
    <span id="spanoutput">Ce texte peut être modifié en modifiant le contenu de l'élément <b>DOM</b> d'identifiant <code>spanoutput</code>.</span>
   </div><hr/><br/><!-- <br/> -->
   <h4>Canvas (<tt>mycanvas</tt>) pour le toplevel :</h4>
   <canvas id="mycanvas" style="border-style: solid; margin-left: 20%; margin-right: auto;" width="500" height="400">
    Il semblerait que votre navigateur ne supporte pas la balise canvas.
    La sortie graphique via le module ''turtle'' est donc non disponible !
   </canvas><br/><br/>

   <script type="text/javascript">
   $(document).ready(function() {
    // window.onload = function() {
       window.alert("~~~ Le terminal Python (2.7.3) commence à s'initialiser… ~~~");
       // Launch ACE
       // var editor = try { ace.edit("preeditor"); } catch(err) { document.getElementById('preeditor'); };
       var editor = document.getElementById('preeditor');
       try {
         editor = ace.edit("preeditor");
         console.log("[INFO] ACE was able to use load editor for the 'preeditor' textarea ?");
       } catch(err) {
         console.log("[ERROR] ACE was not able to use load editor for the 'preeditor' textarea.");
       };
       // ACE Option. See http://ace.c9.io/#nav=howto for more options.
       try {
         try {
           editor.setTheme("ace/theme/cobalt");
         } catch(err2) {
           console.log("[ERROR] ACE was not able to use load the 'ace/theme/cobalt' theme.");
           editor.setTheme("ace-new/theme/cobalt");
         };
         try {
          editor.getSession().setMode("ace/mode/python");
        } catch(err3) {
           console.log("[ERROR] ACE was not able to use load the 'ace/mode/python' mode.");
          editor.getSession().setMode("ace-new/mode/python");
        };
         editor.getSession().setTabSize(4);
         editor.getSession().setUseWrapMode(true);
         editor.setHighlightActiveLine(true);
         editor.setShowPrintMargin(false);
         editor.setReadOnly(false);  // true to make it non-editable
         console.log("[INFO] ACE seems to be well initialized.");
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
          var prog = "";
          // var prog = try { editor.getValue(); } catch(err) { input.innerHTML; };
          try {
            prog = editor.getValue();
          } catch(err) {
            console.log("[ERROR] ACE was not able to get the content of the textarea with 'getValue'.");
            prog =  input.innerHTML;
          };
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
          window.alert("Interprétation commencée…");
          runit();
        };
      var cleanin = document.getElementById('cleanin');
        cleanin.value = "Efface l'entrée";
        cleanin.disabled = false;
        cleanin.onclick = function() {
          var tmpvalue = "";
          // var tmpvalue = try { editor.getValue(); } catch(err) { editor.innerHTML; };
          try {
            tmpvalue = editor.getValue();
          } catch(err) {
            console.log("[ERROR] ACE was not able to get the content of the textarea with 'getValue'.");
            tmpvalue = editor.innerHTML;
          };
          try { editor.setValue(""); } catch(err) { editor.innerHTML = ""; };
          window.alert("Zone d'édition vidée ! Ancien contenu :\n" + tmpvalue);
        };
      var cleanout = document.getElementById('cleanout');
        cleanout.value = "Efface la sortie";
        cleanout.disabled = false;
        cleanout.onclick = function() {
          spanoutput.innerHTML = "";
          var tmpvalue = "";
          // var tmpvalue = try { output.value = ""; } catch(err) { output.innerHTML = ""; };
          // output.innerHTML;
          try {
            tmpvalue = output.innerHTML;
          } catch(err) {
            console.log("[ERROR] ACE was not able to get the content of the output with '… = output.value'.");
            tmpvalue = output.value;
          };
          // output.innerHTML = "";
          try {
            output.innerHTML = "";
          } catch(err) {
            console.log("[ERROR] ACE was not able to change the content of the output with 'output.value = …'.");
            output.value = "";  };
          window.alert("Sortie du toplevel vidée ! Ancien contenu :\n" + tmpvalue);
        };
       // Done !
       window.alert("~~~ Le terminal Python (2.7.3) semble bien initialisé ! ~~~");
     // };
   });
   </script>


+--------------------------------+-------------------------------+
| .. image:: .python-powered.png | .. image:: .ace-powered.png   |
|    :scale: 120 %               |    :scale: 45 %               |
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

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
 Le **toplevel** Python embarqué ici vient du projet *Skulpt*,
 dont la page principale est `www.skulpt.org <http://www.skulpt.org/>`_.


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

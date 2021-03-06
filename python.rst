#####################################
 Un **toplevel** ``Python`` embarqué
#####################################

.. include:: .javascript.fr.rst

------------------------------------------------------------------------------

.. seealso:: Je recommande les outils suivants, plus modernes et plus complets !

  - `Basthon <https://basthon.fr/>`_ est une console et un notebook Python très complets, fonctionnant en ligne sans besoin d'un serveur qui calcule votre code derrière : tout est interprété en javascript dans votre navigateur ! J'héberge une copie locale de Basthon, ici : `console Python 3.8 <Basthon/python/>`_, `notebook Jupyter Python 3.8 <Basthon/notebook/>`_. Ils sont aussi sur `python.besson.link <http://python.besson.link>`_ et `notebook.besson.link <http://notebook.besson.link>`_ (sans HTTPS mais c'est juste une copie transparente des dossiers de ce site).

  En cas de problème, on peut aussi utiliser :

  - `CodeSkulptor 3 <https://py3.codeskulptor.org/>`_ est assez complet pour la librairie standard et ça marche bien ! Pas sûr qu'il marche parfaitement hors ligne. Basé sur `Skulpt.org <http://skulpt.org/>`_, que j'avais déployé dans la page `skulpt <skulpt.html>`_ !
  - Le `notebook RustPython <https://rustpython.github.io/demo/notebook/>`_ est aussi bien fait, mais pas sûr de savoir quels modules de la librairie standard et quelles fonctionnalités de Python sont bien supportées. Mais c'est très impressionnant...

.. warning:: Cette page est très vieille, et ne marche probablement plus bien. Ca n'a jamais été autre chose qu'une petite démonstration.

.. warning:: Une autre version, plus légère et rapide, est disponible : `skulpt <skulpt.html>`_ !

Toplevel Python 2.7.2 avec l'éditeur ACE
-----------------------------------------

.. raw:: html

   <style type="text/css" media="screen">
    #preeditor {
        font-family: monospace;
        font-size: 18px;
        position: relative;
        height: 400px;
        width: 90%;
        margin-left: 40px;
    }
    @media (max-width: 380px) { #preeditor {
        margin-left: 5px;
        font-size: 15px;
    } }
   </style>
   <pre id="preeditor">
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
   <script src="_static/ace-new/ace.js?1" type="text/javascript" charset="utf-8"></script>
   <script type="text/javascript">
     // Launch ACE
     var editor = ace.edit("preeditor");
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
           output.innerHTML += e.data;
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
          var tmpvalue = output.innerHTML;
          output.innerHTML = "";
          window.alert("Sortie du toplevel vidée ! Ancien contenu :\n" + tmpvalue);
        };
     };
     window.onload = start;
   </script>
   <!--    <input disabled="disabled" id="button" type="button" class="btn btn-success" value="Chargement…" style="margin: auto;" />
   <input disabled="disabled" id="cleanin" type="button" class="btn btn-danger" onclick="editor.setValue('');" value="Chargement…" style="margin: auto;" />
   <h4>Sortie du toplevel :</h4>
   <textarea id="output" style="font-family: monospace; width: 100%;" rows="8" cols="80"></textarea>
   <input disabled="disabled" id="cleanout" type="button" class="btn btn-warning" onclick="output.value=''" value="Chargement…" style="margin: auto;" /> -->
   <i id="buttons-input" style="margin-left: 20%; margin-right: auto; display: block;">
     <input disabled="disabled" id="button" type="button" class="btn btn-success" value="Chargement…" style="margin: auto;" onclick="window.alert('Nothing :(…');" />
     <input disabled="disabled" id="cleanin" type="button" class="btn btn-danger" onclick="input.value='';" value="Chargement…" style="margin: auto;" />
   </i><br/>
   <h4>Sortie du toplevel (<tt>output</tt>) :
   <input disabled="disabled" id="cleanout" type="button" class="btn btn-warning" onclick="output.value='';" value="Chargement…" style="margin: auto;" /></h4>
   <pre id="output" style="font-family: monospace; width: 80%;"></pre>
   <br/><hr/>


+--------------------------------+-------------------------------+
| .. image:: .python-powered.png | .. image:: .ace-powered.png   |
|    :scale: 120 %               |    :scale: 40 %               |
|    :align: right               |    :align: left               |
|    :alt: Python powered :)     |    :alt: ACE powered :)       |
|    :target: http://python.org  |    :target: http://ace.c9.io/ |
+--------------------------------+-------------------------------+

------------------------------------------------------------------------------

.. seealso::

   Skulpt (`ici aussi <skulpt.html>`_)
      `Skulpt <https://skulpt.org/>`_ est une autre implémentation en *JavaScript* de Python.
      Il propose aussi des modules simples pour manipuler des canvas HTML pour avoir des interfaces graphiques !

   SymPy Live (`live.SymPy.org <http://live.sympy.org/>`_)
      Est encore un autre terminal Python s'exécutant dans un navigateur.
      Avec SymPy installé (calcul symbolique en Python), et en interprétant
      la sortie de SymPy comme du code LaTeX, rendu avec MathJax.

À propos
--------
Comme dans `.special.rst <_sources/.special.txt>`_, j'utilise la directive ``.. raw:: html`` pour
**embarquer du code** ``HTML`` dans la page produite par **Sphinx**. :navy:`C'est simple, c'est propre.`

Libraire standard
~~~~~~~~~~~~~~~~~
En utilisant un débogueur JavaScript, comme `FireBug <https://getfirebug.com/whatisfirebug>`_,
ou les "outils développeurs" dans Firefox ou Chromium,
il est possible de voir les appels aux fichiers de la librairie Python.

Ils sont stockés dans ce dossier `<_static/python/lib/python2.7/>`_ :)

Autres pages
~~~~~~~~~~~~
Ce terminal est aussi disponible ici `<_static/python/index.html>`_, mais avec l'apparence la plus simpliste.

Hébergements
~~~~~~~~~~~~
Les scripts **Javascript** utilisés sur mes pages sont hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts
<https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
~~~~~~~~~~
Le **toplevel** Python embarqué ici est implémenté en **Javascript**,
et vient du projet Empythoned (voir cette page
`github.com/replit/empythoned <https://github.com/replit/empythoned>`_)
pour plus de détails.


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

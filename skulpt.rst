##########################################################
 Un **toplevel** ``Python`` embarqué (version **Skulpt**)
##########################################################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

Le toplevel
-----------

.. raw:: html

   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
   <script src="_static/skulpt.js" type="text/javascript"></script>
   <script src="_static/builtin.js" type="text/javascript"></script>
   <script type="text/javascript">
   function outf(text) {
    var mypre = document.getElementById("output");
    mypre.innerHTML = mypre.innerHTML + text;
   }
   function builtinRead(x) {
    if (Sk.builtinFiles === undefined || Sk.builtinFiles["files"][x] === undefined)
    throw "File not found: '" + x + "'";
    return Sk.builtinFiles["files"][x];
   }
   function runit() {
    var prog = document.getElementById("yourcode").value;
    var mypre = document.getElementById("output");
    mypre.innerHTML = '';
    Sk.canvas = "mycanvas";
    Sk.pre = "output";
    Sk.configure({output:outf, read:builtinRead});
    eval(Sk.importMainWithBody("<stdin>",false,prog));
   }
   </script>
   <form>
   <textarea id="yourcode" cols="40" rows="10" style="font-family: monospace">
   import turtle, sys, os, random
   t = turtle.Turtle()
   for c in ['red', 'green', 'yellow', 'blue']:
       t.color(c)
       t.forward(75)
       t.left(90)
   print "Hello World !"
   </textarea><br/>
   <button type="button" onclick="runit()">Exécute le code courant</button>
   <input id="cleanin" type="button" value="Chargement....." style="margin: auto" />
   </form>
   <pre id="output" ></pre>
   <input id="cleanout" type="button" value="Chargement....." style="margin: auto" />
   <script type="text/javascript">
   var yourcode = document.getElementById('yourcode');
   var output = document.getElementById('output');
   var cleanin = document.getElementById('cleanin');
   var cleanout = document.getElementById('cleanout');
   cleanin.value = "Efface l'entrée";
   cleanout.value = "Efface la sortie";
   cleanin.disabled = false;
   cleanout.disabled = false;
   cleanin.onclick = function() {
         yourcode.value = "";
   };
   cleanout.onclick = function() {
         output.value = "";
   };
   window.alert("~~~ Le terminal Python (2.7.3) semble bien initialisé ! ~~~");
   </script>
   <canvas id="mycanvas" ></mycanvas>


.. image:: .python-powered.png
   :scale: 120 %
   :align: center
   :alt: Python powered :)
   :target: http://python.org

------------------------------------------------------------------------------

.. seealso::

   Python Emscripten (`<python.html>`_)
      Cette page intègre une autre implémentation en *JavaScript* de Python.
      Compilée à partir du compilateur Emscripten (bytecode → JavaScript).


Autres pages
------------
 Le premier terminal **Python** que j'ai intégré dans mes pages est là
 `<python.html>`_.

 Sinon, *normalement*, le sous dossier `<Python>`_ contient une copie locale
 de la documentation de **Python 2.7.3**.

 Et enfin, l'archive `<Python/Python-3.3.0-custom.tar.xz>`_ est un copie
 de Python 3.3 que je modifie (petit à petit) pour m'amuser.

À propos
--------
 Comme dans `.special.rst <_sources/.special.txt>`_,
 j'utilise la directive ``.. raw:: html`` pour
 **embarquer du code** ``HTML`` dans la page produite par **Sphinx**.
 :navy:`C'est simple, c'est propre.`

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts 
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
 Le **toplevel** Python embarqué ici vient du projet *Skulpt*,
 dont la page principale est `www.skulpt.org <http://www.skulpt.org/>`_.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
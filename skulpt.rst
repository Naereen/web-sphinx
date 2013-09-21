##########################################################
 Un **toplevel** ``Python`` embarqué (version **Skulpt**)
##########################################################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

Le toplevel (en béta)
---------------------

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

.. warning:: Ne fonctionne pas bien encore (ne tient pas compte des modifications de l'entrée: exécute toujours le même script !)...

.. raw:: html

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
    var prog = document.getElementById("textarea").value;
    var mypre = document.getElementById("output");
    mypre.innerHTML = '';
    Sk.canvas = "mycanvas";
    Sk.pre = "output";
    Sk.configure({output:outf, read:builtinRead});
    eval(Sk.importMainWithBody("<stdin>", false, prog));
   }
   </script>
   <form>
   <textarea id="textarea" style="font-family: monospace; width: 100%" rows="24" cols="80">
   import turtle
   t = turtle.Turtle()
   for c in ['red', 'green', 'yellow', 'blue']:
       t.color(c)
       t.forward(75)
       t.left(90)
   print "Hello World !"
   # Le module sys n'est pas disponible.
   # Rentrez vos propres commandes !
   </textarea>
   <script type="text/javascript" src="_static/ace_python.js"></script>
   <br/>
   <button type="button" onclick="runit()">Exécute le code courant</button>
   <input id="cleanin" type="button" value="Chargement....." style="margin: auto" />
   </form>
   <pre id="output" ></pre><br/>
   <input id="cleanout" type="button" value="Chargement....." style="margin: auto" />
   <script type="text/javascript">
     var textarea = document.getElementById('textarea');
     var output = document.getElementById('output');
     var cleanin = document.getElementById('cleanin');
     var cleanout = document.getElementById('cleanout');
     cleanin.value = "Efface l'entrée";
     cleanout.value = "Efface la sortie";
     cleanin.disabled = false;
     cleanout.disabled = false;
     cleanin.onclick = function() {
           textarea.value = "";
     };
     cleanout.onclick = function() {
           output.value = "";
     };
     window.alert("~~~ Le terminal Python (2.7.3) semble bien initialisé ! ~~~");
   </script>
   <br/><br/>
   <canvas id="mycanvas"
           style="border-style: solid;" width="400" height="400">
    Il semblerait que votre navigateur ne supporte pas les canvas.
    La sortie graphique via le module ''turtle'' est donc non disponible !
   </canvas>


.. image:: .python-powered.png
   :scale: 120 %
   :align: center
   :alt: Python powered :)
   :target: http://python.org

------------------------------------------------------------------------------

.. warning:: Les modules sys et os ne sont pas disponibles.

.. todo:: Bouton "Efface l'entrée" plus disponible.

.. seealso::

   Python Emscripten (`<python.html>`_)
      Cette page intègre une autre implémentation en *JavaScript* de Python.
      Compilée à partir du compilateur Emscripten (bytecode → JavaScript).

.. seealso::

   SymPy Live (`<http://live.sympy.org/>`_)
      Est encore un autre terminal Python s'exécutant dans un navigateur.
      Avec SymPy installé (calcul symbolique en Python), et en interprétant
      la sortie de SymPy comme du code LaTeX, rendu avec MathJax.

Autres pages
------------
 Le premier terminal **Python** que j'ai intégré dans mes pages est là
 `<python.html>`_.

 Sinon, *normalement*, le sous dossier `<python-doc/>`_ contient une copie locale
 de la documentation de **Python 2.7.3**.

.. Et enfin, l'archive `<Python/Python-3.3.0-custom.tar.xz>`_ est un copie
.. de Python 3.3 que je modifie (petit à petit) pour m'amuser.

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
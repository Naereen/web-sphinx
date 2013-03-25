#################################
 Un toplevel ``Python`` embarqué
#################################

Je teste ici la fonctionnalité "expérimentale" d'embarquer des
scripts (en **Javascript**) dans des pages webs générées avec **Sphinx**.

.. warning::

   À priori, cette superbe page devrait 
   **fonctionner sur n'importe quel navigateur**,
   pour peu :green:`qu'il supporte Javascript` !

------------------------------------------------------------------------------

Le toplevel
-----------

.. raw:: html

   <noscript><span style="color:red" align="center">
   Attention: votre navigateur semble ne pas supporter Javascript !</span>
   </noscript>
   <script>
   function start() {
     var input = document.getElementById('input')
        , output = document.getElementById('output')
        , button = document.getElementById('button')
        , worker = new Worker('_static/worker.js')
        , loaded = false
        , handler = function (e) {
     if (!loaded) {
        loaded = true;
        button.value = "Execute";
        input.disabled = false;
        button.disabled = false;
        return;
       }
       output.value += e.data;
   };

   worker.addEventListener('message', handler, false);
 
   button.onclick = function() {
       worker.postMessage(input.value);
   };
   };
   window.onload = start;
   </script>


Entrée du toplevel
~~~~~~~~~~~~~~~~~~
.. raw::html

   <textarea disabled="true" id="input" style="font-family: monospace; width: 80%" rows="8">
   from sys import *
   print("--- Version: %s ---" % version)
   </textarea>
   <input disabled="true" id="button" type="button" value="Chargement......" style="display: block; margin: auto" />


Sortie du toplevel
~~~~~~~~~~~~~~~~~~
.. raw::html

   <textarea id="output" style="font-family: monospace; width: 80%" rows="8">
   </textarea>

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

Copyrights
----------
Le **toplevel** Python embarqué ici est implémenté en **Javascript**,
et viens du projet Empythoned (voir cette page 
`github.com/replit/empythoned <https://github.com/replit/empythoned>`_)
pour plus de détails.

Ce projet est distribué sous la licence **MIT**.

.. include:: .bottom.fr.rst
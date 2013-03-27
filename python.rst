#####################################
 Un **toplevel** ``Python`` embarqué
#####################################
.. include:: .special.rst

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
          , worker = new Worker('_static/python/worker.js')
          , loaded = false
          , handler = function (e) {
            if (!loaded) {
              loaded = true;
              button.value = "Exécute";
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
   <h2>Entrée du toplevel</h2>
   <textarea disabled="true" id="input" style="font-family: monospace; width: 100%" rows="8">print 'Bonjour, le monde !'
   print {i: i**9 for i in range(8)}	# dictionnaire en compréhension
   print {i*6 for i in range(8)}	# ensemble en compréhension
   </textarea>
   <input disabled="true" id="button" type="button" value="Chargement......" style="display: block; margin: auto" />
   <h2>Sortie du toplevel</h2>
   <textarea id="output" style="font-family: monospace; width: 100%" rows="8"></textarea>
   <script>window.alert("~~~ Python 2.7.2 toplevel is well initialized ~~~")</script>


.. Python Powered :)
.. ^^^^^^^^^^^^^^^^^

.. image:: .python-powered.png
   :scale: 200 %
   :align: center
   :alt: Python powered :)
   :target: http://python.org

------------------------------------------------------------------------------

À propos
--------
Comme dans `.special.rst <_sources/.special.txt>`_,
j'utilise la directive ``.. raw:: html`` pour
**embarquer du code** ``HTML`` dans la page produite par **Sphinx**.

:navy:`C'est simple, c'est propre.`

J'utilise aussi une balise ``HTML`` appelée ``noscript``,
qui, le cas échéant, permet de signaler à l'utilisateur que son navigateur ne
supporte pas Javascript.

Hébergements
------------

Les scripts **Javascript** utilisés sur mes pages sont désormais
hébergés sur ce dépot git : `lbesson/web-sphinx-scripts 
<https://bitbucket.org/lbesson/web-sphinx-scripts>`_.

Copyrights
----------
Le **toplevel** Python embarqué ici est implémenté en **Javascript**,
et vient du projet Empythoned (voir cette page 
`github.com/replit/empythoned <https://github.com/replit/empythoned>`_)
pour plus de détails.

Ce projet est distribué sous la licence **MIT**.

------------------------------------------------------------------------------

.. include:: .bottom.fr.rst
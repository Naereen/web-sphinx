#####################################
 Un **toplevel** ``Python`` embarqué
#####################################
.. include:: .special.rst

.. important::

   À priori, cette page et son terminal embarqué devraient
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
   <h4>Entrée du toplevel :</h4>
   <textarea disabled="true" id="input" style="font-family: monospace; width: 100%" rows="8">print 'Bonjour, le monde !'
   print {i: i**9 for i in range(8)}	# dictionnaire en compréhension
   print {i*6 for i in range(8)}	# ensemble en compréhension
   #
   # Un second exemple
   import time
   now = time.localtime()
   hour = now.tm_hour
   if hour < 8: print 'sleeping'
   elif hour < 9: print 'commuting'
   elif hour < 17: print 'working'
   elif hour < 18: print 'commuting'
   elif hour < 20: print 'eating'
   elif hour < 22: print 'resting'
   else: print 'sleeping'
   # Un dernier exemple
   def factorial(n):
     if n == 0: return 1
     else: return n * factorial(n - 1)
   print factorial(11)
   # input fonctionne-t-elle ?
   name = raw_input('Quel est votre nom, noble visiteur ?\n')
   print 'Salut, noble %s.' % name
   </textarea>
   <input disabled="true" id="button" type="button" value="Chargement......" style="display: block; margin: auto" />
   <h4>Sortie du toplevel :</h4>
   <textarea id="output" style="font-family: monospace; width: 100%" rows="8"></textarea>
   <script>window.alert("~~~ Python 2.7.2 toplevel is well initialized ~~~")</script>


.. image:: .python-powered.png
   :scale: 120 %
   :align: center
   :alt: Python powered :)
   :target: http://python.org

------------------------------------------------------------------------------

Autres pages
------------
 Ce terminal est aussi disponible ici `<_static/python/index.html>`_.

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

J'utilise aussi une balise ``HTML`` appelée ``noscript``,
qui, le cas échéant, permet de signaler à l'utilisateur que son navigateur ne
supporte pas Javascript.

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts 
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
 Le **toplevel** Python embarqué ici est implémenté en **Javascript**,
 et vient du projet Empythoned (voir cette page 
 `github.com/replit/empythoned <https://github.com/replit/empythoned>`_)
 pour plus de détails.

.. include:: .bottom.fr.rst
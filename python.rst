#####################################
 Un **toplevel** ``Python`` embarqué
#####################################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

Le toplevel
-----------

.. raw:: html

   <script>
    function start() {
     var input = document.getElementById('input')
       , output = document.getElementById('output')
       , button = document.getElementById('button')
       , clean = document.getElementById('clean')
       , cleanout = document.getElementById('cleanout')
       , worker = new Worker('_static/python/worker.js')
       , loaded = false
       , handler = function (e) {
         if (!loaded) {
           loaded = true;
           button.value = "Exécute le code courant";
           clean.value = "Efface l'entrée";
           cleanout.value = "Efface la sortie";
           input.disabled = false;
           button.disabled = false;
           clean.disabled = false;
           cleanout.disabled = false;
           window.alert("~~~ Le terminal Python (2.7.2) semble bien initialisé ! ~~~");
           return;
         }
         output.value += e.data;
      };
      worker.addEventListener('message', handler, false);
      button.onclick = function() {
        worker.postMessage(input.value);
      };
      clean.onclick = function() {
        input.value = "";
      };
      cleanout.onclick = function() {
        output.value = "";
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
   # Démonstration
   import sys, os
   print "Version: %s" % sys.version
   print "Dossier courant: %s" % os.getcwd()
   # Ajoutez votre propre commande Python :
   </textarea>
   <input disabled="true" id="button" type="button" value="Chargement......" style="margin: auto" />
   <input disabled="true" id="clean" type="button" onclick="input.value=''" value="Chargement....." style="margin: auto" />
   <h4>Sortie du toplevel :</h4>
   <textarea id="output" style="font-family: monospace; width: 100%" rows="8"></textarea>
   <input disabled="true" id="cleanout" type="button" onclick="output.value=''" value="Chargement....." style="margin: auto" />

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

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
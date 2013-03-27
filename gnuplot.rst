#######################################
 Un **toplevel** ``GNU Plot`` embarqué
#######################################
.. include:: .special.rst

.. important::

   À priori, cette page devrait et son terminal embarqué
   **fonctionner sur n'importe quel navigateur**,
   pour peu :orange:`qu'il supporte Javascript` !

.. warning::

   Si le graphes (plus bas à gauche) n'est sont pas affiché, c'est
   sûrement parce que votre navigateur ne supporte pas les images ``SVG``.
   Dans ce cas, un seul conseil : adoptez **Mozilla Firefox** :) !

------------------------------------------------------------------------------

Le toplevel
-----------
Optionnel
~~~~~~~~~
Vous pouvez charger un fichier, pour que le *toplevel*
en ai un accès (en **lecture uniquement**), comme par exemple
un fichier de données venant de votre propre ordinateur.

Ce fichier **n'est envoyé nul part** : il est utilisé par ``gnuplot.js``,
qui est un script qui s'exécute **localement**
sur :u:`votre propre machine.`

.. raw:: html

    <style type="text/css">
     .emscripten { padding-right: 0; margin-left: auto; font-size: 11px; margin-right: auto; display: block; }
     canvas.emscripten { border: 1px solid black; }
     textarea.emscripten { font-family: monospace; width: 80%; font-size: 14pt; }
     div.emscripten { text-align: center; }
     table.noborder { border: 0; vertical-align: text-top; }
    </style>
    <input id="files" name="files[]" multiple="" type="file">
    <output id="list"></output>

Graphe et entrée texte
~~~~~~~~~~~~~~~~~~~~~~
+--------------------------------------+-------------------------------------+
| À gauche, le graphique, au format    | À droite, une entrée texte,         |
| **SVG**.                             | comme **GNU Plot** en console.      |
| Pour l'instant, un seul ...          |                                     |
|                                      |                                     |
| Il est possible d'enregister ce      | Les 2 premières lignes doivent être |
| graphe, n'importe quand.             | gardées comme ça.                   |
+--------------------------------------+-------------------------------------+

.. raw:: html

    <noscript><span style="color:red" align="center">
    Attention: votre navigateur semble ne pas supporter Javascript !</span>
    </noscript>
    <table class="noborder"><tbody><tr><td>
    <img src="blob:7716fba5-e3f5-4826-b26f-45f3c2f2758a" frameborder="0" id="gnuimg" type="image/svg+xml" class="float-right" height="500" width="600">
    </td><td style="width:100%;" valign="top">
    <textarea class="emscripten" id="gnuplot" rows="20" onkeyup="scriptChange()">
    set terminal svg enhanced size 600,500 fname 'calibri' fsize 10 mouse jsdir "_static/"
    set output 'sortie.svg'
    # Allez y, essayer d'entrer vos propres commandes GNUPlot ici :
    plot cos(x*8)*exp(-x**2), cos(x*4)*exp(-x**2), cos(x)*exp(-x**2)
    </textarea>
    </td></tr></tbody></table>
    <br clear="all">
    <hr>
    <h2 style="float: left;">Messages de sorties :</h2>
    <textarea class="emscripten" id="output" rows="10">
    </textarea>
    <script src="_static/gnuplot_api.js"></script>
    <script type="text/javascript">
    gnuplot.init('_static/gnuplot.js');
    gnuplot.onOutput = function(text) {
     document.getElementById('output').value += text + '\n';
     document.getElementById('output').scrollTop = 99999;
    };
    gnuplot.onError = function(text) {
     document.getElementById('output').value += 'Erreur : ' + text + '\n';
     document.getElementById('output').scrollTop = 99999;
    };
    var lastTAContent = '';
    function scriptChange() {
     var val = document.getElementById("gnuplot").value;
     if (lastTAContent == val) return;
     localStorage["gnuplot.script"] = val;
     if (gnuplot.isRunning) {
      setTimeout(scriptChange, 1000);
     } else {
      lastTAContent = val;
      runScript();
     }
    };
    var runScript = function() {
    var element = document.getElementById('gnuplot');
    var start = Date.now();
    gnuplot.run(element.value, function(e) {
    gnuplot.onOutput('Execution took ' + (Date.now() - start) / 1000 + 's.');
    gnuplot.getFile('sortie.svg', function(e){
     if (!e.content)
     return;
     var img = document.getElementById('gnuimg');
     try {
      var ab = new Int8Array(e.content);
      var blob = new Blob([ab.buffer],{ "type" : "image\/svg+xml" });
      window.URL = window.URL || window.webkitURL;
      img.src = window.URL.createObjectURL(blob);
     } catch(err) { // in case blob / URL missing, fallback to data-uri
      if (!window.blobalert) {
      alert('Attention : votre navigateur ne supporte pas les URLs de type BLOB. Le script va donc devoir utiliser des URI de données, ce qui requiert plus de mémoire et de temps :( !');
      window.blobalert = true;
     }
     var rstr = '';
     for(var i = 0; i < e.content.length; i++) rstr += String.fromCharCode(e.content[i]);
     img.src = 'data:image\/svg+xml;base64,' + btoa(rstr);
    }
    //document.body.appendChild(img);
    });
    });
    };
    if (localStorage["gnuplot.script"])
     document.getElementById('gnuplot').value = localStorage["gnuplot.script"];
     scriptChange();
     function handleFileSelect(evt) {
      var files = evt.target.files; // FileList object
      // files is a FileList of File objects. List some properties.
      var output = [];
      for (var i = 0, f; f = files[i]; i++) {
      output.push('<li><strong>', escape(f.name), '</strong> (', f.type || 'n/a', ') - ',
      f.size, ' bytes, last modified: ',
      f.lastModifiedDate ? f.lastModifiedDate.toLocaleDateString() : 'n/a',
      '</li>');
      var reader = new FileReader();
      fname = f.name;     // dirty :(
      reader.onloadend = function(e) {
      gnuplot.onOutput(fname + ": Read success");
      if (e.target.result)
       gnuplot.putFile(fname, e.target.result);
      };
      reader.readAsArrayBuffer(f);
     }
     document.getElementById('list').innerHTML = '<ul>' + output.join('') + '</ul>';
    }
    document.getElementById('files').addEventListener('change', handleFileSelect, false);
   </script>
   <script>window.alert("~~~ Le terminal GNUPlot semble bien initialisé !
   Allez-y, expérimentez quelques commandes GNU Plot ! ~~~");</script>

------------------------------------------------------------------------------

À propos
--------
Comme dans `.special.rst <_sources/.special.txt>`_,
j'utilise la directive ``.. raw:: html`` pour
**embarquer du code** ``HTML`` dans la page produite par **Sphinx**.

:blue:`C'est simple, c'est propre.`

J'utilise aussi une balise ``HTML`` appelée ``noscript``,
qui, le cas échéant, permet de signaler à l'utilisateur que son navigateur ne
supporte pas Javascript.

.. todo::

   Comprendre pourquoi le buffer d'input ne s'actualise pas bien (?).
   En fait, le script semble garder en mémoire les entrées précédentes,
   et lorsqu'on recharge la page, le buffer d'input ne prend pas les données
   que je lui demande.

.. todo:: 

   Faire pareil avec Octave, voir `weboctave.mimuw.edu.pl 
   <http://weboctave.mimuw.edu.pl/weboctave/web/index.php>`_.

.. todo:: Voir pour changer le nom "foo" en "input".

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts 
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
 Cette page est *directement inspirée* de la page officielle.

 Les deux scripts utilisés ici, `gnuplot.js <_static/gnuplot.js>`_,
 et `gnuplot_api.js <_static/gnuplot_api.js>`_ ont été écrits par
 Christian Huettig.

 La page officielle du projet est 
 `gnuplot.respawned.com <http://gnuplot.respawned.com/>`_.
 Une copie locale de cette page originale est
 `<gnuplot.old.html>`_.

 La seule différence entre la page originale et celle-ci est le fait que
 celle ci est **intégrée** dans les pages de mon projet *Sphinx* (et donc,
 qu'elle est écrite en **rST** et pas en **HTML**).

GNU Plot
~~~~~~~~
 ``GNU Plot`` est © et ® du projet **GNU**, voir la page officielle
 `GNUPlot <http://gnuplot.sourceforge.net/>`_ pour plus
 de détails.

Emscripten
~~~~~~~~~~
 Le compilateur utilisé par Christian Huettig est
 ``Emscripten``, voir `github.com/kripken/emscripten 
 <https://github.com/kripken/emscripten>`_
 pour plus de détails.

.. include:: .bottom.fr.rst
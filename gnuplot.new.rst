#######################################
 Un **toplevel** ``GNU Plot`` embarqué
#######################################
.. include:: .special.rst

.. include:: .javascript.rst

.. warning:: Images vectorielles SVG

   Si le graphe (plus bas à gauche) n'est pas affiché, c'est
   sûrement parce que votre navigateur ne supporte pas les images ``SVG``.
   Dans ce cas, un seul conseil : adoptez `Mozilla Firefox <https://www.mozilla.org/en-US/firefox/all/>`_ :) !

------------------------------------------------------------------------------

.. warning:: En bêta ! L'ancienne version est toujours là `<gnuplot.html>`_ !

Le toplevel Gnuplot 4.6.3
-------------------------
Optionnel
~~~~~~~~~
Vous pouvez charger un fichier, pour que le *toplevel*
en ai un accès (en **lecture uniquement**), comme par exemple
un fichier de données venant de votre propre ordinateur.

Ce fichier **n'est envoyé nul part** : il est utilisé par ``gnuplot.js``,
qui est un script qui s'exécute **localement**
sur :under:`votre propre machine.`

.. raw:: html

    <style type="text/css">
    .emscripten { padding-right: 0; margin-left: auto; font-size: 10px; margin-right: auto; display: block; }
    canvas.emscripten { border: 1px solid black; }
    textarea.emscripten { font-family: monospace; width: 80%; }
    div.emscripten { text-align: center; }
    table.noborder { border: 0; vertical-align: text-top; }
    </style>
    <button onclick="localStorage.removeItem('gnuplot.script');
    localStorage.removeItem('gnuplot.files');
    window.location.reload(true)">Effacer le stockage local !</button>
    <input id="files" name="files[]" multiple="" type="file"></input>
    <output id="list"></output>

Graphe et entrée texte
~~~~~~~~~~~~~~~~~~~~~~
+--------------------------------------+-------------------------------------+
| À gauche, le graphique, au format    | À droite, une entrée texte,         |
| **SVG**.                             | comme **GNU Plot** en console.      |
|                                      |                                     |
| Il est possible d'enregister ce      | Les 2 premières lignes doivent être |
| graphe, n'importe quand.             | gardées comme ça.                   |
+--------------------------------------+-------------------------------------+

.. raw:: html

    <table class="noborder"><tbody><tr><td>
    <img src="" id="gnuimg" type="image/svg+xml" width="600" height="400" class="float-right"/>
    </td><td style="width:100%;" valign="top">
    <textarea class="emscripten" id="gnuplot" rows="20" cols="80" onkeyup="scriptChange()">
    # Conserver les deux premières lignes
    set terminal svg enhanced size 600,500 fname 'calibri' fsize 10 mouse jsdir "_static/"
    set output 'sortie.svg'
    ##########################################################################
    set format cb "%4.1f"
    set view 49, 28, 1, 1.48
    set samples 70, 70
    set isosamples 60, 60
    set ticslevel 0
    set cbtics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
    set title "4D data (3D Heat Map)\nIndependent value color-mapped onto 3D surface" 
    set title  offset character 0, 1, 0 font "" norotate
    set xlabel "x" 
    set xlabel  offset character 3, 0, 0 font "" textcolor lt -1 norotate
    set xrange [ 5.00000 : 35.0000 ] noreverse nowriteback
    set ylabel "y" 
    set ylabel  offset character -5, 0, 0 font "" textcolor lt -1 rotate by -270
    set yrange [ 5.00000 : 35.0000 ] noreverse nowriteback
    set zlabel "z" 
    set zlabel  offset character 2, 0, 0 font "" textcolor lt -1 norotate
    set pm3d implicit at s
    set colorbox user
    set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.03, 0.6, 0 front noborder
    Z(x,y) = 100. * (sinc(x,y) + 1.5)
    sinc(x,y) = sin(sqrt((x-20.)**2+(y-20.)**2))/sqrt((x-20.)**2+(y-20.)**2)
    color(x,y) = 10. * (1.1 + sin((x-20.)/5.)*cos((y-20.)/10.))
    GPFUN_Z = "Z(x,y) = 100. * (sinc(x,y) + 1.5)"
    GPFUN_sinc = "sinc(x,y) = sin(sqrt((x-20.)**2+(y-20.)**2))/sqrt((x-20.)**2+(y-20.)**2)"
    GPFUN_color = "color(x,y) = 10. * (1.1 + sin((x-20.)/5.)*cos((y-20.)/10.))"
    splot '++' using 1:2:(Z($1,$2)):(color($1,$2)) with pm3d title "4 data columns x/y/z/color"
    </textarea>
    </td></tr></tbody></table>
    <br clear="all">
    <hr>
    <h2 style="float: left;">Messages de sorties :</h2>
    <textarea class="emscripten" id="output" rows="10" cols="80" style="font-family: monospace; font-size: 8pt">Chargement, veuillez patienter...</textarea>
    <input disabled="disabled" id="cleanout" type="button" onclick="output.value=''" value="Efface la sortie" style="margin: auto; display: block" />
    <script type="text/javascript" src="_static/gnuplot_api.new.js"></script>
    <script type="text/javascript">
    gnuplot = new Gnuplot('_static/gnuplot.new.js');
    gnuplot.onOutput = function(text) {
        document.getElementById('output').value += text + '\n';
        document.getElementById('output').scrollTop = 99999;
    };
    gnuplot.onError = function(text) {
        document.getElementById('output').value += 'ERR: ' + text + '\n';
        document.getElementById('output').scrollTop = 99999;
    };
    var lastTAContent = '';
    function scriptChange() {
        var val = document.getElementById("gnuplot").value;
        if (lastTAContent == val)
            return;
        localStorage["gnuplot.script"] = val;
        if (gnuplot.isRunning) {
            setTimeout(scriptChange, 1000);
        } else {
            lastTAContent = val;
            runScript();
        }
    };
    files = {};
    if (localStorage["gnuplot.files"])
        files = JSON.parse(localStorage["gnuplot.files"]);
    for (var key in files)
        gnuplot.onOutput("Fichier local trouvé : " + key + " avec " + files[key].length + " octets.");
    var runScript = function() {
        var editor = document.getElementById('gnuplot');   // textarea
        var start = Date.now();
        // "upload" files to worker thread
        for (var f in files)
            gnuplot.putFile(f, files[f]);

        gnuplot.run(editor.value, function(e) {
            gnuplot.onOutput('Le calcul a pris ' + (Date.now() - start) / 1000 + 's.');
            gnuplot.getFile('sortie.svg', function(e) {
                if (!e.content) {
                    gnuplot.onError("Fichier de sortie sortie.svg pas trouvé !");
                    return;
                }
                var img = document.getElementById('gnuimg');
                try {
                    var ab = new Uint8Array(e.content);
                    var blob = new Blob([ab], {"type": "image\/svg+xml"});
                    window.URL = window.URL || window.webkitURL;
                    img.src = window.URL.createObjectURL(blob);
                } catch (err) { // in case blob / URL missing, fallback to data-uri
                    if (!window.blobalert) {
                        alert('Attention : votre navigateur ne supporte pas les URLs de type BLOB. Le script va donc devoir utiliser des URI de données, ce qui requiert plus de mémoire et de temps :( ! Err: ' + err)
                        window.blobalert = true;
                    }
                    var rstr = '';
                    for (var i = 0; i < e.content.length; i++)
                        rstr += String.fromCharCode(e.content[i]);
                    img.src = 'data:image\/svg+xml;base64,' + btoa(rstr);
                }
            });
        });
    };
    // set the script from local storage
    if (localStorage["gnuplot.script"])
        document.getElementById('gnuplot').value = localStorage["gnuplot.script"];
    scriptChange();
    function handleFileSelect(evt) {
        var _files = evt.target.files; // FileList object

        // files is a FileList of File objects. List some properties.
        var output = [];
        for (var i = 0, f; f = _files[i]; i++) {
            output.push('<li><strong>', escape(f.name), '</strong> (', f.type || 'n/a', ') - ',
                    f.size, ' bytes, last modified: ',
                    f.lastModifiedDate ? f.lastModifiedDate.toLocaleDateString() : 'n/a',
                    '</li>');
            (function() {
                var reader = new FileReader();
                var fname = f.name;
                reader.onloadend = function(e) {
                    if (e.target.result) {
                        gnuplot.onOutput(fname + ": Lecture réussie - stockage du côté client (le fichier n'est pas envoyé à travers le réseau). " + e.target.result.length);
                        files[fname] = e.target.result;
                        localStorage["gnuplot.files"] = JSON.stringify(files);
                    }

                };
                reader.readAsText(f);
            })();
        }
        document.getElementById('list').innerHTML = '<ul>' + output.join('') + '</ul>';
    }
    document.getElementById('files').addEventListener('change', handleFileSelect, false);
    var cleanout = document.getElementById('cleanout');
    cleanout.disabled = false;
    cleanout.onclick = function() { document.getElementById('output').value = ""; };
    $(document).ready(function() {
        alert("Le terminal GNUPlot v4.6.3 semble bien initialisé !")
    });
    </script>


------------------------------------------------------------------------------

Copyrights
----------
 Cette page est *directement inspirée* de la page officielle.
 Les deux scripts utilisés ici, `gnuplot.new.js <_static/gnuplot.new.js>`_,
 et `gnuplot_api.new.js <_static/gnuplot_api.new.js>`_ sont la dernière version du projet écrit par
 Christian Huettig.

 La page officielle du projet est 
 `gnuplot.respawned.com <http://gnuplot.respawned.com/>`_.

GNU Plot
~~~~~~~~
 ``GNU Plot`` est © et ® du projet **GNU**, voir la page officielle
 `GNUPlot <http://www.gnuplot.info/>`_ pour plus
 de détails.
 Par exemple, de nombreuses démos sont présentes ici
 `<http://www.gnuplot.info/demo_canvas/>`_.

Emscripten
~~~~~~~~~~
 Le compilateur utilisé par Christian Huettig est
 ``Emscripten``, voir `github.com/kripken/emscripten 
 <https://github.com/kripken/emscripten>`_
 pour plus de détails.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
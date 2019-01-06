.. meta::
   :description lang=fr: Démo de l'intégration de JQuery SparkLine à Sphinx
   :description lang=en: Démo of JQuery SparkLine with Sphinx

###################################
 Démonstration de JQuery SparkLine
###################################

.. include:: .javascript.fr.rst

---------------------------------------------------------------------

À-propos
--------
Cette page est là pour présenter l'utilisation de
`JQuery SparkLine <http://omnipotent.net/jquery.sparkline>`_
dans des pages webs générées avec `Sphinx <http://sphinx-doc.org>`_.

.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter `celle là <index.html>`_.


---------------------------------------------------------------------

Des graphiques intégrés dans la page
------------------------------------
Importer le script
^^^^^^^^^^^^^^^^^^
Il faut d'abord charger la bibliothèque `jquery <http://jquery.com/>`_,
et ensuite le script `jquery.sparkline.js <_static/jquery.sparkline.min.js>`_,
avec une balise ``.. raw:: html`` et la commande *HTML*
``<script type="text/javascript" src="_static/jquery.sparkline.min.js"></script>``.

.. raw:: html

   <script type="text/javascript" src="_static/jquery.js"></script>
   <!-- SparkLine.js (http://omnipotent.net/jquery.sparkline) -->
   <script type="text/javascript" src="_static/jquery.sparkline.min.js"></script>


Déclarer les graphiques
^^^^^^^^^^^^^^^^^^^^^^^
Encore avec une balise ``.. raw:: html`` en *rST*
et la commande *HTML* ``<script type="text/javascript">…</script>"``.

On en génère 4, comme dans l'exemple sur la
`page de doc <http://omnipotent.net/jquery.sparkline/#s-docs>`_.

.. raw:: html

   <script type="text/javascript">
   $(function() {
   /** This code runs when everything has been loaded on the page */
   /* Inline sparklines take their values from the contents of the tag */
   $('.inlinesparkline').sparkline();

   /* Sparklines can also take their values from the first argument
   passed to the sparkline() function */
   var myvalues = [10,8,5,7,4,4,1];
   $('.dynamicsparkline').sparkline(myvalues);

   /* The second argument gives options such as chart type */
   $('.dynamicbar').sparkline(myvalues, {type: 'bar', barColor: 'green'} );

   /* Use 'html' instead of an array of values to pass options
   to a sparkline with data in the tag */
   $('.inlinebar').sparkline('html', {type: 'bar', barColor: 'red'} );
   });
   </script>


Afficher les graphiques
^^^^^^^^^^^^^^^^^^^^^^^
Toujours pareil, on utilise ``.. raw:: html`` en *rST* pour inclure
du code *HTML* (voir la source de cette page,
`sparkline.rst <https://bitbucket.org/lbesson/web-sphinx/src/master/sparkline.rst>`_).

.. raw:: html

   <p>Inline Sparkline: <span class="inlinesparkline">1,4,4,7,5,9,10</span>.</p>
   <p>Sparkline with dynamic data: <span class="dynamicsparkline">Loading..</span></p>
   <p>Bar chart with dynamic data: <span class="dynamicbar">Loading..</span></p>
   <p>Bar chart with inline data: <span class="inlinebar">1,3,4,5,3,5</span></p>


Et voilà !
^^^^^^^^^^
Ça devrait marcher :)

---------------------------------------------------------------------

Un exemple plus sympa
---------------------
On va essayer un exemple **plus intéressant** ?

.. warning:: Le script plante parfois…

.. raw:: html

   <script type="text/javascript">
   /**
   ** Draw the little mouse speed animated graph
   ** This just attaches a handler to the mousemove event to see
   ** (roughly) how far the mouse has moved
   ** and then updates the display a couple of times a second via
   ** setTimeout()
   **/
   function drawMouseSpeedDemo() {
    var mrefreshinterval = 500; // update display every 500ms
    var lastmouse_x=-1;
    var lastmouse_y=-1;
    var lastmousetime;
    var mousetravel = 0;
    var mpoints = [];
    var mpoints_max = 30;
    $('html').mousemove(function(e) {
        var mousex = e.pageX;
        var mousey = e.pageY;
        if (lastmouse_x > -1) {
            mousetravel += Math.max( Math.abs(mousex-lastmouse_x), Math.abs(mousey-lastmouse_y) );
        }
        lastmouse_x = mousex;
        lastmouse_y = mousey;
    });
    var mdraw = function() {
        var md = new Date();
        var timenow = md.getTime();
        if (lastmousetime && lastmousetime!=timenow) {
            var pps = Math.round(mousetravel / (timenow - lastmousetime) * 1000);
            mpoints.push(pps);
            if (mpoints.length > mpoints_max)
                mpoints.splice(0,1);
            mousetravel = 0;
            $('#mousespeed').sparkline(mpoints, { height: '200px', width: mpoints.length*20, tooltipSuffix: ' pixels per second' });
        }
        lastmousetime = timenow;
        setTimeout(mdraw, mrefreshinterval);
    }
    // We could use setInterval instead, but I prefer to do it this way
    setTimeout(mdraw, mrefreshinterval);
   };
   </script>
   <script type="text/javascript">/* <![CDATA[ */
   $(function() {
    drawMouseSpeedDemo();
   }); /* ]]> */
   </script>
   Mouse speed <span id="mousespeed">Loading…</span>.


Un autre exemple
----------------
J'ai essayé d'utiliser des données générées par Google Analytics
pour afficher un petit graphique d'activité sur le site sur les derniers jours,
mais **sans succès :(** !

.. seealso::

   `WakaTime <WakaTime.fr.html>`_

---------------------------------------------------------------------

Comment ça marche ?
-------------------
 Plus de détails sur `<http://omnipotent.net/jquery.sparkline/#s-docs>`_.


.. (c) Lilian Besson, 2011-2019, https://bitbucket.org/lbesson/web-sphinx/

###################################
 Un toplevel ``GNU Plot`` embarqué
###################################

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

   <script type="text/javascript" src="_static/toplevel.js"></script>
   <noscript><span style="color:red" align="center">
   Attention: votre navigateur semble ne pas supporter Javascript !</span>
   </noscript>
   <div id="toplevel" align=left>
   </div>


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
Cette page est *directement inspirée* de la page officielle.

Les deux scripts utilisés ici, `gnuplot.js <_static/gnuplot.js>`_,
et `gnuplot_api.js <_static/gnuplot_api.js>`_ ont été écrits par
Christian Huettig.

La page officielle du projet est 
`gnuplot.respawned.com <http://gnuplot.respawned.com/>`_.

.. include:: .bottom.fr.rst
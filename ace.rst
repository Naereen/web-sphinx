##############################
 Un éditeur de texte intégré
##############################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

L'éditeur **ACE** (second essai)
--------------------------------

.. raw:: html

   <textarea id="textarea" 
    style="position: relative; font-size: 21pt; height: 700px; width: 100%"
   >(* Un exemple en OCaml, le même que celui du Toplevel OCaml intégré *)
   let x = 10+10;;
   let y = x * 3;;
   String.make x 'a';;
   sin 1.;;
   let rec fact n = 
     if n = 0
     then 1.
     else float n *. fact (n - 1)
   ;;
   fact 20;;
   </textarea>
   <script type="text/javascript" src="_static/ace_main.js"></script>

------------------------------------------------------------------------------

.. seealso::

   Premier essai
      La page `<ace2.html>`_ reste disponible.
      Elle fonctionne moins bien, et n'est plus activement développée !

À propos
--------
 Comme dans `.special.rst <_sources/.special.txt>`_,
 j'utilise la directive ``.. raw:: html`` pour
 **embarquer du code** ``HTML`` dans la page produite par **Sphinx**.
 :blue:`C'est simple, c'est propre.`

.. todo:: Trouver un moyen d'enregistrer le fichier édité !
.. todo:: Trouver un moyen d'utiliser cet "éditeur" pour les toplevel OCaml, Python et GNU Plot.

Copyrights
----------
 **ACE** est © et ® d'AjaxOrg.
 Voir la page officielle du projet, `ajaxorg.github.com/ace
 <http://ajaxorg.github.com/ace/#nav=about>`_.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
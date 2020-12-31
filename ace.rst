##############################
 Un éditeur de texte intégré
##############################

.. include:: .javascript.fr.rst

------------------------------------------------------------------------------

L'éditeur de code **ACE**
-------------------------
.. raw:: html

   <textarea id="textarea"
    style="position: relative; font-size: 22pt; height: 700px; width: 100%;"
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

   Skulpt et Python
      Les pages `<skulpt.html>`_ et `<python.html>`_ montrent l'utilisation de
      cet éditeur de code minimaliste pour améliorer l'expérience utilisateur
      de toplevel Python intégrés dans une page web. Oui, c'est plutôt cool.


À propos
--------
Comme dans `.special.rst <_sources/.special.txt>`_,
j'utilise la directive ``.. raw:: html`` pour
**embarquer du code** ``HTML`` dans la page produite par **Sphinx**.
:blue:`C'est simple, c'est propre.`

À faire
~~~~~~~
.. todo:: Trouver un moyen d'enregistrer le fichier édité !
.. todo:: Trouver un moyen d'utiliser cet "éditeur" pour les toplevel OCaml et GNU Plot.

Copyrights
~~~~~~~~~~
 **ACE** est © et ® d'AjaxOrg. Voir la page officielle du projet,
 `ajaxorg.github.io/ace <http://ajaxorg.github.io/ace/#about>`_.

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

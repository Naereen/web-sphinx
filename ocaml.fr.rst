####################################
 Un **toplevel** ``OCaml`` embarqué
####################################

.. include:: .javascript.fr.rst

------------------------------------------------------------------------------

.. seealso:: Je recommande les outils suivants, plus modernes et plus complets !

  - `BetterOCaml.ml <https://betterocaml.ml/editor/>`_ est un bon petit éditeur de OCaml (avec le code à gauche, la sortie de son exécution à droite), développé par `un élève de MP* <https://github.com/jbdo99/>`_ en 2020) ;
  - `TryOCaml.OCamlPro.com <https://try.ocamlpro.com/>`_ est un autre bon environnement pour utiliser le système de base de OCaml en ligne, sans rien installer ! C'est fait par OCamlPro et la solution "officielle" ;
  - `Learn-OCaml <https://ocaml-sf.org/learn-ocaml-public/index.html>`_ est un environnement plus lourd et plus complet. Pas sûr qu'il marche en entier hors-ligne.

Le toplevel
-----------

.. warning:: Soucis de scrolling et de positionnement du contenu écrit par le toplevel.

.. raw:: html

   <h4>Toplevel OCaml 4.00.1</h4>
   <style type="text/css" media="screen">#toplevel {
        font-family: monospace;
        font-size: 18px;
        position: relative;
        height: 450px;
        width: 90%;
        margin-left: 40px;}</style>
   <script type="text/javascript" src="_static/toplevel.js"></script>
   <div align="center"><div id="toplevel" align="left"></div></div>
   </br><script type="text/javascript">
    window.alert("~~~ Le terminal OCaml (4.00.1) commence à s'initialiser… ~~~");
    $(document).ready(function() {
      window.alert("~~~ Le terminal OCaml (4.00.1) semble bien initialisé ! ~~~");
    });
   </script></br></br>


+----------------------------------+
| .. image:: .ocaml-powered.png    |
|    :scale: 130 %                 |
|    :align: right                 |
|    :alt: OCaml powered :)        |
|    :target: http://Caml.Inria.fr |
+----------------------------------+

------------------------------------------------------------------------------

.. seealso::

   Try Ocaml
      La page `<try-ocaml.fr.html>`_ présente **Try OCaml**, directement copié
      depuis `try.ocamlpro.com <http://try.ocamlpro.com>`_, qui présente les
      avantages suivants :

       * leçons intéractives en anglais (plus de support du français avec la v4 !);
       * support du "drag and drop" de fichiers;
       * permet de télécharger l'historique des entrées;
       * et le mieux : support du module ``Graphics`` !


Un exemple de programme OCaml
-----------------------------
 Le toplevel se charge avec les quelques lignes suivantes dans son *buffer*
 d'entrée :

.. code-block:: ocaml

   let x = 50+10;;
   let y = x * 3;;
   String.make x 'a';;
   sin 1.;;
   let rec fact n = if n = 0 then 1. else float n *. fact (n - 1);;
   fact 20;;
   "abc" < "def";;


À propos
--------
 Comme dans `.special.rst <_sources/.special.txt>`_,
 j'utilise la directive ``.. raw:: html`` pour
 **embarquer du code** ``HTML`` dans la page produite par **Sphinx**.
 :blue:`C'est simple, c'est propre.`

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
 * **OCaml** est © et ® Inria;
 * **toplevel.js** est obtenu par le compilateur **js_of_ocaml**.
     Pour plus d'infos, voir `<http://www.ocsigen.org/js_of_ocaml/>`_.

Remerciements
-------------
 * Merci aux auteurs de **js_of_ocaml** (voir `<http://ocsigen.org/js_of_ocaml>`_);
 * Merci aux auteurs d'**OCaml** (voir `<http://OCaml.org/>`_);


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

########################################################
 Un **toplevel** ``OCaml`` embarqué (version Try OCaml)
########################################################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

.. warning:: Erreurs CSS

   Je n'ai toujours pas réglé certaines erreurs CSS, signalées par le
   valideur W3C.
   Notamment, les feuilles CSS de **Try OCaml** chamboulent complètement
   l'apparence de la page, et c'est laid !
   
.. todo:: Régler ce soucis de feuilles de styles !

Le toplevel
-----------
.. raw:: html

   <style type="text/css" src="_static/try-ocaml/bootstrap.css"></style>
   <style type="text/css" src="_static/try-ocaml/style.css"></style>
   <script type="text/javascript" src="jquery-1.4.2.min.js"></script>
   <script type="text/javascript" src="jquery.console.js"></script>
   <div class="content">
    <div class="container">
     <div class="row">
      <div class="span7">
       <h1 id="main-title">Try OCaml</h1>
        <p id="short-intro">OCaml is a strongly typed functional language. It is concise
            and fast, enabling you to improve your coding efficiency
            while producing code with higher quality.</p>
        <div id="lesson-position">
            <span id="lesson-left-button"></span>
            <span id="lesson-number"></span>
            <span id="lesson-right-button"></span>
            <span id="lesson-step-spacer"></span>
            <span id="step-left-button"></span>
            <span id="lesson-step"></span>
            <span id="step-right-button"></span>
       </div>
       <div class="alert-message block-message info" id="lesson-text">
            Type <code>lesson 1</code> to start the tutorial. <br />
            <em>(click on the code to insert)</em></div>
       <div id="lesson-message"></div>
       <div id="languages"></div>
       <div id="menu-lessons"></div>
    </div>
    <div class="span9 ocaml">
     <div id="toplevel-container">
      <pre id="output"></pre>
      <div id="sharp">#</div>
      <div id="toplevel"></div>
     </div>
     <div id="buttons"></div>
     <div id="graphics"></div>
      <table class="zebra-striped">
       <thead><tr><th id="text-commands">Commands</th><th id="text-effects">Effects</th></tr></thead>
        <tr><td id="text-enter">Enter / Return</td> <td id="text-submit">Submit code</td></tr>
        <tr><td id="text-arrows">Up / Down</td><td id="text-history">Cycle through history</td></tr>
        <tr><td id="text-newline">Shift + Enter</td><td id="text-multiline">Multiline edition</td></tr>
        <tr><td><code>lesson 1</code></td> <td id="text-lesson-1">Move to lesson 1</td></tr>
        <tr><td><code>step 1</code></td> <td id="text-step-1">Move to step 1 of the current lesson</td></tr>
        <tr><td><code>lessons ()</code></td> <td id="text-lessons">See available lessons</td></tr>
        <tr><td><code>steps ()</code></td> <td id="text-steps">See available steps in the current lesson</td></tr>
      </table>
   </div></div></div></div>
   <script type="text/javascript" src="_static/try-ocaml/try-ocaml.js"></script>
   <script type="text/javascript">window.alert("~~~ Le terminal Try OCaml (4.00.1) semble bien initialisé ! ~~~")</script>

.. image:: .ocaml-powered.png
   :scale: 140 %
   :align: center
   :alt: OCaml powered :)
   :target: http://caml.inria.fr

------------------------------------------------------------------------------

.. seealso::

   Toplevel OCaml
      La page `<ocaml.html>`_ présente un toplevel ``OCaml`` plus simpliste,
      non à-jour, mais qui à l'avantage d'être plus simple à mettre en place
      (un seul fichier, `<_static/toplevel.js>`_, pas de jeu de CSS).


Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts 
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

Copyrights
----------
 * **OCaml** est © et ® INRIA;
 * **Try OCaml** est © et ® OCaml Pro.

Remerciements
-------------
 * Merci aux auteurs de **TryOCaml** (`try.ocamlpro.com <http://try.ocamlpro.com/>`_).
   La page de référence pour ces morceaux de code est 
   `github.com/OCamlPro/tryocaml <https://github.com/OCamlPro/tryocaml>`_.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
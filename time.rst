#######################
 Une horloge en base 3
#######################
.. include:: .special.rst

.. important::

   À priori, cette page et son terminal embarqué devraient
   **fonctionner sur n'importe quel navigateur**,
   pour peu :green:`qu'il supporte Javascript` !

------------------------------------------------------------------------------

L'horloge
---------

.. raw:: html

   <noscript><span style="color:red" align="center">
   Attention: votre navigateur semble ne pas supporter Javascript !</span>
   </noscript>
   <script src="_static/jquery.js"></script>
   <style type="text/css">
   .content {
     text-align: center;
   }
   #trs {
     background: #EEEEDD;
     padding: 20px;
     display: inline-block;
     box-shadow: 0 0 4px #EEEEEE;
     text-align: right;
     margin-top: 50px;
   }
   #trs, .val {
     -webkit-border-radius: 10px;
     -moz-border-radius: 10px;
     border-radius: 10px;
   }
   #hour, #minute, #second {
     display: inline-block;
   }
   .val {
     height: 20px;
     width: 20px;
     display: inline-block;
     margin-left: 5px;
   }
   .val0 {background: #F8F8F0}
   .val1 {background: #F29400}
   .val2 {background: #2B5573}
   .val3 {background: #006400}
   </style>


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

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts 
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.

.. include:: .bottom.fr.rst
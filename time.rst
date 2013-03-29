#######################
 Une horloge en base 3
#######################
.. include:: .special.rst
.. include:: .javascript.rst

------------------------------------------------------------------------------

L'horloge
---------

  Cette horloge est un peu particulière : elle est en base 3 !

   * un boule blanche est **0**;
   * un boule :green:`verte` est **1**;
   * un boule :blue:`bleue` est **2**.


.. raw:: html

   <noscript><span style="color:red" text-align="center">
   Attention: votre navigateur semble ne pas supporter Javascript !</span>
   </noscript>
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
     margin-top: 20px;
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
   .val1 {background: #03CF00}
   .val2 {background: #2B5573}
   .val3 {background: #006400}
   </style>
   <script src="_static/horloge.js"></script>
   <div id="trs" align="center">
    <div><FONT color="green"><B>Temps = Heure : Minute : Seconde</B></FONT></div>
    <div><i>Heure = <div id="hour"><div class="val val0"></div><div class="val val2"></div><div class="val val0"></div><div class="val val2"></div></div></i></div>
    <div><i>Minute = <div id="minute"><div class="val val1"></div><div class="val val1"></div><div class="val val2"></div><div class="val val0"></div></div></i></div>
    <div><i>Seconde = <div id="second"><div class="val val1"></div><div class="val val0"></div><div class="val val0"></div><div class="val val0"></div></div></i></div>
   </div>

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
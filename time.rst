#########################
 Une horloge *en base 3*
#########################

.. include:: .javascript.rst

------------------------------------------------------------------------------

L'horloge
---------
Cette horloge est un peu particulière : elle est *en base 3* !

 * un boule blanche est **0**;
 * un boule :green:`verte` est **1**;
 * un boule :blue:`bleue` est **2**.


.. raw:: html

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
   <script type="text/javascript" src="_static/horloge.js"></script>
   <div id="trs" align="center">
    <div><font color="green">Temps = Heure : Minute : Seconde</font></div>
    <div>Heure = <div id="hour"><div class="val val0"></div><div class="val val2"></div><div class="val val0"></div><div class="val val2"></div></div></div>
    <div>Minute = <div id="minute"><div class="val val1"></div><div class="val val1"></div><div class="val val2"></div><div class="val val0"></div></div></div>
    <div>Seconde = <div id="second"><div class="val val1"></div><div class="val val0"></div><div class="val val0"></div><div class="val val0"></div></div></div>
   </div>

------------------------------------------------------------------------------

À propos
--------
Comme dans `.special.rst <_sources/.special.txt>`_, j'utilise la directive ``.. raw:: html`` pour
**embarquer du code** ``HTML`` dans la page produite par **Sphinx**. :navy:`C'est simple, c'est propre.`

Cette page était juste la pour une démo (première intégration de ``HTML`` et ``JavaScript`` dans *Sphinx*),
maintenant elle sert à rien (si ce n'est avoir une superbe horloge en base 3 :) !!).

.. note:: Un aspect nostalgique !

   En fait, je garde cette page (et ce petit programme javascript) ici, aussi par *nostalgie*.
   Quand je commençais à écrire des pages web (janvier 2012), c'est le premier code Javascript sur lequel je me suis entraîné !

Hébergements
------------
 Les scripts **Javascript** utilisés sur mes pages sont désormais
 hébergés sur ce dépot *git* : `lbesson/web-sphinx-scripts
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, sur **bitbucket.org**.


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

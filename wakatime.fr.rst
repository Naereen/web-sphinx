.. meta::
   :description lang=en: Why and how to use WakaTime to monitor the time you spend on programming
   :description lang=fr: Comment et pourquoi utiliser WakaTime pour surveiller le temps passé à programmer

#############################################################
 WakaTime permet de monitorer ses habitudes de programmation
#############################################################
.. include:: .special.rst

Concept ?
---------
 Un sportif peut chercher à surveiller précisément quel entraînement il pratique quotidiennement, quel muscle il développe etc.

 Et bien, la même façon, les programmeurs et développeurs peuvent être intéressés par savoir sur quels projets ils passent le plus de temps, sur quels fichiers ou dossiers ils travaillent etc.

Pourquoi ?
----------
 La vraie raison semble purement liée à l'égo : les programmeurs sont fiers de voir le temps qu'il passe sur leurs projets.

------------------------------------------------------------------------------

Depuis quelques mois, j'expérimente un concept étonnant, et intéressant.

Comment ?
---------
Le but de `WakaTime <https://wakatime.com/>`_ est de proposer aux développeurs une façon simple, *"sécurisée"* et centralisée de surveiller le temps passé à programmer.

Et ils font ça bien, puisque `WakaTime`_ se présente sous deux formes :

 - `une interface web <https://wakatime.com/>`_, fort bien conçue, qui permet notamment de visualiser son activité,
 - et `une très grande collection <https://wakatime.com/help/getting-started/welcome>`_ de *plugin*, ces petits logiciels (aussi appelés greffons) que vous pouvez facilement ajouter à votre éditeur de texte.

Le concept est simple : votre éditeur de texte vous espionne, envois les données en ligne sur les serveurs de `WakaTime`_, et ensuite vous (et les responsables du service, ainsi que la NSA) pouvez librement consulter ces données.

------------------------------------------------------------------------------

Dans mon cas
------------
Installation et utilisation de WakaTime
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
J'utilise `Sublime Text 3 <sublimetext.fr.html>`_ de façon quasi exclusive, et depuis presque un an et demi.

Sans surprise, `WakaTime`_ propose un greffon pour `Sublime Text 3`, mon éditeur favori.

`Il s'installe en deux clics <https://packagecontrol.io/packages/WakaTime>`_, et s'intègre à la perfection (discret, charge système minimum, accumule les données et les envoit plus tard si l'ordinatueur est déconnecté du réseau etc).


Aperçus des stats ?
^^^^^^^^^^^^^^^^^^^
Durant les 8 premiers jours, j'étais en `mode « développement intensif » <https://bitbucket.org/lbesson/>`_ pour conclure certains projets (`StrapDown.js <http://lbesson.bitbucket.org/md/>`_, `MEC Students Face-Book demo <http://perso.crans.org/besson/MEC_Students/>`_ etc), mais j'étais tout de même un peu effrayé de voir **29h d'activité en 8 jours !**

Il est aussi possible de voir :
 - sur quels projets vous passez le plus de temps,
 - quels types de fichiers tu travailles, jour par jour,
 - et même quels fichiers (cela peut être désactivé).

Par exemple, la première semaine, cela se répartissait selon : 30% HTML, 29% Python, 15% reStructuredText, 6% Bash, 12% Markdown.

Inclure un graphique via une iframe ?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Ci dessus est intégrée la `page https://wakatime.com/@lbesson <https://wakatime.com/@lbesson>`_ :

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block; margin:auto">
   <iframe src="https://wakatime.com/@lbesson" allowtransparency="true" frameborder="0" scrolling="0" width="980" height="450"></iframe>
   </p>


.. note:: En attendant de faire mieux...

   J'aimerai trouver un moyen pour n'inclure que le graphique en camembert, et pas toute la page.

------------------------------------------------------------------------------

Un bonus : accéder aux statistiques en ligne de commande
--------------------------------------------------------
Il est facile d'installer l'outil `WakaTimeCLI <https://github.com/wakatime/WakaTimeCLI/tree/master/src>`_,
avec la commande ``npm install wakatimecli``.

.. note:: nodejs et npm sont requis

    Cela demande d'avoir déjà installé sur votre machine `nodejs <https://nodejs.org/>`_ et son gestionnaire de paquet `npm <https://www.npmjs.com/>`_.


Cet outil en ligne de commande se base `sur cette API <https://wakatime.com/developers/>`_, et est facile à utiliser.
La première commande est `wakatime -help <https://github.com/wakatime/WakaTimeCLI/blob/master/src/lib/wakatime.js#L245>`_ qui montre les différentes options acceptées par cet outil : ::

    Please pass an option:
      -? or -help
      -u or -user
      -t or -today
      -y or -yesterday
      -w or -week


L'aide (``wakatime -help``) n'est pas bien écrite, mais on peut deviner son utilisation `ici directement dans son code source <https://github.com/wakatime/WakaTimeCLI/blob/master/src/lib/wakatime.js#L237>`_.


.. note:: Cet outil produit une sortie en couleur, cool !

   C'est moins cool lorsqu'on s'`aperçoit que les couleurs sont incluses brutalement <https://github.com/wakatime/WakaTimeCLI/blob/master/src/lib/wakatime.js#L10>`_ dans le script...
   Comme l'explique `ce poste <http://stackoverflow.com/a/6307894>`_, ce n'est pas une bonne pratique.

   Merci `à cette astuce à coup de sed <http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed>`_ (` | sed -r "s:\\x1B\\[[0-9;]\\*[mK]::g"`).


Ensuite, il faut ajouter `votre clé API Key (disponible dans les réglages sur Wakatime.com) <https://wakatime.com/settings>`_ : ::

    wakatime -api yourApiKeyHere


Par exemple, la commande `wakatime -w <https://github.com/wakatime/WakaTimeCLI/blob/master/src/lib/wakatime.js#L245>`_ donne le temps total passé sur son (ses) éditeur(s) de code durant les 7 derniers jours.

.. runblock:: console

   /home/lilian/bin/mywakatime | head -n3


------------------------------------------------------------------------------

.. todo:: Terminer de l'écrire + capture d'écran ?

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

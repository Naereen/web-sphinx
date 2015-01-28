.. meta::
   :description lang=en: Why and how to use WakaTime to monitor the time you spend on programming
   :description lang=fr: Comment et pourquoi utiliser WakaTime pour surveiller le temps passé à programmer

#################################################################
 Utiliser WakaTime pour surveiller le temps passé à programmer ?
#################################################################
.. include:: .special.rst
.. warning:: Encore en rédaction !

Concept ?
---------
 Un sportif peut chercher à surveiller précisément quel entraînement il pratique quotidiennement, quel muscle il développe etc.

 Et bien, la même façon, les programmeurs et développeurs peuvent être intéressés par savoir sur quels projets ils passent le plus de temps, sur quels fichiers ou dossiers ils travaillent etc.

Pourquoi ?
----------
 La vraie raison semble purement liée à l'égo : les programmeurs sont fiers de voir le temps qu'il passe sur leurs projets.

------------------------------------------------------------------------------

Depuis quelques semaines, j'expérimentais un concept étonnant, et intéressant.

Comment ?
---------
Le but de `WakaTime <https://wakatime.com/>`_ est de proposer aux développeurs une façon simple, *"sécurisée"* et centralisée de surveiller le temps passé à programmer.

Et ils font ça bien, puisque `WakaTime`_ se présente sous deux formes :

 - `une interface web <https://wakatime.com/>`_, fort bien conçue, qui permet notamment de visualiser son activité,
 - et `une très grande collection <https://wakatime.com/help/getting-started/welcome>`_ de *plugin*, ces petits logiciels (aussi appelés greffons) que vous pouvez facilement ajouter à votre éditeur de texte.

Le concept est simple : votre éditeur de texte vous espionne, envois les données en ligne sur les serveurs de `WakaTime`_, et ensuite vous (et les responsables du service, ainsi que la NSA) pouvez librement consulter ces données.

.. note:: Des captures d'écrans viendront. Peut-être.

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

.. todo:: Terminer de l'écrire + capture d'écran ?

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

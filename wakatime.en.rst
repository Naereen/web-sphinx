.. meta::
   :description lang=en: Why and how to use WakaTime to monitor the time you spend on programming
   :description lang=fr: Comment et pourquoi utiliser WakaTime pour surveiller le temps passé à programmer

###########################################################################
 Why and how to use WakaTime to monitor the time you spend on programming?
###########################################################################
.. include:: .special.rst

.. todo:: Conclude translation!

What is this weird idea?
------------------------
 A professional sportive tries to monitor precisely his daily training process, including his food, which muscle she/he is working on etc.

 Well, similarly, developers and programmers might be interested to know on which projects they spend more time, on which files or directories they work on etc.

Why exactly?
------------
 Hum, in fact, the real reason seems to be pure ego: programmers are proud to see how much time they can work on each of their projects.

------------------------------------------------------------------------------

With this in mind, let me present an interesting and peculiar tool I have been using from the last few months. 

How can we monitor our programming time?
----------------------------------------
The goal of `WakaTime <https://wakatime.com/>`_ is to offer to any developer an easy, (relatively) *"secured"* and centralized way to monitor the time she/he spend on programming, on a daily, weekly or monthly basis.

And they do the job extremely well, because `WakaTime`_ offers two things:

 - `a nice web interface <https://wakatime.com/>`_, well designed (responsive of course), to visualize your activity,
 - and  `a really rich collection <https://wakatime.com/help/getting-started/welcome>`_ of *plug-in*s, you know, these small softwares that you can easily add to `your favorite text editor <sublimetext.en.html>`_.

The concept is quite simple after: your text editor is spying on you and each aspect of your programming activity, to send the data on-line on `Wakatime`_ servers, and then you (and their sys-admins, and NSA of course) can easily read and use your personal data.

------------------------------------------------------------------------------

In my situation
---------------
Installation and use of WakaTime
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
I am using `Sublime Text 3 <sublimetext.en.html>`_ almost exclusively, and from now 1 year and a half.
Without any surprise, the `WakaTime`_ team had written a plug-in for `Sublime Text 3`.

`You can install it with two clicks <https://packagecontrol.io/packages/WakaTime>`_, and the plug-in will integrate nicely in `ST3 <sublimetext.en.html>`_ (discrete, minimal system workload, and it can even stores the data in order to send them later if your computer is temporarily disconnected from Internet etc).


Overview of the stats ?
^^^^^^^^^^^^^^^^^^^^^^^

 During the first 8 days, I was like in a `coding marathon <https://bitbucket.org/lbesson/>`_ to conclude some projects (`StrapDown.js <http://lbesson.bitbucket.org/md/>`_, my `MEC Students Face-Book demo <http://perso.crans.org/besson/MEC_Students/>`_ etc), but still, I was kind of scared to see that I used my text editor for **29 hours in 8 days!**

It is also possible to see:

 - on which project do you spend the most of your time,
 - which file-types are the more used, on a daily basis,
 - and even on which files have you worked one (this last thing can be disabled).

For instance, during my first week of use, the repartition was about: 30% HTML, 29% Python, 15% reStructuredText, 6% Bash, 12% Markdown.

Include a graphic of these stats here, with an iframe?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Below is included that `page https://wakatime.com/@lbesson <https://wakatime.com/@lbesson>`_, with an iframe:

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block; margin:auto">
   <iframe src="https://wakatime.com/@lbesson" allowtransparency="true" frameborder="0" scrolling="0" width="980" height="450"></iframe>
   </p>


.. note:: Before I find anything better...

   I would love to find an easy way to just include the pie chart, and not the entire page.

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

   Merci `à cette astuce à coup de sed <http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed>`_ (`` | sed -r "s:\\x1B\\[[0-9;]*[mK]::g"``).


Ensuite, il faut ajouter `votre clé API Key (disponible dans les réglages sur Wakatime.com) <https://wakatime.com/settings>`_ : ::

    wakatime -api yourApiKeyHere


Par exemple, la commande `wakatime -w <https://github.com/wakatime/WakaTimeCLI/blob/master/src/lib/wakatime.js#L245>`_ donne le temps total passé sur son (ses) éditeur(s) de code durant les 7 derniers jours.

.. runblock::

   wakatime -w | sed -r "s:\\x1B\\[[0-9;]*[mK]::g" | head -n3


------------------------------------------------------------------------------

.. todo:: Terminer de l'écrire + capture d'écran ?

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

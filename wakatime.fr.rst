.. meta::
   :description lang=en: Why and how to use WakaTime to monitor the time you spend on programming
   :description lang=fr: Comment et pourquoi utiliser WakaTime pour surveiller le temps passé à programmer

#####################################################################################
 Pourquoi et comment utiliser WakaTime pour monitorer ses habitudes de programmation
#####################################################################################


Concept ?
---------
 Un sportif peut chercher à surveiller précisément quel entraînement il pratique quotidiennement, quel muscle il développe etc.

 Et bien, la même façon, les programmeurs et développeurs peuvent être intéressés par savoir sur quels projets ils passent le plus de temps, sur quels fichiers ou dossiers ils travaillent etc.

Pourquoi ?
----------
 Hum… en fait, la vraie raison semble purement liée à l'égo : les programmeurs sont *fiers* de voir *tout le temps* qu'il passe sur leurs projets.

.. warning:: Si vous êtes préoccupé-e par votre vie privée, vous devez plutôt utiliser un outil local unique tel que le grand `ActivityWatch <https://activitywatch.net/>`_, qui offre un plugin "surveillant" votre activité, pour quelques éditeurs, y compris `VSCode <visualstudiocode.en.html>`_ que j'utilise et conseille d'utiliser ! Les données restent locales et aucun espionnage n'est possible avec ActivityWatch.

.. todo:: Essayer les deux tout le mois d'avril, puis supprimer WakaTime si je suis content de ActivityWatch ?

------------------------------------------------------------------------------

Cette introduction étant faite, laissez-moi vous présenter un outil intéressant que j'utilise depuis quelque temps.

Comment ?
---------
Le but de `WakaTime <https://wakatime.com/>`_ est de proposer aux développeurs une façon simple, *"sécurisée"* et centralisée de surveiller le temps passé à programmer.

Et ils font ça bien, puisque `WakaTime`_ se présente sous trois formes :

 - `une interface web <https://wakatime.com/>`_, fort bien conçue, qui permet notamment de visualiser son activité,
 - `une très grande collection <https://wakatime.com/help/getting-started/welcome>`_ de *plugin*, ces petits logiciels (aussi appelés greffons) que vous pouvez facilement ajouter à votre `éditeur de texte favori <visualstudiocode.en.html>`_,
 - et `un moyen très facile d'intégrer certains graphiques <https://wakatime.com/share>`_ sur un site web, un blog Twitter, Facebook etc.

Le concept est simple : votre éditeur de texte vous espionne, envois les données en ligne sur les serveurs de `WakaTime`_, et ensuite vous (et les responsables du service, ainsi que la NSA bien-sûr) pouvez librement consulter ces données.
*Effrayant, non ?*

------------------------------------------------------------------------------

Dans mon cas
------------
Installation et utilisation de WakaTime
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
J'utilisais `Sublime Text 3 <sublimetext.fr.html>`_ de façon quasi exclusive durant 4 ans.
Sans surprise, `WakaTime`_ propose un greffon pour `Sublime Text 3`, mon éditeur favori.

`Il s'installe en deux clics <https://packagecontrol.io/packages/WakaTime>`_, et s'intègre à la perfection (discret, charge système minimum, et il peut même accumuler les données et les envoit plus tard si l'ordinateur est déconnecté du réseau).

J'utilise désormais `Visual Studio Code <visualstudiocode.fr.html>`_, et il y a bien sûr aussi une extension pour Wakatime `qui s'installe rapidement <https://marketplace.visualstudio.com/items?itemName=WakaTime.vscode-wakatime>`_ aussi.


Aperçus des statistiques ?
^^^^^^^^^^^^^^^^^^^^^^^^^^
Durant les 8 premiers jours (après avoir installé le greffon, en janvier 2015), j'étais en `"mode" « développement intensif » <https://bitbucket.org/lbesson/>`_ pour conclure certains projets (`StrapDown.js <http://lbesson.bitbucket.io/md/>`_, `MEC Students Face-Book demo <http://perso.crans.org/besson/MEC_Students/>`_ etc), mais j'étais tout de même un peu effrayé de voir **29h d'activité en 8 jours !**

Il est aussi possible de voir :

 - sur quels *projets* vous passez le plus de temps,
 - quels *types de fichiers* vous travaillez, jour par jour,
 - et même *quels fichiers* (cela peut être désactivé).


Par exemple, la première semaine, cela se répartissait selon : 30% HTML, 29% Python, 15% reStructuredText, 6% Bash, 12% Markdown.

------------------------------------------------------------------------------

Partager ces statistiques ?
---------------------------
Temps passé à programmer durant les 30 derniers jours
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Ce premier graphique montre combien de temps je code chaque jour (environ) :

.. raw:: html

   <figure><embed width="680" type="image/svg+xml" src="https://wakatime.com/@lbesson/5d1ec603-73b0-44b9-b61e-5eeda2490e51.svg"></embed></figure>


Langages utilisés durant les 30 derniers jours
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Vous pouvez voir que j'utilise principalement `Python <apprendre-python.fr.html>`_ et `Bash <bin.html>`_, `LaTeX <./publis/latex/>`_ et `reStructuredText <demo.html>`_, et Markdown (ou HTML, si c'est une page utilisant `StrapDown.js <http://lbesson.bitbucket.io/md/>`_) :

.. raw:: html

   <figure><embed width="680" type="image/svg+xml" src="https://wakatime.com/@lbesson/9f6c0b0b-6806-4afa-9a4e-651ee6201be0.svg"></embed></figure>


Et depuis le début de mon utilisation de WakaTime :

.. raw:: html

   <figure><embed width="680" type="image/svg+xml" src="https://wakatime.com/@lbesson/648eaa51-38c1-47a9-9ac4-b5c434997f7e.svg"></embed></figure>


Éditeurs de textes utilisés
^^^^^^^^^^^^^^^^^^^^^^^^^^^
WakaTime détecte que j'ai utilisé l'extraordinaire `Visual Studio Code <visualstudiocode.en.html>`_ depuis 2018 et `Sublime Text <sublimetext.html>`_ avant 2018, pour environ ~90% de mon temps d'écriture et de programmation quotidien,
et Bash et `PyCharm IDE <https://www.jetbrains.com/pycharm/>`_ pour les ~10% restant :

.. raw:: html

   <figure><embed width="480" type="image/svg+xml" src="https://wakatime.com/@lbesson/b6e7a8c3-f9b2-46d0-b265-65adf009d58d.svg"></embed></figure>


.. note::

   WakaTime ne compte pas l'utilisation de `GNU Nano <NanoSyntax.html>`_, `GNU Octave GUI <http://www.gnu.org/software/octave/>`_, ou `Spyder <https://www.spyder-ide.org/>`_ pour Python 2/3.
   Par contre, désormais `ils proposent des greffons WakaTime pour Bash, Zsh et iTerm (terminaux) <https://wakatime.com/help/plugins/terminal>`_ !


Partager les stats d'un projet en particulier
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Il est aussi possible de partager les statistiques d'un projet en particulier, grâce à un lien spécifique, comme `<https://wakatime.com/@lbesson/projects/qdkkfmhcoi>`_ par exemple (correspondant à `ce project <https://bitbucket.org/lbesson/web-sphinx/>`_).


Inclure un graphique via une iframe ?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Ci dessus est intégrée la `page https://wakatime.com/@lbesson <https://wakatime.com/@lbesson>`_ :

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block; margin:auto">
   <iframe src="https://wakatime.com/@lbesson" allowtransparency="true" frameborder="0" scrolling="0" width="980" height="450"></iframe>
   </p>


.. note:: En attendant de faire mieux…

   :line:`J'aimerai trouver un moyen pour n'inclure que le graphique en camembert, et pas toute la page.`
   :red:`Correction :` Le 19 décembre (2015), j'ai reçu un courriel personnel de `Alan Hamlet <https://github.com/alanhamlett>`_ PDG et créateur de WakaTime, pour m'informer de la nouvelle fonctionnalité de `partage de graphiques <https://wakatime.com/share>`_ WakaTime.
   Les graphiques inclus ci-dessus sont de bons exemples de ce qu'apporte cette toute nouvelle fonctionnalité (que je trouve très cool !).


`Aperçu complet de 2015 <https://wakatime.com/a-look-back-at-2015>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Environ 600 heures en tout en 2015, alors que la moyenne des utilisateurs de WakaTime était de 269h, la médiane à 193h (mais le max à 2342h !).
- Une moyenne quotidienne de 2 heures 27 minutes en 2015, alors que la moyenne des utilisateurs de WakaTime était de 44 min, et la médiane à 31 min (mais le max à 6 h 25 min !).
- Et pour le choix de langages, j'ai surtout utilisé `Markdown <https://wakatime.com/leaders/markdown>`_ (177 h), `LaTeX <https://wakatime.com/leaders/latex>`_ (160 h), `Python <https://wakatime.com/leaders/python>`_ (151 h) et `reStructuredText <demo.html>`_ (85 h, et `j'étais souvent 1er utilisateur de reStructuredText dans le tableau des utilisateurs les plus actifs sur WakaTime <https://wakatime.com/leaders/restructuredtext>`_ !); et les tous les autres langages sont à moins de 5h/an (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `Octave/Matlab <https://wakatime.com/leaders/matlab>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc).
- `Voir les captures d'écran dans ce dossier (2015) <./_images/WakaTime_a_look_back_at_2015/>`_ si besoin.


`Aperçu complet de 2017 <https://wakatime.com/a-look-back-at-2017>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Comme en 2015, environ 600 heures en tout en 2017 (611h), alors que la moyenne des utilisateurs de WakaTime était de 249h (mais le max à 3468h !).
- Une moyenne quotidienne de 2 heures 17 minutes en 2017, alors que la moyenne des utilisateurs de WakaTime était de 41 min (mais le max à 9 h 30 min, ce codeur doit être un grand passionné !).
- J'ai codé à 100% sous GNU/Linux (fan de XUbuntu comme toujours), et 303h avec `Sublime Text <sublimetext.fr.html>`_, 282h avec `Visual Studio Code <visualstudiocode.fr.html>`_ et 45h avec PyCharm. GNU Nano, Firefox et Jupyter ne sont pas comptés (mais `uLogMe <https://github.com/Naereen/uLogMe/>`_ me dit que je n'y passe pas beaucoup de temps de toute façon).
- Projets par projets, j'ai codé `266h pour ce projet pour ma thèse (SMPyBandits) <https://smpybandits.github.io/>`_, `48h pour cet article <https://hal.inria.fr/hal-01629733>`_, `41h pour ma thèse en général <https://perso.crans.org/besson/phd/>`_, `38h pour mes slides <https://github.com/Naereen/slides>`_, `20h pour ce site web <https://bitbucket.org/lbesson/web-sphinx/>`_, `17h pour mes scripts et configuration Bash <https://bitbucket.org/lbesson/bin/>`_, `10h pour mon blog de cuisine <https://perso.crans.org/besson/cuisine/>`_, `9h pour mes notebooks (mais ça ne compte pas le temps passé dans Jupyter) <https://github.com/Naereen/notebooks>`_, et moins de 8h pour tous les `autres <https://bitbucket.org/lbesson/>`_ `projets <https://github.com/Naereen/>`_.
- Et pour le choix de langages, j'ai surtout utilisé `Python <https://wakatime.com/leaders/python>`_ (277 h), `Markdown <https://wakatime.com/leaders/markdown>`_ (107 h), `LaTeX <https://wakatime.com/leaders/latex>`_ (135 h),  et `reStructuredText <demo.html>`_ (28 h); et les tous les autres langages sont à moins de 5h/an (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `Octave/Matlab <https://wakatime.com/leaders/matlab>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc).
- `Voir les captures d'écran dans ce dossier (2017) <./_images/WakaTime_a_look_back_at_2017/>`_ si besoin.


`Aperçu complet de 2018 <https://wakatime.com/a-look-back-at-2018>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Un peu moins qu'en 2017 j'ai codé environ 600 heures en tout en 2018 (587h), alors que la moyenne des utilisateurs de WakaTime était de 320h (ça a augmenté depuis les premières années !).
- Une moyenne quotidienne très stable, à 2 heures 18 minutes en 2018, alors que la moyenne des utilisateurs de WakaTime était de 52 minutes (aussi augmenté !).
- Mon jour le plus intense a été le 10 octobre 2018, avec 10 heures 50. Je pense que c'était pour terminer ces deux articles là, `HAL-02049824 <https://hal.inria.fr/hal-02049824>`_ et `HAL-02006825 <https://hal.inria.fr/hal-02006825>`_ !
- J'ai codé à 100% sous GNU/Linux (fan de XUbuntu comme toujours), et 100% avec `Visual Studio Code <visualstudiocode.fr.html>`_. GNU Nano, Firefox et Jupyter ne sont pas comptés (mais `uLogMe <https://github.com/Naereen/uLogMe/>`_ me dit que j'y passe moins de temps de toute façon, quoique j'ai utilisé Jupyter beaucoup plus en 2018, avec ces deux projets `ParcourSup.py <https://github.com/Naereen/ParcourSup.py/>`_ et `notebooks <https://github.com/Naereen/notebooks/>`_).
- Projets par projets, j'ai codé `171h pour ce projet pour ma thèse (SMPyBandits) <https://smpybandits.github.io/>`_, `76h pour le code LaTeX de ce long article <https://hal.inria.fr/hal-01736357>`_, `21h pour mes slides <https://github.com/Naereen/slides>`_, `10h pour ce site web <https://bitbucket.org/lbesson/web-sphinx/>`_, `15h pour mes scripts et configuration Bash <https://bitbucket.org/lbesson/bin/>`_, `10h pour mon blog de cuisine <https://perso.crans.org/besson/cuisine/>`_.
- Quelques projets m'ont aussi beaucoup occupé : `fontify <https://github.com/Naereen/fontify/>`_ avec 21h en mars 2018, `ParcourSup.py <https://github.com/Naereen/ParcourSup.py/>`_ avec 28h en juin et juillet 2018 (sans compter le temps dans Jupyter), `la chasse aux trésors pour mes 25 ans <https://github.com/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans/>`_ avec 6h en février 2018, etc
- Je note aussi environ `16h pour mon blogue « zéro déchet » <https://github.com/Naereen/Objectif-Zero-Dechet-2018>`_ et `17h pour mon blogue de cuisine <https://github.com/Naereen/cuisine>`_, environ `16h pour mon CV <https://bitbucket.org/lbesson/cv/>`_ (mis à jour et traduit en novembre 2018) et moins de 15h pour tous les `autres <https://bitbucket.org/lbesson/>`_ `projets <https://github.com/Naereen/>`_.
- Et pour le choix de langages, j'ai surtout utilisé `Python <https://wakatime.com/leaders/python>`_ (217 h), `Markdown <https://wakatime.com/leaders/markdown>`_ (115 h), `LaTeX <https://wakatime.com/leaders/latex>`_ (175 h),  et `reStructuredText <demo.html>`_ (13 h), Bash (11h), CSS (8h); et les tous les autres langages sont à moins de 5h/an (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `Octave/Matlab <https://wakatime.com/leaders/matlab>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc).


`Aperçu complet de 2019 <https://wakatime.com/a-look-back-at-2019>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Un peu moins qu'en 2018 j'ai codé environ 500 heures en tout en 2019 (508h), alors que la moyenne des utilisateurs de WakaTime était de 289h.
- Une moyenne quotidienne très stable, à 2 heures 15 minutes en 2019, alors que la moyenne des utilisateurs de WakaTime était de 47 minutes.
- Mon jour le plus intense a été le 28 janvier 2019, avec 8h 58 minutes. Je pense que c'était pour terminer cet article, `HAL-02006471 <https://hal.inria.fr/hal-02006471>`_!
- J'ai codé à 100% sous GNU/Linux (fan de XUbuntu comme toujours), et 100% avec `Visual Studio Code <visualstudiocode.fr.html>`_. GNU Nano, Firefox et Jupyter ne sont pas comptés (mais `uLogMe <https://github.com/Naereen/uLogMe/>`_ me dit que j'y passe moins de temps de toute façon, quoique j'ai utilisé Jupyter beaucoup plus en 2019, avec ces deux projets `ALGO1-Info1-2019 <https://github.com/Naereen/ALGO1-Info1-2019/>`_ et `notebooks <https://github.com/Naereen/notebooks/>`_).
- Projets par projets, j'ai codé `226h pour ma thèse de doctorat <https://github.com/Naereen/phd-thesis/>`_, `63h pour ce projet pour ma thèse (SMPyBandits) <https://smpybandits.github.io/>`_, `58h pour mes slides <https://github.com/Naereen/slides>`_.
- Et pour le choix de langages, j'ai surtout utilisé `LaTeX <https://wakatime.com/leaders/latex>`_ (363 h), `Python <https://wakatime.com/leaders/python>`_ (77 h), `Markdown <https://wakatime.com/leaders/markdown>`_ (29 h); et les tous les autres langages sont à moins de 5h/an (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `Octave/Matlab <https://wakatime.com/leaders/matlab>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc).


`Aperçu complet de 2020 <https://wakatime.com/a-look-back-at-2020>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Beaucoup moins qu'en 2018, j'ai codé environ 128 heures en tout en 2020, alors que la moyenne des utilisateurs de WakaTime était de 313h (en hausse). J'explique cette grosse baisse par le fait que a) je n'ai quasiment plus écrit d'articles et je n'avais pas ma thèse à rédiger ! b) je ne suis plus en développement actif d'un gros projet (comme je l'étais les années précédentes avec notamment `SMPyBandits <https://smpybandits.github.io/>`_, c) je n'ai quasiment pas eu besoin de rédiger ni `slides <https://github.com/Naereen/slides>`_, ni `notebooks <https://github.com/Naereen/notebooks>`_, d) la plupart de mon matériel d'enseignement était déjà prêt ou quasiment prêt, e) je code quand même, mais assez souvent pour des petites modifications j'utilise GNU Nano dans un terminal, ou Python dans un notebook Jupyter (et donc ça n'est pas compté par WakaTime), f) pour un cours (INF1 en L1 à l'Université Rennes 1), il m'a fallu utiliser Eclipse et je n'avais pas pensé à installer le plug-in WakaTime.
- Une moyenne quotidienne très diminuée, à 1 heures 2 minutes en 2020, alors que la moyenne des utilisateurs de WakaTime était de 51 minutes (donc je code quand même plus que la moyenne ? intéressant !).
- Mon jour le plus intense a été le 4 novembre 2020, avec 5h 30 minutes (en grosse baisse des jours intenses des années précédentes). Je ne sais plus pour quoi c'était, mais sûrement un peu un mélange des projets suivants : `Discord-bot-to-add-spoiler-to-any-code-snippet <https://github.com/Naereen/Discord-bot-to-add-spoiler-to-any-code-snippet/>`_, `Generateur-attestation-de-sortie-automatique-COVID-19-confinement-en-France <https://github.com/Naereen/Generateur-attestation-de-sortie-automatique-COVID-19-confinement-en-France>`_.
- Comme toujours, j'ai codé à 100% sous GNU/Linux (fan de XUbuntu comme toujours), et 100% avec `Visual Studio Code <visualstudiocode.fr.html>`_... du moins c'est ce que croit WakaTime ! WakaTime ne détecte pas l'utilisation de GNU Nano, Firefox et Jupyter.
- Projets par projets, j'ai codé 26h de LaTeX et de Java pour ce cours INF1 en L1 à l'Université Rennes 1, pour rédiger et mettre à jour des sujets de TD/TP/projets/exam et corrections. J'ai aussi travaillé environ 20h pour `cette carte <https://perso.crans.org/besson/ReR-carte/carte.html>`_ (surtout pour expérimenter des trucs), et moins de 10h dans tous les autres projets.
- Et pour le choix de langages, cette année j'ai surtout utilisé `Markdown <https://wakatime.com/leaders/markdown>`_ (53 h), `LaTeX <https://wakatime.com/leaders/latex>`_ (30 h) et `Java <https://wakatime.com/leaders/java>`_ et `Python <https://wakatime.com/leaders/python>`_ à égalité avec 13h chacun (sur VSCode, en comptant Eclipse et Jupyter notebooks, je dois avoir trois fois plus au moins) ; et les tous les autres langages sont à moins de 5h/an (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `JavaScript <https://wakatime.com/leaders/javascript>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc). Mais c'est assez injuste envers ces langages, comme j'écris beaucoup de scripts Bash en une ligne dans un terminal, que j'utilise souvent GNU Nano pour éditer des scripts Bash, et des notebooks Jupyter pour Python et aussi OCaml, etc.


Bref aperçu de mon temps de programmation depuis 2015
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Apparemment, en octobre 2018, j'avais accumulé plus de 2529 heures de statistiques de programmation depuis 3 ans et demi (janvier 2015).
C'est beaucoup ! En plus de 10+3*12=46 mois, j'ai vécu environ 33 120 heures, et dormi environ 10 000 heures. Ainsi, 2500 heures de programmation représentent environ 7% de ma vie et environ 11% de ma vie éveillée.
J'ai passé 11% de ma vie à coder. C'est beaucoup, je pense (ça ne compte pas seulement les heures de bureau, mais TOUTE MA VIE depuis 3 ans). Ohlala…

.. image::  .2529_hours_of_coding_stats_older_since_I_use_WakaTime.png
   :width:  50%
   :align:  center
   :alt:    Vous avez 2529 heures de statistiques de programmation datant d'au delà de la limite de 2 semaines.
   :target: https://wakatime.com/@lbesson


Petit interlude (de `XKCD.com <https://xkcd.com/>`_)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. image::  .time_tracking_software.png
   :width:  50%
   :align:  center
   :alt:    Time-Tracking Software (https://xkcd.com/1690/)
   :target: https://xkcd.com/1690/

------------------------------------------------------------------------------

Un bonus : accéder aux statistiques en ligne de commande
--------------------------------------------------------

Il est facile d'installer l'outil `WakaTimeCLI <https://github.com/JoshLankford/WakaTimeCLI/tree/master/src>`_,
avec la commande ``npm install wakatimecli``.

.. note:: `nodejs`_ et `npm`_ sont requis.

    Cela demande d'avoir déjà installé sur votre machine `nodejs <https://nodejs.org/>`_ et son gestionnaire de paquet `npm <https://www.npmjs.com/>`_.


Cet outil en ligne de commande se base `sur cette API <https://wakatime.com/developers/>`_, et devrait être facile à utiliser.
La première commande est `wakatime -help <https://github.com/JoshLankford/WakaTimeCLI/blob/master/src/lib/wakatime.js#L245>`_ qui montre les différentes options acceptées par cet outil : ::

    Please pass an option:
      -? or -help
      -u or -user
      -t or -today
      -y or -yesterday
      -w or -week


L'aide (``wakatime -help``) n'est pas très bien écrite, mais on peut deviner son utilisation `ici directement dans son code source <https://github.com/JoshLankford/WakaTimeCLI/blob/master/src/lib/wakatime.js#L237>`_.


.. note:: Cet outil produit une sortie en couleur, cool !

   C'est moins cool lorsqu'on s'aperçoit que les couleurs sont ne sont pas supprimée
   si la sortie est redirigée vers un terminal qui n'accepte pas les codes ANSI,
   ou un fichier (`c'est pas la faute au script <https://github.com/JoshLankford/WakaTimeCLI/blob/master/src/lib/wakatime.js#L10>`_
   mais `au module cli-color <https://www.npmjs.com/package/cli-color#clc-strip-formatedtext>`_ qui aurait du implémenter une meilleure méthode de détection,
   comme `je l'avais fait pour ANSIColors il y a quelques années <https://bitbucket.org/lbesson/ansi-colors/src/master/ANSIColors.py?fileviewer=file-view-default#ANSIColors.py-286>`_)).

   Comme l'explique `cette remarque sur stackoverflow <http://stackoverflow.com/a/6307894>`_, ce n'est pas une bonne pratique.
   (`J'ai demandé via le dépôt GitHub pour WakaTimeCLI de régler ce problème <https://github.com/JoshLankford/WakaTimeCLI/issues/11>`_)

   Merci `à cette astuce à coup de sed <http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed>`_ (` | sed -r "s:\\x1B\\[[0-9;]\\*[mK]::g"`).


Ensuite, il faut ajouter `votre clé API Key (disponible dans les réglages sur WakaTime.com) <https://wakatime.com/settings>`_ : ::

    wakatime -api yourApiKeyHere


Par exemple, la commande `wakatime -w <https://github.com/JoshLankford/WakaTimeCLI/blob/master/src/lib/wakatime.js#L245>`_ donne le temps total passé sur son (ses) éditeur(s) de code durant les 7 derniers jours.

.. runblock:: console

   $ wakatime -w | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g"

.. warning:: Cet outil semble cassé, `cf ce bug (25/01/2021) <https://github.com/JoshLankford/WakaTimeCLI/issues/17>`_.

Un autre outil pour lire ses statistiques WakaTime en ligne de commande : client wakatime Python officiel
---------------------------------------------------------------------------------------------------------

En utilisant `pip install wakatime`, on installe le client CLI officiel, qui est `ce projet sur Pypi <https://pypi.org/project/wakatime/>`_.

.. runblock:: console

   $ wakatime --today

Il ne permet aucune autre visualisation que cette option `--today`, c'est assez décevant.

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

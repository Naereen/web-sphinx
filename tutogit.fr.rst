.. meta::
   :description lang=fr: Rapide tutorial pour git et BitBucket
   :description lang=en: Quick tutorial for git and BitBucket

################################################################
 Rapide initiation à `git <https://fr.wikipedia.org/wiki/Git>`_
################################################################
.. include:: .special.rst
Introduction
------------
Cette page est une rapide introduction à `git`_, et son utilisation régulière via `BitBucket <https://bitbucket.org>`_.

Cet article contient de très rapides explications sur la prise en main de `git`_, son installation, ainsi que l'utilisation de `BitBucket`_.

Des liens sont donnés vers d'autres tutoriels et d'autres explications.

J'en profite aussi pour joindre et publier mes fichiers de configuration pour `git`_, des conseils, des alias pour améliorer `git`_ via votre ``~/.bash_aliases`` (pour l'interprète de ligne de commande `GNU/Bash <https://fr.wikipedia.org/wiki/GNU_Bash>`_).


.. note:: Licence ?

   Cette page, et tous les fichiers liés, sont distribués *librement*, sous les termes de la `licence GPLv3 <LICENSE.html>`_ !
   (comme tout ce que je publie ou distribue).

-----------------------------------------------------------------------

À-propos de **Git**
^^^^^^^^^^^^^^^^^^^
Le site officiel de `git`_ est `git-scm.com <http://git-scm.com>`_.

Qu'est-ce que Git ?
~~~~~~~~~~~~~~~~~~~
« *Git est un logiciel de* `gestion de versions <https://fr.wikipedia.org/wiki/Logiciel_de_gestion_de_versions>`_ *décentralisé. C'est un logiciel libre créé par Linus Torvalds, auteur du noyau Linux, et distribué selon les termes de la licence publique générale GNU version 2.* »

« *Git est un conçu pour être performant en vitesse et assurer l'intégrité des données stockées, envoyées ou reçues.
Entièrement libre et gratuit depuis 2005, il est rapidement devenu le système de gestion de versions le plus populaire pour le développement logiciel.* »

À quoi ça sert ?
~~~~~~~~~~~~~~~~

.. sidebar:: Exemple ?

   Par exemple, `ce lien vous montre la première version que j'avais écrite pour cette page <https://bitbucket.org/lbesson/web-sphinx/src/master/tutogit.fr.rst>`_ ! TODO change

« *Un logiciel de gestion de versions est un logiciel qui permet de stocker un ensemble de fichiers en conservant la chronologie de toutes les modifications qui ont été effectuées dessus.* »

« `git`_ *permet donc notamment de retrouver les différentes versions d'un lot de fichiers connexes. Il permet aussi un contrôle efficace et sécurisé de certains fichiers (ou même de projets entiers), ainsi qu'un excellent suivi des modifications effectuées sur chaque fichiers.* »

Inutile de dire donc que `je m'en sers constamment <https://bitbucket.org/lbesson/>`_, principalement sous Linux (Ubuntu 14.04), et de temps en temps sur Windows.


Est-ce vraiment si populaire ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Oui :

* Les plus grandes entreprises du web utilisent git : `Facebook <https://github.com/facebook>`_, `Google <https://github.com/google>`_, `Twitter <https://github.com/Twitter>`_, `Netflix <https://github.com/netflix>`_ ou `LinkedIn <https://github.com/linkedin>`_ par exemple.

* Le projet `git`_ lui-même est développé par une petite équipe, et utilise `git`_: `GitHub.com/git <https://github.com/git>`_ !

* En novembre 2014, `GitHub <https://github.com/>`_ possédait plus de **7 millions d'utilisateurs**, `BitBucket`_ en possédait **presque 2 millions**, et `gitorious <https://gitorious.org/>`_ presque 400 000 !

* La `fabuleuse suite logicielle <https://about.gitlab.com/features/>`_ `GitLab <https://about.gitlab.com/>`_ prétend être utilisée par plus de **100 000 compagnies et organisations** de part le monde ! Voir par `exemple le gitlab du Crans <https://gitlab.crans.org/>`_ (et `mon compte <https://gitlab.crans.org/lbesson/>`_, peut utilisé).


---------------------------------------------------------------------

Mon utilisation (amateur) de `git`_
-----------------------------------
`Ma configuration <./publis/git/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
:État: *Maintenu activement.* (novembre 2014)

Pour ces deux fichiers de configurations, (sur Linux), un fichier ``.gitconfig`` et ``.gitignore`` global peut se trouver dans votre dossier ``HOME`` (``~/``, ou ``/home/pseudo``), et un fichier particulier à chaque dépôt peut aussi être créé.

* `.gitconfig <./publis/git/.gitconfig>`_ permet de configurer le comportement complet de `git`_.
* `.gitignore <./publis/git/.gitignore>`_ permet de dire quels fichiers ne doivent pas être considéré par `git`_ lorsqu'il indique les fichiers non surveillés.


.. seealso::

   À propos de ``.gitconfig``
      ``git-config`` est une commande git, et interagi avec les fichiers ``.gitconfig``.
      La page `git-scm.com/docs/git-config <http://git-scm.com/docs/git-config>`_ détaille comment utiliser un fichier ``.gitconfig``.
      `Ces explications par Atlassian <https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config>`_ ou `cet article par Nick Berardi <http://nickberardi.com/gitconfig/>`_ peuvent aussi aider.
      D'autres exemples: `GitHub.com/matagus/gitconfig <https://github.com/matagus/gitconfig/blob/master/.gitconfig>`_, `GitHub.com/alikins/gitconfig <https://github.com/alikins/gitconfig/blob/master/gitconfig>`_.

   À propos de ``.gitignore``
      `Ces explications sur help.GitHub.com <https://help.github.com/articles/ignoring-files/>`_ détaillent comment utiliser un fichier ``.gitignore``. Ils proposent même `une collection de fichiers .gitignore <https://github.com/github/gitignore>`_ adaptés à différentes types de projets.
      Par exemple, `celui là pour un projet avec Python <https://github.com/github/gitignore/blob/master/Python.gitignore>`_.

      Cette page `git-scm.com/docs/gitignore <http://git-scm.com/docs/gitignore>`_ ou `cet article sur kernel.org <https://www.kernel.org/pub/software/scm/git/docs/gitignore.html>`_ peuvent aussi aider.


En ligne de commande
^^^^^^^^^^^^^^^^^^^^
Voir mon `bash_aliases <bin/.bash_aliases>`_ (aussi `sur BitBucket.org/lbesson/bin <https://bitbucket.org/lbesson/bin/src/master/.bash_aliases>`_).

Je définis les `alias Bash <http://abs.traduc.org/abs-5.3-fr/ch24.html>`_ suivants.

Ces trois là permettent de voir les fichiers modifiés, supprimés ou ajoutés uniquement :

* ``alias GitChanged='clear ; git status | grep --color=always "\(modified\|modifié\)" | less -r'`` pour les fichiers modifiés,
* ``alias GitDeleted='clear ; git status | grep --color=always "\(deleted\|supprimé\)" | less -r'`` pour les fichiers supprimés,
* ``alias GitAdded='clear ; git status | grep --color=always "\(added\|nouveau\)" | less -r'`` pour les fichiers ajoutés.

Ceux là sont de bons raccourcis, qui par défaut lance la compression locale du dépôt juste après chaque opération (en moyenne ça fait gagner du temps) :

* ``alias Push='clear; git push && git gc'`` pour téléverser les dernières modifications sur le dépôt mère,
* ``alias Pull='clear; git gc && git pull && git gc'`` pour télécharger les dernières modifications depuis le dépôt mère,
* ``alias Commit='clear; git commit -m'`` pour pouvoir valider une modification (*commit*) rapidement,
* ``alias Add='git add'`` pour ajouter des fichiers,
* ``alias Aggressive='git gc --aggressive'`` lance une compression agressive,
* ``alias s='clear ; git status | less -r'`` est un raccourcis bien pratique pour l'opération `git`_ la plus courante : ``git status``.


Et enfin, j'ai défini un alias pratique qui permet de synchroniser le projet courant avec le dépôt mère, et son sous-dossier sur mon site.

* ``alias Sync='clear; echo -e "Synchronizing (git push, gc, send_zamok, send_dpt)..."; git push; git gc --aggressive; make send_zamok; make send_dpt; alert'``

Par exemple `ce dépôt <https://bitbucket.org/lbesson/ansi-colors>`_ se trouve `ici sur ce site <publis/ansi-colors/>`_.
`Cet autre dépôt <https://bitbucket.org/lbesson/mpri-bomberman>`_ se trouve `ici sur ce site <publis/Bomberman/.build/html/>`_.
`Ce troisième dépôt <https://bitbucket.org/lbesson/kaggle>`_ se trouve `ici sur ce site <publis/kaggle/>`_.


.. note:: Détails à propos des alias Bash ?

   Plus d'informations sont disponibles `dans ce livre sur le programmation Bash <http://abs.traduc.org/abs-5.3-fr/ch24.html>`_, `dans cette documentation Linux <http://www.tldp.org/LDP/abs/html/aliases.html>`_ ou `celle là <http://ss64.com/bash/alias.html>`_, ou bien `cette page Wikipédia qui parle d'alias pour les langages de scripts en général <https://en.wikipedia.org/wiki/Alias_%28command%29>`_.



Avec `Sublime Text 3 <http://www.sublimetext.com/3/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Les deux greffons suivants permettent une utilisation fluide et facile de `git`_ avec `Sublime Text 3`_ :

* Le petit `GitGutter <https://sublime.wbond.net/packages/GitGutter>`_ permet de visualiser l'état de chaque ligne de chaque fichier par rapport au dépôt *git* dans lequel il se trouve (visuellement génial pour voir les changements depuis le dernier *commit*).

* Le plus lourd `SublimeGit <https://sublimegit.net/>`_ (installable depuis `sublime.wbond.net/packages/SublimeGit <https://sublime.wbond.net/packages/SublimeGit>`_). Permet un intégration complète de *git* via le panneau de contrôle. Il est gratuit, mais vous embêtera régulièrement afin de vous demander d'acheter une (inutile) licence commercial (pour 10$)... Mais ce plugin est vraiment génial, donc vous supporterez son petit défaut !


.. seealso::

   sublimetext.fr.html
      Veuillez lire `sublimetext.fr.html <sublimetext.fr.html>`_ pour plus de détails sur l'utilisation que je fais de Sublime Text 3.


Avec BitBucket.org
^^^^^^^^^^^^^^^^^^
.. todo:: Terminer cette sous-partie.

   https://bitbucket.org/lbesson
   https://bitbucket.org/lbesson/profile/repositories?visibility=public

   blabla

   Exemple



-----------------------------------------------------------------------------

Un dernier conseil ?
^^^^^^^^^^^^^^^^^^^^
 Comme pour tout logiciel aussi puissant et technique, `git`_ demande un certain temps d'adaptation.
 Soyez persévérant, ça en vaut la peine.

Crédit additionnel
^^^^^^^^^^^^^^^^^^
 Merci à `Vincent Cohen-Addad <http://www.di.ens.fr/~vcohen/>`_ de m'avoir motivé à m'initier à `git`_ (en octobre 2012 pour `le projet réseau du MPRI (cours 1-21) <https://bitbucket.org/lbesson/mpri-bomberman>`_ sur lequel nous avions travaillé ensemble).


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/

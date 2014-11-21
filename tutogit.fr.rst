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

Cet article contient de très rapides explications sur la prise en main du très efficace et puissant logiciel `git`_, son installation, ainsi que l'utilisation de `BitBucket`_.

Des liens sont donnés vers d'autres tutoriels et d'autres explications.

J'en profite aussi pour joindre et publier mes fichiers de configuration pour `git`_, des conseils, des alias pour améliorer `git`_ (via le fichier ``~/.bash_aliases`` pour l'interprète de ligne de commande `GNU/Bash <https://fr.wikipedia.org/wiki/GNU_Bash>`_).


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

   Par exemple, `ce lien vous montre la première version que j'avais écrite pour cette page <https://bitbucket.org/lbesson/web-sphinx/src/4107670f439e/tutogit.fr.rst>`_ !
   En utilisant l'interface web de `BitBucket`_, il est possible de `visualiser l'historique complet des modifications apportées à cette page <https://bitbucket.org/lbesson/web-sphinx/history-node/master/tutogit.fr.rst>`_.`


« *Un logiciel de gestion de versions est un logiciel qui permet de stocker un ensemble de fichiers en conservant la chronologie de toutes les modifications qui ont été effectuées dessus.* »

« `git`_ *permet donc notamment de retrouver les différentes versions d'un lot de fichiers connexes. Il permet aussi un contrôle efficace et sécurisé de certains fichiers (ou même de projets entiers), ainsi qu'un excellent suivi des modifications effectuées sur chaque fichiers.* »

Inutile de dire donc que `je m'en sers constamment <https://bitbucket.org/lbesson/>`_, principalement sous Linux (Ubuntu™ 14.04), et de temps en temps sur Windows™.


Est-ce vraiment si populaire ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Oui :

* Les plus grandes entreprises du web utilisent git : `Facebook <https://github.com/facebook>`_, `Google <https://github.com/google>`_, `Twitter <https://github.com/Twitter>`_, `Netflix <https://github.com/netflix>`_ ou `LinkedIn <https://github.com/linkedin>`_ par exemple.

* Le projet `git`_ lui-même est développé par une petite équipe, et utilise `git`_: `GitHub.com/git <https://github.com/git>`_ !

* En novembre 2014, `GitHub <https://github.com/>`_ semblait avoir plus de **7 millions d'utilisateurs**, `BitBucket`_ en possédait **presque 2 millions**, et `gitorious <https://gitorious.org/>`_ presque 400 000 !

* La `fabuleuse suite logicielle <https://about.gitlab.com/features/>`_ `GitLab <https://about.gitlab.com/>`_ prétend être utilisée par plus de **100 000 compagnies et organisations** de part le monde ! Voir par `exemple le gitlab du Crans <https://gitlab.crans.org/>`_ (et `mon compte <https://gitlab.crans.org/lbesson/>`_, peut utilisé).


Une distinction importante
~~~~~~~~~~~~~~~~~~~~~~~~~~
* `Bitbucket.org <https://Bitbucket.org>`_, `GitHub.com <https://GitHub.com>`_, `Gitorious.org <https://Gitorious.org>`_ (`héberge par exemple les sources du "Frédo" <https://www.gitorious.org/mes-notes-de-math-matique>`_), ou bien le `GitLab du CR@NS <http://GitLab.CRANS.org>`_ sont des **services d'hébergement**.

* `git`_ est le **logiciel (libre, open-source et gratuit) de gestion de version**, sous-jacent à ces services webs.

Documentation à propos de `git`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Un peu en vrac, mais quand même dans l'ordre du plus utile au plus flou :

* `doc.ubuntu-fr.org/git <http://doc.ubuntu-fr.org/git>`_ est concis mais est une bonne introduction,
* `ce premier tutoriel par l'équipe de Bitbucket (Atlassian) <https://confluence.atlassian.com/display/BITBUCKET/Getting+started+with+Bitbucket>`_ (en anglais),
* `ce site de référence GitImmersion.fr <http://gitimmersion.fr/>`_.
* `www.Atlassian.com/git/ <https://www.atlassian.com/git/>`_ couvre plein de choses. J'aime bien le style (graphique et structurel) de ces explications (en anglais).
* `le livre de référence officiel sur git-scm.com <http://git-scm.com/book/fr/v1>`_,
* Le site `help.GitHub.com <https://help.github.com/>`_ est bien conçu (surtout en anglais),


Deux documents en PDF à télécharger pour ne pas paniquer quand on est paumé ou qu'on débute :

* Le premier est `en français, rédigé par training.GitHub.com <https://training.github.com/kit/downloads/fr/github-git-cheat-sheet.pdf>`_,
* Une `autre en anglais, faite par Atlassian <https://www.atlassian.com/dms/wac/images/landing/git/atlassian_git_cheatsheet.pdf>`_.


D'autres ressources (moins utiles, mais peuvent aider) :

* `fr.wikibooks.org/wiki/Git <https://fr.wikibooks.org/wiki/Git>`_.
* `cet autre tuto non officiel <https://www.progclub.net/~key720/tutorials/git_bitbucket/>`_ sur `git`_ et `BitBucket`_,
* `ce troisième tuto <http://www.bohyunkim.net/blog/archives/2518>`_ est moche mais peut être utile.
* `ce petit livre en français <http://www.alexgirard.com/git-book/index.html>`_,
* Une page intitulée `« Démarrer avec Git » par Robusta Code <http://www.robusta.io/content/tutoriel/git/start-git.html>`_.


---------------------------------------------------------------------

Mon utilisation (amateur) de `git`_
-----------------------------------
`Ma configuration <./publis/git/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
:État: *Maintenu activement.* (novembre 2014)

Pour ces deux fichiers de configurations, (sur Linux), un fichier ``.gitconfig`` et ``.gitignore`` global peut se trouver dans votre dossier ``HOME`` (``~/``, ou ``/home/pseudo``), et un fichier particulier à chaque dépôt peut aussi être créé.

* `.gitconfig <./publis/git/.gitconfig>`_ permet de configurer le comportement complet de `git`_ (inspiré par `celui des cranseux <http://perso.crans.org/respbats/config/.gitconfig>`_).
* `.gitignore <./publis/git/.gitignore>`_ permet de dire quels fichiers doivent être ignorés (ie. non observés) par `git`_ lorsqu'il indique les fichiers non surveillés.


.. seealso::

   À propos de ``.gitconfig``
      ``git-config`` est une commande git, qui interagit en fait avec le(s) fichier(s) ``.gitconfig``.
      La page `git-scm.com/docs/git-config <http://git-scm.com/docs/git-config>`_ détaille comment utiliser un fichier ``.gitconfig``.
      Plus de détails sont `donnés ici dans le livre sur git-scm.com <http://git-scm.com/book/fr/v1/Personnalisation-de-Git-Configuration-de-Git>`_ (en français).
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

* ``alias GitChanged='clear ; git status | grep --color=always '(\modified\|modifié\)' | less -r'`` pour les fichiers modifiés,
* ``alias GitDeleted='clear ; git status | grep --color=always '(\deleted\|supprimé\)' | less -r'`` pour les fichiers supprimés,
* ``alias GitAdded='clear ; git status | grep --color=always '(\added\|nouveau\)' | less -r'`` pour les fichiers ajoutés,
* ``alias GitSize='clear; git count-objects -v -H | grep "size-pack" | sed s/"size-pack: "/"Taille du dépôt"/'`` permet d'afficher la taille que prend le dépôt courant (e.g. 9.75 MO actuellement pour `ce projet web-sphinx <https://bitbucket.org/lbesson/web-sphinx>`_).

Ceux là sont de bons raccourcis, qui par défaut lance la compression locale du dépôt juste après chaque opération (en moyenne ça fait gagner du temps) :

* ``alias Push='clear; git push && git gc'`` pour téléverser les dernières modifications sur le dépôt mère,
* ``alias Pull='clear; git gc && git pull && git gc'`` pour télécharger les dernières modifications depuis le dépôt mère,
* ``alias Commit='clear; git commit -m'`` pour rapidement valider une modification (on dit alors réaliser un *commit*),
* ``alias Add='git add'`` pour facilement ajouter des fichiers,
* ``alias Aggressive='git gc --aggressive'`` lance une compression "agressive",
* ``alias s='clear ; git status | less -r'`` est un raccourcis bien pratique pour l'opération `git`_ la plus courante : ``git status``.


Et enfin, j'ai défini un alias pratique qui permet de synchroniser le projet courant avec le dépôt mère, et son sous-dossier sur mon site.

* ``alias Sync='clear; echo -e "Synchronizing (git push, gc, send_zamok, send_dpt)..."; git push; git gc --aggressive; make send_zamok; make send_dpt; alert'``


Par exemple `ce dépôt <https://bitbucket.org/lbesson/ansi-colors>`_ se trouve `ici sur ce site (publis/ansi-colors) <publis/ansi-colors/>`_.
`Cet autre dépôt <https://bitbucket.org/lbesson/mpri-bomberman>`_ se trouve `ici sur ce site (publis/Bomberman) <publis/Bomberman/.build/html/>`_.
`Ce troisième dépôt <https://bitbucket.org/lbesson/kaggle>`_ se trouve `ici sur ce site (publis/kaggle) <publis/kaggle/>`_.


.. note:: Détails à propos des alias Bash ?

   Plus d'informations sont disponibles `dans ce livre sur le programmation Bash <http://abs.traduc.org/abs-5.3-fr/ch24.html>`_, `dans cette documentation Linux <http://www.tldp.org/LDP/abs/html/aliases.html>`_ ou `celle là <http://ss64.com/bash/alias.html>`_, ou bien `cette page Wikipédia qui parle d'alias pour les langages de scripts en général <https://en.wikipedia.org/wiki/Alias_%28command%29>`_ (en anglais).



Avec `Sublime Text 3 <http://www.sublimetext.com/3/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. note:: Une interface graphique pour `git`_ ?

   Utiliser une quelconque interface graphique à `git`_ peut faire gagner un temps fou.
   Pour coder, moi j'aime bien `Sublime Text 3 (ST3) <sublimetext.fr.html>`_.
   Peu importe votre éditeur de texte ou EDI, il devrait être possible de le munir de ce genre de fonctionnalités pour facilement utiliser `git`_ sans toujours passer par des commandes en console.

   Par exemple, Atlassian propose `SourceTree <http://www.sourcetreeapp.com/>`_, pour Windows™ et Mac™ OS X.
   Et GitHub propose leur propre application `pour Mac™ OS X <https://mac.github.com/>`_ ou `Windows™ <https://windows.github.com>`_.


Les deux greffons suivants permettent une utilisation fluide et facile de `git`_ avec `Sublime Text 3`_ :

* Le petit `GitGutter <https://sublime.wbond.net/packages/GitGutter>`_ permet de visualiser l'état de chaque ligne de chaque fichier par rapport au dépôt *git* dans lequel il se trouve (visuellement génial pour voir les changements depuis le dernier *commit*).

* Le plus lourd `SublimeGit <https://sublimegit.net/>`_ (installable depuis `sublime.wbond.net/packages/SublimeGit <https://sublime.wbond.net/packages/SublimeGit>`_). Permet un intégration complète de *git* via le panneau de contrôle. Il est gratuit, mais vous embêtera régulièrement afin de vous demander d'acheter une (inutile) licence commercial (pour 10$)... Mais ce plugin est vraiment génial, donc vous supporterez son petit défaut !


.. seealso::

   sublimetext.fr.html
      Veuillez lire la toute récente page `sublimetext.fr.html <sublimetext.fr.html>`_ pour plus de détails sur l'utilisation que je fais de Sublime Text 3.


Avec BitBucket.org
^^^^^^^^^^^^^^^^^^
Comme d'autres services d'hébergement, `BitBucket`_ est **gratuit**, flexible, puissant, `opérationnel 24h/24, 7j/7 <https://status.BitBucket.org>`_, et permet de publier son code facilement sur Internet.

`BitBucket`_ propose en plus des dépôts privés, en nombre illimités. Chaque dépôt est `limité à 2GB <https://confluence.atlassian.com/pages/viewpage.action?pageId=273877699>`_ (il faut vraiment le vouloir pour dépasser!).
S'inscrire est rapide, il suffit d'aller sur `cette page https://BitBucket.org/ <https://BitBucket.org/>`_ !
(Notez que `BitBucket`_ peut aussi s'utiliser avec un compte Google, Facebook, GitHub ou même avec `OpenID <https://fr.wikipedia.org/wiki/OpenID>`_.)


Un fois votre profil créé, il ressemblera au mien, mais en plus *vide* : `BitBucket.org/lbesson <https://bitbucket.org/lbesson>`_ (voir celui là pour un autre exemple `BitBucket.org/jilljenn <https://bitbucket.org/jilljenn>`_).

Les dépôts publics sont visibles par tous : `BitBucket.org/lbesson/profile/repositories <https://bitbucket.org/lbesson/profile/repositories?visibility=public>`_.

Par exemple, voici plusieurs de mes dépôts :

 - `BitBucket.org/lbesson/web-sphinx <https://bitbucket.org/lbesson/web-sphinx>`_ stocke les sources de `ce site <index.html>`_, voir par exemple la source de cette page, écrite en reStructuredText (``.rst``) `(→ lien direct sur cette ligne) <https://bitbucket.org/lbesson/web-sphinx/src/master/tutogit.fr.html#cl-208>`_,
 - `BitBucket.org/lbesson/bin <https://bitbucket.org/lbesson/bin>`_ héberge des douzaines de scripts, surtout en Bash et quelques uns en Python,
 - `BitBucket.org/lbesson/web-sphinx-scripts <https://bitbucket.org/lbesson/web-sphinx-scripts>`_ stocke des versions locales de tous les `scripts Javascript utilisés par ce site <js.html>`_,
 - `BitBucket.org/lbesson/cv <https://bitbucket.org/lbesson/cv>`_ stocke les sources \\(\\LaTeX{}\\) de mes CV `en français <cv.fr.pdf>`_ et `en anglais <cv.en.pdf>`_ : `cv.fr.tex <https://bitbucket.org/lbesson/cv/src/master/cv.fr.tex>`_ ou `cv.en.tex <https://bitbucket.org/lbesson/cv/src/master/cv.en.tex>`_,
 - `BitBucket.org/lbesson/munstrap <https://bitbucket.org/lbesson/munstrap>`_ un tout petit dépôt proposant une traduction en français du thème **Munstap**, un thème adaptatif et moderne pour `Munin <http://munin-monitoring.org/>`_.


Plus d'explications sont disponibles ici `en.WikiPedia.org/wiki/Bitbucket <https://en.wikipedia.org/wiki/Bitbucket>`_ (en anglais).


Publier des pages webs avec BitBucket ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Si votre nom d'utilisateur BitBucket est **TRUC**, il est possible de créer un dépôt appelé "TRUC.bitbucket.org",
et ensuite tous les documents que tu y seront stockés seront automatiquement disponibles sur le site `http://TRUC.bitbucket.org <http://TRUC.bitbucket.org>`_ !

Plus de détails sont donnés sur `cette page de doc par Atlassian (en anglais) <https://confluence.atlassian.com/display/BITBUCKET/Publishing+a+Website+on+Bitbucket>`_, et l'`exemple officiel (tutorials.bitbucket.org) <https://bitbucket.org/tutorials/tutorials.bitbucket.org>`_ est en ligne sur `https://tutorials.bitbucket.org <https://tutorials.bitbucket.org>`_)

 (Ce service est maleheureusement un peu moins poussé que celui de GitHub (`GitHub.io <https://pages.github.com/>`_, `voir la doc ici <https://help.github.com/categories/github-pages-basics/>`_), mais marche bien quand même.)


.. note:: `lbesson.BitBucket.org <http://lbesson.BitBucket.org>`_ ?

   Voir par exemple cette petite page `lbesson.BitBucket.org/README.html <http://lbesson.bitbucket.org/README.html>`_ dont la source est hébergée ici `BitBucket.org/lbesson/lbesson.bitbucket.org/src/master/README.html <https://BitBucket.org/lbesson/lbesson.bitbucket.org/src/master/README.html>`_.

   Je me sers de `lbesson.BitBucket.org`_ principalement pour :

   - `squirt <http://lbesson.bitbucket.org/squirt/>`_ un marque-page scripté pour Firefox, Chrome ou Opéra, permettant de lire une page web *très rapidement* (disponible sur ce site aussi, allez-y, essayer le en tapant "q" sur votre clavier ! *Cool non ?*),
   - `StrapDown.js <http://lbesson.bitbucket.org/md/>`_ est un joli projet pour rédiger des pages webs adaptatives et jolies en `Markdown <https://fr.wikipedia.org/wiki/Markdown>`_. De tels documents utilisant StrapDown sont *directement* prêts à être publiés *telle-quelle* sur n'importe quel site ou serveur, sans aucune étape de compilation requise de votre côté ! (Il n'attire qu'`une vingtaine de téléchargements par mois <https://bitbucket.org/lbesson/lbesson.bitbucket.org/downloads/>`_ de l'archive `StrapDown.js.zip <https://bitbucket.org/lbesson/lbesson.bitbucket.org/downloads/StrapDown.js.zip>`_),
   - mes propres copies du (légendaire) jeu **2048** : `lbo.k.vu/2048 <http://lbo.k.vu/2048>`_ (le jeu initial), `lbo.k.vu/2048-agreg <http://lbo.k.vu/2048-agreg>`_ (une version `pour matheux <http://agreg.org/ResultatsMerite2014.html>`_) ou encore `lbo.k.vu/2048-AI <http://lbo.k.vu/2048-AI>`_ (avec `Intelligence Artificielle <slidesM1Info13.pdf>`_).
   - et `cette page d'accueil qui permet d'enrober mon site <http://lbesson.bitbucket.org/index.html?i=no>`_.

   Et même si le certificat n'est pas valide, il est parfaitement possible d'utiliser cette fonctionnalité avec le `HTTPS <https://fr.wikipedia.org/wiki/HTTPS>`_ activé : `https://lbesson.BitBucket.org/README.html <https://lbesson.bitbucket.org/README.html>`_ (si votre navigateur râle et affiche une erreur **c'est parfaitement normal** !).
   Si vous utilisez un navigateur assez récent, il peut râler et vous expliquer pourquoi (vous verrez alors que la seule raison est que le `certificat SSL <https://fr.wikipedia.org/wiki/SSL>`_ de `https://bitbucket.org <https://bitbucket.org>`_ n'a été signé que pour certains sous domains du site bitbucket.org, pas tous).
   Mais le trafic sera bien crypté et sécurisé par le certificat SSL, aucun problème :)


Interface en français ?
~~~~~~~~~~~~~~~~~~~~~~~
Depuis un peu plus d'un an, il est possible de changer l'interface du site en français (et plein d'autres langues), dans `vos paramètres personnels <https://bitbucket.org/account/user/>`_.

.. note:: Traduction en français ?

   En mars et avril 2013, j'ai initié et un peu dirigé la `traduction du site et du service de l'anglais vers le français <transifex.fr.html>`_.
   `J'ai traduit <https://www.transifex.com/accounts/profile/Naereen/>`_ presque 90% du contenu initial, laissé quelques boulettes, mais on a fait du bon boulot.
   Grâce à quelques autres motivés et moi-même, le français était le première langue traduite à 100% ! (mi mars 2013)
   Je n'ai plus ni le temps ni l'envie de m'en occuper, mais `le projet continue d'être tenu à jour par d'autres <https://www.transifex.com/projects/p/bitbucketorg/#fr/bitbucket-django>`_.


Des "boutons" ?
~~~~~~~~~~~~~~~
De même que des fans de GitHub proposent `ghbtns.com/ <http://ghbtns.com/>`_ ou `buttons.GitHub.io/ <https://buttons.github.io/>`_, un fan de BitBucket a conçu `bb-btns.bitbucket.org/ <http://bb-btns.bitbucket.org/>`_.

Voici quelques exemples pour `mon dépôt web-sphinx <https://bitbucket.org/lbesson/web-sphinx>`_ :

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block;">
   <iframe src="http://bb-btns.bitbucket.org/bitbucket-btn.html?user=lbesson&repo=web-sphinx&type=watch&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="160" height="40"></iframe>
   <iframe src="http://bb-btns.bitbucket.org/bitbucket-btn.html?user=lbesson&repo=web-sphinx&type=fork&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="150" height="40"></iframe>
   <iframe src="http://bb-btns.bitbucket.org/bitbucket-btn.html?user=lbesson&repo=web-sphinx&type=follow&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="190" height="40"></iframe></p>


Les mêmes, mais `hébergés sur  lbesson.bitbucket.org/bbbtns/ <https://lbesson.bitbucket.org/bbbtns/>`_ :

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block;">
   <iframe src="http://lbesson.bitbucket.org/bbbtns/bitbucket-btn.html?user=lbesson&repo=web-sphinx&type=watch&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="160" height="40"></iframe>
   <iframe src="http://lbesson.bitbucket.org/bbbtns/bitbucket-btn.html?user=lbesson&repo=web-sphinx&type=fork&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="150" height="40"></iframe>
   <iframe src="http://lbesson.bitbucket.org/bbbtns/bitbucket-btn.html?user=lbesson&repo=web-sphinx&type=follow&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="190" height="40"></iframe></p>


Les mêmes, mais `hébergés sur ce site (./bbbtns/) <./bbbtns/>`_ :

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block;">
   <iframe src="./bbbtns/btn.html?user=lbesson&repo=web-sphinx&type=watch&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="160" height="40"></iframe>
   <iframe src="./bbbtns/btn.html?user=lbesson&repo=web-sphinx&type=fork&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="150" height="40"></iframe>
   <iframe src="./bbbtns/btn.html?user=lbesson&repo=web-sphinx&type=follow&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="190" height="40"></iframe></p>


-----------------------------------------------------------------------------

Un dernier conseil ?
^^^^^^^^^^^^^^^^^^^^
 Comme pour tout logiciel aussi puissant et technique, `git`_ demande un certain temps d'adaptation.
 Soyez persévérant, ça en vaut la peine.

 « *Happy coding and good luck for your projetcs!* »


Crédit additionnel
^^^^^^^^^^^^^^^^^^
 Merci à `Vincent Cohen-Addad <http://www.di.ens.fr/~vcohen/>`_ de m'avoir motivé à m'initier à `git`_, en octobre 2012 pour `le projet de programmation réseau de mon Master d'Informatique Fondamentale (le MPRI, cours #1-21) <https://bitbucket.org/lbesson/mpri-bomberman>`_ sur lequel nous avions travaillé ensemble.


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/

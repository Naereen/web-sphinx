.. meta::
   :description lang=fr: Outils de programmation par paire (pair-programming)
   :description lang=en: Tools for pair-programming

######################################################
 Outils de programmation par paire (pair-programming)
######################################################

Ce petit article liste quelques outils qu'un groupe (d'au moins deux personnes) peuvent utiliser pour travailler en collaboration sur du code et faire de la programmation par pair (*pair-programming*) efficacement.

*Contexte* : cet article est écrit dans le but d'être utile aux élèves de 1ère année de licence de mathématiques et d'informatique, en 2020, à l'Université de Rennes 1, pour le cours INF1. Mais ces conseils peuvent être utiles à n'importe qui.

1) Approche basique : pour les débutants
----------------------------------------

Pour collaborer avec votre binôme sur du code (Java ou autre), ou des documents (Microsoft Word ou LibreOffice ou OpenOffice), l'approche suivante fonctionne bien :

- **échangez votre fichier** avec votre binôme **par mail**, Facebook Messenger, WhatsApp ou autre logiciel. Vous pouvez aussi **utiliser un dossier partagé**, par exemple sur Google Drive, ou un service gratuit comme Dropbox,
- **appelez vous régulièrement**, par téléphone, ou par Facebook Messenger, WhatsApp, ou un autre logiciel de visio-conférence comme Skype, ou un logiciel en ligne comme `Meet JitSi <https://meet.jitsi.org/>`_, `FramaCall <https://framacall.org/>`_ etc,
- au téléphone, travaillez à deux, avec une personne qui travaille sur Eclipse (pour du code Java) ou un autre logiciel (par exemple Word),
- vous verrez vite que c'est très limité de n'avoir que la voix pour travailler, et la personne qui n'a pas l'ordinateur aura du mal à suivre le travail de l'autre ! C'est pourquoi il sera préférable d'utiliser un logiciel web permettant de **partager votre écran**, comme les outils listés précédemment.

C'est simple mais un peu limité...

- **Avantages ?** Vous serez rapidement capable de collaborer, mais il n'y aura qu'une seule personne en train d'écrire dans le fichier.
- **Inconvénients ?** Besoin d'installer Java sur votre machine personnelle, besoin d'avoir un ordinateur, pas besoin d'installer un plugin supplémentaire dans Eclipse ou un logiciel supplémentaire.


2) Approche plus avancée : pour les curieux
-------------------------------------------

2.a) Avec `REPL.it <https://repl.it/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Nous vous recommandons d'utiliser l'outil `REPL.it <https://repl.it/>`_, pour écrire, exécuter, tester votre code Java (ou autres langages, Python notamment est supporté, et plein d'autres), directement dans une page web, partagée avec votre binôme.

- Chaque membre du binôme crée un compte sur `REPL.it <https://repl.it/signup>`_ (avec un mail, ou votre compte Google ou Facebook). C'est gratuit et rapide.
- Créez UNE équipe par binôme, donnez lui un nom respectant les règles bien précises : que des lettres a-z et des chiffres 0-9 et pas d'espace ni aucun autre symbole. Par exemple *inf1ur120XXXX* avec XXXXX un grand nombre à 5 chiffres.
- Par exemple, cela ressemblera à `cette équipe <https://repl.it/@inf1ur120lbess/>`_.
- Vous pouvez ensuite créer un nouveau "REPL" dans l'équipe, par exemple comme `celui-ci <https://repl.it/@inf1ur120lbess/Correction-TP7-exercice-1>`_.
- Vous devriez désormais être capables de collaborer sur ce fichier, et chacun devrait pouvoir écrire du code dans le *même* fichier, l'exécuter (i.e., compiler avec `javac`, et exécuter le résultat de la compilation avec `java`) et voir le résultat dans la fenêtre du terminal à droite.


- **Avantages ?** Pas besoin d'installer Java sur votre machine personnelle, pas besoin d'avoir un ordinateur.
- **Inconvénients ?** C'est des fois un peu lent...

.. note:: Si vous voulez écrire du code Java et l'exécuter en ligne, vous pouvez aussi utiliser le très bon outil Python Tutor, qui propose un mode Java (version 8) : PythonTutor.com/java.html <http://pythontutor.com/java.html#mode=edit>`_.


2.b) Avec Saros intégré dans Eclipse
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Le logiciel libre et gratuit `Saros <https://www.saros-project.org/>`_ fonctionne pour IntelliJ ou Eclipse, donc c'est une bonne solution pour les fans de Java.

- Regardez `la documentation qui explique comment installer Saros dans Eclipse <https://www.saros-project.org/documentation/installation.html?tab=eclipse>`_,
- Utilisez Saros pour collaborer avec votre binôme, directement dans Eclipse, sans avoir besoin de faire de partage d'écrans !
- Mais il sera quand même utile que vous utilisiez un des logiciels listés plus haut, pour appeler votre binôme, afin de pouvoir facilement discuter en direct.


- **Avantages ?** Vous serez très rapidement capable de collaborer à deux personnes sur le même fichier.
- **Inconvénients ?** Besoin d'installer Java sur votre machine personnelle, besoin d'avoir un ordinateur, besoin d'installer un plugin supplémentaire dans Eclipse.


3) Approche encore plus avancée : pour les experts !
----------------------------------------------------

3.a) Avec un dépôt Git
~~~~~~~~~~~~~~~~~~~~~~

Vous pouvez utiliser Git directement dans `REPL.it <https://repl.it/>`_ !

Vous pouvez aussi choisir l'approche suivante :

- Vous pouvez apprendre à utiliser les commandes de base du logiciel de gestion de version Git (`j'ai écrit un tutoriel ici <tutogit.fr.html>`_, il y en a `un autre assez concis ici <https://learnxinyminutes.com/docs/git/>`_, `un autre très bien ici <https://guides.github.com/introduction/git-handbook/>̀`_ et d'autres ressources listées `ici <https://try.github.io/>`_),
- Puis chaque membre du binôme crée un compte sur un site web qui propose d'héberger des dépôts Git. Le plus populaire est `GitHub <https://GitHub.com/>`_, il y a aussi `GitLab.com <https://gitlab.com>`_, `BitBucket <https://bitbucket.org/>`_. Créez un compte avec votre adresse email favorite. Mais l'ISTIC à l'Université Rennes 1 propose aussi un site vous permettant de faire ça, avec votre compte étudiant : `GitLab de l'ISTIC <https://gitlab.istic.univ-rennes1.fr/>`_
- Créez un dépôt git pour votre projet (ou vos TP), invitez votre binôme à collaborer sur le projet,
- Puis utilisez Eclipse (ou votre éditeur de code favori, moi j'aime bien `Visual Studio Code <visualstudiocode.fr.html>`_), sur votre machine personnelle, pour écrire votre code, et faites de nouveaux commits de temps en temps (régulièrement) pour sauvegarder votre code, et synchroniser le avec le dépôt git (``git add *.java``, ``git commit -m "message de commit"``, ``git push``).

- Utilisez git n'empêche pas de s'appeler et de travailler à deux, avec une personne écrivant son code dans Eclipse (ou autre), partageant son écran.

- Vous pouvez aussi utiliser Git directement dans l'interface de votre éditeur de code favori (Visual Studio Code, Sublime Text, Atom, Emacs ou Vim, tous proposent des plugins pour intégrer git dans l'éditeur), ou utilisez une interface graphique pour git (par exemple ``gitk``, ou `Git Kraken <https://www.gitkraken.com/>`_ qui marche très bien).


3.b) Avec d'autres approches
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note:: Si vous avez d'autres idées, d'autres façons de collaborer sur du code, n'hésitez pas à m'écrire un mail (ou autre solution pour me contacter, cf `cette page là <callme.fr.html>`_), et j'ajouterai ici ces conseils !


------------------------------------------------------------------------------

.. note:: Je n'ai jamais utilisé ces outils, je n'ai pas eu l'occasion de faire du pair-programming moi-même...


Des EDI en ligne (online IDE)
-----------------------------

- `REPL.it <https://repl.it/>`_ semble très puissant, supporte plein de langages, et un mode "multi-joueurs", pour collaborer sur un code à plusieurs (maximum 10 personnes en même temps avec l'offre gratuite),
- `PythonTutor <https://pythontutor.com/>`_ fonctionne pour Python 2 et 3, JavaScript et Java, et il est génial, je m'en sers pour mes `enseignements <enseignements.fr.html>`_ (mais il ne fonctionne que pour un seul petit fichier à la fois),
- `CodeAnyWhere <https://codeanywhere.com/>`_ est l'un des plus populaires et complets,
- `Cloud9 <https://aws.amazon.com/cloud9/>`_ est générique et puissant.


Plugins pour EDI (IDE)
----------------------

Il y a aussi évidemment des solutions spécifiques à des IDE :

- `Saros <https://www.saros-project.org/>`_ fonctionne pour IntelliJ ou Eclipse, donc c'est une bonne solution pour les fans de Java.

- `Gitduck <https://gitduck.com/>`_ est gratuit et marche pour Visual Studio Code et d'autres IDE moins populaires.

- `Floobits <https://floobits.com/>`_ semble conçu pour partager des fenêtres de terminal, et a des plugins pour GNU Emacs, Neovim, VS Code et Atom,

- `Visual Studio Code live-share <https://visualstudio.microsoft.com/services/live-share/>`_ pour `Visual Studio Code <visual-studio.fr.html>`_ l'éditeur open-source générique produit par Microsoft, l'un des éditeurs les plus utilisés au monde (et un logiciel que je trouve excellent, cf `la page que j'ai écrite à ce propos <visual-studio.fr.html>`_).

- `Teletype pour Atom <https://teletype.atom.io/>`_ pour Atom, l'éditeur open-source générique produit par GitHub. Il y a aussi d'autres "packages", comme `MotePair <https://atom.io/packages/motepair>`_.

- `RemoteCollab pour Sublime Text 2/3 <https://packagecontrol.io/packages/RemoteCollab>`_, un éditeur close-source générique, assez populaire mais en perte de part de marché (je l'aimais bien et je m'en suis servi pendant 4 ans, cf `cette page que j'ai écrite à ce propos <sublimetext.fr.html>`_).

Outils génériques
-----------------

- `Use Together <https://www.use-together.com/fr/>`_ est gratuit dans sa version simple, semble supporter toute application et pas juste quelques IDE,
- `Team Viewer <https://www.teamviewer.com/en/latest-release/>`_ fait un peu pareil,
- `CodeShare <https://codeshare.io/>`_ semble pas trop mal non plus !

Des solutions spécifiques à des OS
----------------------------------

- `Tuple App <https://tuple.app/>`_ est pour Mac OS.


---------------------------------------------------------------------

Références
----------
Ici je donne quelques liens vers des articles en ligne que j'ai consultées pour écrire cette page :

- `philippe.bourgau.net/best-open-source-tools-for-remote-pair-programming/ <https://philippe.bourgau.net/best-open-source-tools-for-remote-pair-programming/>`_
- `raygun.com/blog/remote-pair-programming/ <https://raygun.com/blog/remote-pair-programming/>`_
- `www.makeitinua.com/posts/13-best-tools-for-remote-pair-programming-in-2020 <https://www.makeitinua.com/posts/13-best-tools-for-remote-pair-programming-in-2020>`_
- `www.sitepoint.com/collaborative-coding-tools-for-remote-pair-programming/ <https://www.sitepoint.com/collaborative-coding-tools-for-remote-pair-programming/>`_

.. (c) Lilian Besson, 2011-2020, https://bitbucket.org/lbesson/web-sphinx/

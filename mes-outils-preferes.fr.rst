.. meta::
   :description lang=fr: Mes outils et logiciels informatique préférés, discussions et mes recommandations
   :description lang=en: My favorite computer tools and software, discussions and recommendations

###################################################################################
 Mes outils et logiciels informatique préférés, discussions et mes recommandations
###################################################################################

Ce article (trop long) liste quelques outils que j'aime utiliser sur mes ordinateurs.

.. todo:: Ajouter les liens web partout, quand la liste sera terminée.
.. todo:: Translate to `<mes-outils-preferes.en.html>`_ and `<my-favorite-tools.en.html>`_, when the page will be finished!

.. seealso:: Cette liste et discussion sur les `outils pédagogiques <https://perso.crans.org/besson/Info-Prepas-MP2I/Modele-de-livre-avec-Jupyter-Book/Outils-pedagogiques.html>`_. Et la liste du `Socle interministériel de logiciels libres <https://fr.wikipedia.org/wiki/Socle_interminist%C3%A9riel_de_logiciels_libres#Principaux_outils_num%C3%A9riques_pr%C3%A9conis%C3%A9s_par_le_SILL_2020>`_ (`catalogue <https://sill.etalab.gouv.fr/fr/software>`_) préconisés par l'État français depuis 2016.

- Date : février 2021 ;
- `Envoyez moi <callme.fr.html>`_ vos suggestions ?

Logiciels principaux
--------------------

**Liste rapide :**

- Navigateur : **Firefox** ;
- Mail : **Thunderbird** ;
- Terminal : **GNOME terminal** + **GNU/Bash** + **Byobu** ;
- Gestionnaire de version : **git** (et GitHub, Bitbucket et GitLab) ;
- Éditeur de texte : **Visual Studio Code** (graphique), **GNU Nano** (terminal), et **Jupyter notebook** (navigateur) ;
- Multimedia : musique avec **gmusicbrowser**, vidéo avec **VLC** ;
- PDF : **GNOME Evince** ;
- Sites favoris : *Wikipédia*, *GitHub*, *DuckDuckGo*, *YouTube*, etc.

---------------------------------------------------------------------

Système d'exploitation
~~~~~~~~~~~~~~~~~~~~~~

Je suis fan d'Ubuntu depuis 2012. Cette distribution GNU/Linux grand public combine la puissance et la variété de logiciels de Debian et d'un noyau GNU/Linux avec une facilité d'utilisation qui la rend très agréable au jour le jour.

- J'ai utilisé XUbuntu jusqu'en 2020, et un de mes ordinateurs utilise encore l'interface graphique XFCE.
- Un autre de mes ordinateurs utilise l'interface graphique GNOME. Je crois que je préfère XFCE, je n'ai pas encore fait l'effort de changer sur ce nouvel ordinateur.

**Avantages** : Quels sont les avantages d'Ubuntu ?

- Gratuit !
- Quasiment tout sous licence libre (pas aussi strict que Debian), quasiment tous les logiciels conçus pour GNU/Linux sont disponibles.
- Stable et très fiable, aucun bug matériel. Aucune mise à jour chiante qui ralentit quand on allume ou éteint l'ordinateur.
- Très peu de risque de virus !

**Inconvénients** :

- Même si Steam et quelques jeux vidéo sont disponibles nativement sous GNU/Linux, la plupart ne le sont pas. Je n'ai pas réessayé Wine ou PlayOnLinux depuis très longtemps (2012 ?), mais en attendant de le faire, cela limite le nombre de jeux vidéos disponibles sous Ubuntu... (*The Witcher 2* en fait partie et `j'espère y jouer en 2021 <resume-de-mon-annee-2021.html#en-2021-j-ai-joue-a-ces-jeux-video>`_).
- A part ça... je ne vois pas d'inconvénient !


Internet
~~~~~~~~
- **Navigateur web** : **Mozilla Firefox** (voir `mes extensions favorites <firefox-extensions.fr.html>`_ et trucs et astuces) ;

- Second navigateur web : **Google Chromium**. Très pratique d'en avoir un deuxième, sans aucune extension et sans aucune connexion à aucun site web, pour facilement tester une nouvelle page web que l'on vient de créer. En 2021, si une page web s'affiche bien sur Firefox *et* sur Chromium, elle est bien accessible à plus de 90% des visiteurs sur ordinateur.

- Gestionnaire de téléchargement : rien, je ne pirate pas ! C'est terminé l'époque des eMule et autres trucs P2P...


Messagerie
~~~~~~~~~~

- **Client email** : **Mozilla Thunderbird** ;
- **Client RSS/ATOM** : **Mozilla Thunderbird**. `Voir la liste de blogs que je lis <blog-roll.fr.html>`_. J'utilise encore RSS ! (comme `ce gars <https://atthis.link/blog/2021/rss.html>`_).

Autres messageries :

- **Discord** : site web, et appli bureau (et appli mobile). Pour les enseignements uniquement, à cause de la `crise sanitaire 2020+ <coronavirus.fr.html>`_ ;
- Telegram, Signal, Matrix et autres : je n'ai rien contre, juste pas encore utilisés ;
- **Facebook Messenger** et **WhatsApp** : quand nécessaire, mais je n'aime pas ça !

.. todo:: En 2021, enfin quitter ces deux applications/réseaux qui sont chiants ? Comme `ce blogueur que j'aime beaucoup <https://robertheaton.com/deleting-facebook/>`_ ?


Éditeur de texte
~~~~~~~~~~~~~~~~

- **Visual Studio Code** pour quasiment tout ! Voir `ces conseils <visualstudiocode.fr.html>`_.
    - Pour Python, OCaml, Bash et d'autres langages de programmation ;
    - Pour Markdown, reStructuredText et d'autres langages à balise ;
    - Pour LaTeX, avec LaTeX Workshop ça marche bien ;
    - Pour des Makefile, des fichiers YAML et autres fichiers de configurations ;
    - Mais *pas* pour des notebooks, je ne suis pas encore convaincu de l'interface !

.. sidebar:: `Codium <https://github.com/VSCodium/vscodium>`_ est VSCode mais moins intrusif, i.e., sans la possibilité pour Microsoft de vous espionner. Je recommande d'installer Codium, si on commence !

- Et **Jupyter notebook** dans un navigateur, pour rédiger des notebooks (voir `ces notebooks <https://github.com/Naereen/notebooks/>`_ par exemple) en Python, OCaml et d'autres langages (même `en Java ! <https://perso.crans.org/besson/teach/INF1_L1_Rennes1_2020-21/>`_).

- J'édite quasiment toujours mes fichiers avec `VSCode <visualstudiocode.fr.html>`_, mais souvent quand je souhaite juste lire ou modifier rapidement un fichier depuis le terminal, j'utilise **GNU Nano**, qui est rapide, simple et fiable. Bien plus modeste que les vénérables (mais trop compliqués) GNU Emacs et Vi(m), et plus standard que les alternatives modernes comme `slap <https://github.com/slap-editor/slap/>`_ ou `micro <https://micro-editor.github.io/>`_.

.. seealso:: Utiliser localement Python et un notebook Jupyter ? C'est possible sur ce site ! Sans rien avoir à installer !

    `Basthon <https://basthon.fr/>`_ est une console et un notebook Python très complets, fonctionnant en ligne sans besoin d'un serveur qui calcule votre code derrière : tout est interprété en javascript dans votre navigateur ! J'héberge une copie locale de Basthon, ici : `console Python 3.8 <Basthon/python/>`_, `notebook Jupyter Python 3.8 <Basthon/notebook/>`_. Ils sont aussi sur `python.besson.link <http://python.besson.link>`_ et `notebook.besson.link <http://notebook.besson.link>`_ (sans HTTPS mais c'est juste une copie transparente des dossiers de ce site).

.. seealso:: Utiliser localement un éditeur et interpréteur OCaml ?

    `BetterOCaml <https://BetterOCaml.ml/>`_ est une console et un éditeur OCaml simple, mais qui fonctionne en ligne sans besoin d'un serveur qui calcule votre code derrière : tout est interprété en javascript dans votre navigateur ! J'héberge une copie locale ici : `BetterOCaml <publis/BetterOCaml/>`_. Il est aussi sur `ocaml.besson.link <http://ocaml.besson.link>`_.

.. seealso:: Utiliser localement un éditeur et interpréteur C ?

    `JSCPP <https://github.com/felixhao28/JSCPP/issues/>`_ est un éditeur et débogueur C/C++ simple, mais qui fonctionne en ligne sans besoin d'un serveur qui calcule votre code derrière : tout est interprété en javascript dans votre navigateur ! J'héberge une copie locale ici : `JSCPP <publis/JSCPP/>`_. Il est aussi sur `jscpp.besson.link <http://jscpp.besson.link>`_.

.. seealso:: Utiliser localement un simulateur de machines de Turing ?

    `jsTuring_fr <https://github.com/Naereen/jsTuring_fr>`_ est un simulateur de machines de Turing, qui fonctionne en ligne ! J'héberge une copie locale ici : `jsTuring_fr <publis/jsTuring_fr/>`_. Il est aussi sur `turing.besson.link <http://turing.besson.link>`_.


Terminal
~~~~~~~~

- TL;DR **Terminal** : **Terminal GNOME** + **GNU Bash** + **Byobu** = love !

- J'utilise le terminal, avec **GNU Bash**, de façon quotidienne depuis 2012. Je suis tombé dedans en L3 de maths et info, et j'en suis jamais ressorti, pour mon plus grand plaisir.
- Sous Ubuntu, j'utilise Konsole sous XFCE, ou **Terminal GNOME** sous GNOME.
- L'essentiel est qu'il soit rapide, configurable... Et qu'il supporte les émojis 👌 ! On est en 2021 quand même !

.. note:: Alternative à GNU Bash ?

    - S'il fallait changer de shell, je choisirai sans hésiter `Fish Shell <https://fishshell.com/>`_ qui est très puissant et bien plus propre, plus moderne. Voir `cette page <https://hyperpolyglot.org/unix-shells>`_ pour des comparaisons.
    - J'utilise GNU Bash version 4. J'aimerai bien changer, mais j'ai écrit des centaines de script et des milliers d'alias, de commandes diverses et variées, et je n'ai ni le temps ni le courage de réécrire ça en Fish... Voir `ce dépôt (bin/) <https://bitbucket.org/lbesson/bin/>`_ et `cette page pour un aperçu <bin.fr.html>`_.

.. note:: Ma seule raison d'être jaloux de Mac OS X

    - J'aimerai avoir un terminal aussi puissant que `iTerm2 <https://iterm2.com/>`_ qui n'existe que pour Mac OS X, je suis jaloux de certaines fonctionnalités avancées. Mais pas grave !
    - Je crois que des émulateurs de terminal récents et modernes, comme `Hyper <https://hyper.is/>`_ (basé sur Electron), `Kitty <https://sw.kovidgoyal.net/kitty/>`_ ou `Alacritty <https://github.com/alacritty/alacritty/>`_ pourraient permettre d'avoir certaines fonctionnalités avancées aussi sur Ubuntu...

    .. todo:: A essayer ces trois alternatives ? Je n'avais pas été convaincu de Alacritty (`ils friment en disant « it's the fastest terminal », mais sans vrai preuve ! <https://github.com/alacritty/alacritty/issues/289>`_). Hyper semblait trop lent en 2017, et Kitty je n'ai pas essayé !


- J'utilise depuis 2014 un gestionnaire de session et d'onglets pour le terminal, qui s'appelle `Byobu <https://www.byobu.org/>`_ (surcouche à ``tmux``).
    + Après quelques jours, c'est juste indispensable... Ma (vieille) configuration est `ici <https://perso.crans.org/besson/publis/byobu.zip>`_ ;
    + J'utilise aussi des `tmux-plugins <https://github.com/tmux-plugins/>`_ dont `tmux plugin manager <https://github.com/tmux-plugins/tpm>`_ qui permet d'installer un greffon pour sauvegarder et restaurer mes onglets.

- Et j'utilise très souvent **GNU Nano** dans un terminal, pour des petites modifications rapides ;


Gestionnaire de version
~~~~~~~~~~~~~~~~~~~~~~~

- J'utilise **Git** avec passion depuis 2013.
    - Pourquoi ? Après avoir perdu des documents lors d'un vol d'un ordinateur en 2011, puis lors de la mort prématurée d'un disque dur, je fais désormais très attention de bien archiver mes documents de travail les plus importants.
    - Pour quoi ? Pour tout !
    - Où ? `sur GitHub <https://github.com/Naereen/>`_ pour quasiment tout depuis 2016, `sur Bitbucket <https://bitbucket.org/lbesson/>`_ avant (j'avais même `traduit le site web en 2013 <transifex.fr.html>`_) ;

- J'utilise **Git** avec les outils suivants :

    - en ligne de commande, avec des alias expliqués dans `<tutogit.fr.html>`_, quasiment tout le temps. Je sais que ce n'est pas le plus rapide ou le plus "user friendly", mais j'ai juste trop l'habitude. Et mes alias font une lettre : ``a file.txt`` pour ``git add``, ``c "Done"`` pour ``git commit -m "Done"``, ``p`` ou ``v`` pour ``git push`` et ``git pull``, etc ;
    - graphiquement depuis `VSCode`_ très souvent aussi ;
    - des fois avec `Git Kraken <https://www.gitkraken.com/>`_ qui est l'interface graphique moderne la plus puissante et jolie que je connaisse, et que je recommande.

- J'ai utilisé **SVN** avec `ce projet (teachensren) <https://gforge.inria.fr/projects/teachensren>`_ pendant 5 ans à l'ENS Rennes, et j'aime pas. Vraiment, j'arrive pas à voir l'intérêt, comparé à Git. Ça tombe bien, c'est moins utilisé désormais.

- J'ai utilisé **Mercurial** (hg) pour collaborer à quelques projets, il y a longtemps. Je n'en ai pas de bon souvenir, mais ça tombe bien, c'est moins utilisé désormais.


Multimédia
~~~~~~~~~~

- **Lecteur de musique** : **gmusicbrowser** (`GMusicBrowser.org <http://gmusicbrowser.org/>`_), vraiment parfait, je l'utilise constamment, depuis 2014. Interface très légère, charge CPU/RAM quasi inexistante, gère sans problème mes ~80 Go et ~23000 titres de musique, peut être modifié à la volée (tout le code est du Perl assez lisible, ce qui est un exploit en soit), peut être scripté et optimisé aux petits oignons ;
- **Lecteur vidéo** : **VLC** (`VideoLAN.org <https://www.videolan.org/>`_) ;

- **Vidéos en ligne** : `YouTube <https://www.youtube.com/>`_, regardez `cette liste de ce que j'essaie de regarder et écouter sur YouTube <ce-que-je-regarde-sur-youtube.fr.html>`_ ;
- **Création de vidéo** depuis le bureau : `OBS Studio <https://obsproject.com/fr/>`_ quand besoin de son ou de longues vidéos (cf `<twitch.fr.html>`_), et `Peek <https://github.com/phw/peek>`_ pour des petits GIF ;

- Autres :
    + interface plein écran quand je ne travaille pas : ma petite application `GMusicBrowser-FullScreen-WebApp <https://github.com/Naereen/GMusicBrowser-FullScreen-WebApp>`_ qui utilise Python et Flask ;
    + visualisations sympas : `ProjectM <https://github.com/projectM-visualizer/projectm>`_ mais bon c'est bof ;


Lecture et édition de PDF
~~~~~~~~~~~~~~~~~~~~~~~~~

- Pour lire des PDF : **GNOME Evince** ;
- Pour présenter des PDF en plein écran : **KDE Okular** ;
- Pour éditer des PDF avec une tablette graphique : **Xournal++** ;

Édition d'images et de photos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- *GIMP* : pour des petits choses sur des images, graphiquement ;
- *imagemagick* : pareil, mais en lignes de commande !
- *Inkscape*, un peu ;

Créer des documents pédagogiques
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- **reStructuredText**, pour ce site web surtout ! Édités avec `VSCode`_ ;
- **Markdown**, beaucoup, partout, tous les jours ! Édités avec `VSCode`_ ;
    + Avant j'utilisais des fois `Typora <https://typora.io/>`_ pour éditer des Markdown, mais `VSCode`_ est vraiment pratique et puissant, et ça fait un logiciel de moins à maîtriser ;
    + On peut écrire des slides avec Markdown, de plusieurs façons : j'ai déjà utilisé `remarkjs <https://remarkjs.com/>`_, `Marp (old Electron) <https://yhatt.github.io/marp/>`_, `Marp VSCode <https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode>`_, `Marp-cli <https://github.com/marp-team/marp-cli>`_ que j'aime bien, et surtout `pandoc <https://pandoc.org/>`_ avec un bon template LaTeX Beamer, suivi d'une étape de travail dans le LaTeX ;

- **LaTeX**, avec `pdfLaTeX <https://bitbucket.org/lbesson/bin/src/master/pdflatex>`_ (ou XeLaTeX), et VSCode avec des bonnes extensions pour la compilation intégrée et l'aperçu rapide. J'utilise aussi beaucoup ``latexmk`` et mes propres Makefiles en ligne de commande. Édités avec `VSCode`_ et :vscode:`LaTeX Workshop` ;
- **LaTeX TikZ** pour des figures, pour des documents LaTeX ou des sites Sphinx avec `sphinx-tikz <https://sphinxcontrib-tikz.readthedocs.io/en/latest/>`_ ;
- **LaTeX Beamer** pour des planches de cours ou de présentations ;

- **pandoc** pour transformer plein de formats en pages web ou PDF ;
    + y compris des slides, cf `@Naereen/slides <https://github.com/Naereen/slides/>`_ ;

- **Jupyter notebook** : pour rédiger des sujets de TD/TP d'informatique et de programmation, et plus.
    + Voir ces liens : `@Naereen/notebooks <https://github.com/Naereen/notebooks/>`_.
    + Je l'utilise pour Python 3, évidemment, mais pas seulement...
    + `Jupyter SQLite <https://github.com/jupyter-xeus/xeus-sqlite>`_ pour SQLite et enseigner les bases de données ;
    + `OCaml Jupyter <https://github.com/akabe/ocaml-jupyter/>`_ pour OCaml et l'enseigner !
    + `IJava Jupyter kernel <https://github.com/SpencerPark/IJava>`_ pour Java et l'enseigner !
    + Et j'ai aussi écrit des notebooks utilisant les kernels suivants : `GNU Octave <https://pypi.org/project/gnuplot-kernel/>`_, `GNU Bash <https://github.com/takluyver/bash_kernel>`_, `Rust <https://github.com/google/evcxr/blob/master/evcxr_jupyter/README.md#installation>`_ (`ici aussi <https://depth-first.com/articles/2020/09/21/interactive-rust-in-a-repl-and-jupyter-notebook-with-evcxr/>`_), et même `le C <https://github.com/brendan-rius/jupyter-c-kernel>`_

- **OCamlDoc** pour générer des documentations de programmes OCaml, voir ces exemples : `modélisation d'agrég <https://perso.crans.org/besson/a/m/2/doc/>`_, `Zenity OCaml <https://perso.crans.org/besson/publis/Zenity/doc/Zenity.html>`_, etc.
- **Sphinx doc** pour générer des documentations de programmes OCaml, voir ces exemples : `SMPyBandits <https://smpybandits.readthedocs.io/>`_, `MEC CS101 integrals <https://mec-cs101-integrals.readthedocs.io/>`_ et `MEC CS101 matrices <https://mec-cs101-matrices.readthedocs.io/>`_, `ansicolortags <https://ansicolortags.readthedocs.io/>`_ (et ce site web !) ;

- **Jupyter book** : jamais encore utilisé, mais c'est LE TRUC qui m'excite pour 2021 ! Cf. `Info-Prepas-MP2I/ <https://perso.crans.org/besson/Info-Prepas-MP2I/>`_.

.. todo:: ajouter une section spécifique à Jupyter ? Ou des liens ?
.. todo:: Essayer https://sqlitebrowser.org/ quand j'enseignerai SQL ?

Autres logiciels
~~~~~~~~~~~~~~~~

- **Sauvegarde de son ordinateur** (Backup) : deja-dup, des clés USB, des dépôts Git, des envois réguliers sur `ces dossiers en ligne <publis/>`_ ;
- **Sauvegarde en ligne** (cloud backup) : le même logiciel `ownCloud <https://owncloud.org/>`_ synchronise des dossiers sur plusieurs hébergeurs, notamment `le CRANS <https://owncloud.crans.org/login>`_ ;

- **Autres logiciels pour la musique** :
    + `Bruit Ambiant (Anoise) <http://anoise.tuxfamily.org/>`_ pour avoir des bruits d'oiseaux dans son salon,
    + et ce site `Generative.fm <https://play.generative.fm/browse>`_ pour des musiques discrètes d'ambiance quand je travaille ou durant les visios.

- **Appels visio** : fervent défenseur de la solution libre et gratuite `Jisti <jisti.fr.html>`_, j'ai aussi beaucoup utilisé de BigBlueButton à l'ENS Rennes. J'aime bien Discord, cf. plus haut. Je n'aime pas Zoom, Microsoft Teams ou Skype, mais je peux les utiliser si on m'y oblige...

- **Suivi d'activités sur mon ordinateur** (*self spying* ou *self quantified*, voir `cette page <self-quantified.fr.html>`_) :
    + Générique : `uLogMe <https://github.com/Naereen/uLogMe/>`_ que je maintiens depuis 2016. J'adore ! Elle utilise Python et Flask, et des scripts Bash ;
    + Pour le code dans VSCode : `WakaTime <wakatime.fr.html>`_ ;
    + J'ai des extensions Firefox qui font des statistiques très avancées, et `Mind the Time <https://addons.mozilla.org/en-US/firefox/addon/mind-the-time/>`_ fonctionne très bien.

- **Navigateur de fichiers** : **GNOME Nautilus**.
    - En 2012/13, j'avais contribué à `une extension pour avoir un terminal intégré <https://bitbucket.org/lbesson/nautilus-terminal/>`_, mais flemme de la remettre à jour, ce n'était pas si utile.

- **Gestionnaire de presse-papiers** : c'est un tout petit truc, mais indispensable ! Cela permet de garder en mémoire les derniers "copié-collés" et de les retrouver avec un petit menu. J'utilise depuis des années le merveilleux `glipper <https://launchpad.net/glipper>`_, mais il existe des alternatives sur Windows et Mac OS, et d'autres logiciels sous Ubuntu et autres Linux ;

- **Protéger ses yeux** : je travaille souvent la nuit, et j'utilise depuis des années un logiciel qui permet de réduire automatiquement la luminosité de mon écran, ainsi que réduire la lumière bleue. J'utilisais `Flux <https://justgetflux.com/linux.html>`_ mais depuis 2015 je préfère `Redshift <http://jonls.dk/redshift/>`_ (libre `sur GitHub <https://github.com/jonls/redshift/releases>`_), qui fonctionne mieux et s'installe facilement (voici `ma configuration <publis/redshift.conf>`_, qui désactive la géolocalisation par défaut). Sur `téléphone <apk.fr.html>`_, j'utilise `"Filtre lumière bleue - S'endormir facilement" <https://play.google.com/store/apps/details?id=jp.ne.hardyinfinity.bluelightfilter.free>`_.

- Recherche centralisée de logiciel ou de fichier : j'utilise **Synapse** sous GNOME, c'est très pratique pour lancer rapidement un programmable ;

- **Automatisation de compilation**, scripts locaux dans un dossier etc : **GNU Makefile**. J'en utilise partout ! J'ai abusé et écrit `mymake.sh <https://bitbucket.org/lbesson/bin/src/master/mymake.sh>`_ pour améliorer ``make`` (en cherchant un Makefile dans un dossier supérieur, et possiblement m'envoyer des SMS avec ``--FreeSMS``).

- Choix de formats et d'outils spécifiques :

    + **Compression** de fichiers : tout en archive ``zip``. Je sais, c'est pas le meilleur format, mais c'est le seul qui soit vraiment multi-plateformes. Je compresse aussi mes PDF avec ce `script <https://bitbucket.org/lbesson/bin/src/master/PDFCompress>`_.

    + **Gestion de photos** : je prends des photos avec mes téléphones, au format JPEG. Je nettoie les données EXIF avec ``exiftool`` (alias ``CleanPicturesR``) et je les compresse avec ``jpegoptim`` et `photosmagic.sh <https://bitbucket.org/lbesson/bin/src/master/photosmagic.sh>`_, et fait des galeries web avec `generateglisse.sh <https://perso.crans.org/besson/generateglisse.sh/>`_.

    + **Gestion de captures d'écrans** : je prends des captures d'écran très souvent, avec ``xfce4-screenshooter``, au format PNG. Des fois, je les compresse avec ``advpng`` ou ``optipng``.

- **Blogues et sites statiques** :

    + Ce site est généré avec `Sphinx <https://www.sphinx-doc.org/>`_ (générateur de documentation de Python) depuis 2013, sans trop de raison à part ma curiosité. Ces pages web sont donc écrites en `reStructuredText <https://docutils.sourceforge.io/rst.html>`_ (cf `source de ce document <_sources/mes-outils-preferes.fr.rst.txt>`_) J'ai utilisé Sphinx pour des projets pédagogiques, j'aime bien !
    + J'ai aussi deux petits blogues : `Zéro Déchet <zero-dechet/>`_ (~35 articles) et `cuisine <cuisine/>`_ (~100 articles), écrits en `Markdown <https://commonmark.org/>`_ et générés avec `Pelican <https://blog.getpelican.com/>`_, un générateur de site statique plus modeste, écrit en Python ;
    + Je triche en utilisant `StrapDown.js <https://github.com/Naereen/StrapDown.js/>`_ avec mon `autoindex StrapDown <https://bitbucket.org/lbesson/autoindex-strapdown/>`_ (pour Apache HTTPD) pour des jolis affichages du contenu des dossiers sur ce site, cf `cet exemple de dossier <https://perso.crans.org/besson/publis/>`_.

- **En ligne de commande**, j'utilise :

    + ``watch`` et ``crontab`` pour lancer des commandes régulières ;
    + ``wget`` et ``curl`` pour télécharger des fichiers depuis Internet, `CP <https://bitbucket.org/lbesson/bin/src/master/CP>`_ pour copier mes fichiers localement et sur le réseau (surcouche à `rsync <https://fr.wikipedia.org/wiki/Rsync>`_ ;
    + ``notify-send`` et ``zenity`` pour des notifications et petites interfaces graphiques en Bash ;
    + `rip-grep <https://github.com/BurntSushi/ripgrep>`_ comme alternative moderne à ``grep``, ``find`` et ``ls`` pour trouver et manipuler des fichiers ;
    + quand nécessaire, ``tr``, ``sort``, ``tail``/``head``, ``shuf``, ``cut`` pour manipuler des flux de textes ;
    + et un peu de ``sed`` (j'adore) et ``awk`` aussi (mais je connais pas bien awk) ;
    + `yt-dl <https://yt-dl.org/>`_ et des scripts maisons pour télécharger des chansons, `playlists <https://bitbucket.org/lbesson/bin/src/master/youtube-playlist.sh>`_ et `albums <https://bitbucket.org/lbesson/bin/src/master/youtube-album.sh>`_ depuis `YouTube <https://www.YouTube.com>`_ ;
    + et ces sites magnifiques : `ExplainShell.com <https://explainshell.com/>`_ pour l'aide, `wttr.in <http://wttr.in/>`_ pour la météo, `Wolfram|Alpha en mode texte <wolfram.fr.html>`_ c'est drôle et pratique ;

- **Licence libre ?**

    + J'utilise quasiment uniquement la `Licence MIT <https://lbesson.mit-license.org/>`_, principalement parce que le site `mit-license.org <https://mit-license.org/>`_ est cool et la licence est courte et permissive ;
    + Mes articles de recherche sur `HAL <https://hal.inria.fr/search/index/q/*/authIdHal_s/lilian-besson>`_ et `CEL <https://hal.inria.fr/cel-01830248v1>`_ sont sous `licence Creative Commons <https://creativecommons.org/licenses/by-nc-sa/4.0/deed.fr>`_ ;
    + Des vieux projets sont encore sous `licence GPLv3 <LICENSE.html>`_, mais je sais plus trop pourquoi ;
    + J'admire les `licence WTFPL <http://www.wtfpl.net/about/>`_, et autres ;
    + `Il faut choisir une licence, sinon tout est fermé <https://choosealicense.com/no-permission/>`_ et même si votre code est accessible en ligne, il reste sous votre copyright !
    + `Ça reste <https://en.wikipedia.org/wiki/Free-software_license>`_ `compliqué <https://en.wikipedia.org/wiki/List_of_free-content_licences>`_, et `il y a beaucoup de licences <https://en.wikipedia.org/wiki/Comparison_of_free_and_open-source_software_licences>`_.

- TODO continuer, quand j'aurai des idées.

- Jeux vidéos sous Ubuntu :
    + **Pictionnary** : `un tableaunoir partagé <http://tableaunoir.irisa.fr/>`_ + `mon appli minimaliste pour générer un mot aléatoire <https://naereen.github.io/Free-dictionnaries-for-Pictionnary/index.html>`_ ;
    + **Clone de Zelda 2D** : `Solarus Games <https://www.solarus-games.org/>`_ (moteur en C++, jeux en Lua, open source !) ;
    + **Clones de Fire Emblem 2D** : `Lex Talionis <https://gitlab.com/rainlash/lex-talionis/>`_ (moteur en Python, jeux en XML/text et Python, open source !) ;
    + **Steam** : `disponible sous Linux <https://store.steampowered.com/linux>`_ depuis quelques années !


Logiciels en lignes
~~~~~~~~~~~~~~~~~~~

- **Tableau en ligne** : le magnifique et régulièrement amélioré **Tableaunoir** ! Il est aussi sur mon site sur `tableaunoir.besson.link <http://tableaunoir.besson.link>`_.
- **Traduction automatique** : `DeepL <https://www.deepl.com/translator>`_ et `Google Translate <https://translate.google.com/>`_, quand nécessaire ! Mais le moins possible !

- **Cartographie** : `OpenStreetMap <https://www.openstreetmap.org/>`_, `rome2rio <https://www.rome2rio.com/>`_, et en dernier recours `Google Maps <https://www.google.fr/maps>`_ ;

- **Voyages** : `CouchSurfing <https://www.couchsurfing.com/>`_, `BlaBlaCar <https://www.BlaBlaCar.fr/>`_ ;

- **Billets de train** : `The TrainLine <https://www.thetrainline.com/fr>`_, anciennement TrainLine, anciennement CaptainTrain, anciennement Capitaine Train. Je les adore depuis le début, mais <je râle> leurs nouveaux site et appli sont vraiment moins bien qu'avant </je râle>.

- **Notes et suivi de tâches** : `Google Keep <https://keep.google.com/>`_ ;
- **Emploi du temps et calendrier** : `Google Notes <https://calendar.google.com/>`_ ;

.. todo:: Passer à des solutions Open Source et hébergées localement ? FramaSoft propose des bonnes idées.
.. todo:: Pour Google Notes au moins, je peux essayer `Orgzly <https://play.google.com/store/apps/details?id=com.orgzly&hl=en>`_ côté appli android, et `org-mode <http://orgmode.org/>`_ in VSCode côté bureau ? mais comment synchroniser facilement ? Ou alors `une appli avec Markdown <https://play.google.com/store/apps/details?id=io.gitjournal.gitjournal>`_ mais `org-mode gère bien les calendriers <https://karl-voit.at/2017/09/23/orgmode-as-markup-only/>`_ `apparemment <https://beepb00p.xyz/tags.html#quantifiedself>`_.
.. todo:: Pour l'emploi du temps, je veux passer à autre chose, mais j'ai besoin de garder des notifications bureaux/android !!

---------------------------------------------------------------------

Je dois encore m'améliorer
--------------------------

.. todo:: Je liste ici des pistes pour améliorer certains aspects de mon utilisation de mes ordinateurs.

Je pense qu'il existe des greffons pour mes logiciels favoris, pour répondre à ces besoins :

- Des templates de mail facile d'accès, et pas des brouillons à copier-coller (Thunderbird) ;
- Des templates de nouveaux documents facile d'utilisation, et pas de copier-coller (VSCode) ;

Moins importants :

- Une bonne façon de recevoir par flux RSS ou email les modifications sur une page web quelconque : pour suivre les nouveaux documents publiés par des collègues, les résultats de concours etc...
- Une meilleure solution de back-up de mes ordinateurs ?
- Ne plus utiliser Google Agenda et Google Notes ;
- Une meilleure solution de sauvegarde de dossiers de mon ordinateur en ligne, et entre les ordinateurs ;

---------------------------------------------------------------------


D'autres listes sur ce site ?
-----------------------------

.. seealso::

    Pour des applications sur téléphone ? `Cette page <apk.fr.html>`_ liste mes applications Android préférées.

.. seealso::

   Pour des extensions (plugin) des logiciels principaux ?
   Ces pages parlent des logiciels que j'utilise principalement, et des extensions et configurations que j'utilise pour ces logiciels :

   - `Pour Mozilla Firefox <firefox-extensions.fr.html>`_, meilleur navigateur web ;
   - `Pour (Microsoft) Visual Studio Code <visualstudiocode.fr.html>`_, un très bon éditeur de texte générique ;
   - D'autres pointeurs : `<zotero.fr.html>`_ gestionnaire de bibliographie, `un tutoriel sur Git <tutogit.fr.html>`_ le meilleur gestionnaire de version, sur Python : pour `apprendre Python <apprendre-python.fr.html>`_ ou `écrire du Python depuis une page web sur ce site <skulpt.html>`_, idem `pour OCaml <try-ocaml.fr.html>`_...

---------------------------------------------------------------------

Références
----------
Ici je donne quelques liens vers des articles en ligne que j'ai consultées pour écrire cette page :

- `Cette liste d'outils de Nicolas Mesnier <http://nmesnier.free.fr/#outils>`_ ;
- `Cette liste d'outils (en anglais) de Karl Voit <https://karl-voit.at/apps-I-am-using>`_, exhaustive et bien rédigée ;
- `Ma vieille liste <trademarks.html#used-softwares>`_ probablement pas mise à jour depuis 2013 ;

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

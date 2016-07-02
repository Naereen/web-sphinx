.. meta::
   :description lang=en: Description of scripts in folder bin/
   :description lang=fr: Page décrivant les binaires et les scripts du dossier bin/

############################################
 Description of scripts in folder `<bin/>`_
############################################

.. todo:: Translate this page to English!

About this page
---------------
.. note:: New git repository:

    All my scripts and small programs are publicly published on this
    `bin.git <https://bitbucket.org/lbesson/bin/>`_ repository (and more information about the license is `README.html <bin/README.html>`_).


This page explains how to use **some** of the scripts published in the folder `<bin/>`_,
it contains a lot of small softwares, scripts and command line tools.
Most of them have been written by `me <index.html>`_.

.. sidebar:: Go back to the homepage?

   If this page has no interest for you, please go back to the main page `<index.html>`_.

------------------------------------------------------------------------------

.. warning:: Only on Ubuntu

   Warning: these scripts have been written on and for my personal laptop, running on (X)Ubuntu 15.10,
   and have only been tested on this distribution and this OS.
   Most of them should work on other Linux distribution, they should also work on Windows, with `cygwin <https://www.cygwin.org/>`_, and on Mac OS X with Bash.

.. warning:: Disclaimer

   All these scripts are provided "AS IS", in any case I cannot be held responsible for any consequence of the use of any of these script.


GNU Bash
--------

* `.bashrc <bin/.bashrc>`_,
  My profile for GNU Bash, highly optimized over the years.

  :État: *DONE*.


* `.bash_aliases <bin/.bash_aliases>`_,
  Additional file for my GNU Bash profile Bash, defining aliases and functions. Extremely complete.

  :État: *Done*, but constantly improved.

------------------------------------------------------------------------------

Partial list of my scripts
--------------------------

.. note:: Contribute ?

    Most of these scripts works on my personal laptop ((X)Ubuntu 15.10, GNU Bash v4.3).
    But for some of them, certain options or certain features could be broken, failing or unavailable for you.
    **Any feedback on any of these scripts is the most welcome**.

    You can use this `feedback form to notify me of a bug <https://bitbucket.org/lbesson/home/issues/new>`_,
    or just send me an email.

    *And* any contribution is welcome, and will be merged in the next version of the concerned script
    (these files are distributed under the conditions of the `GPLv3 license <LICENSE.html>`_).


Wrapper colorant la sortie de commandes courantes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `ocamlc <bin/ocamlc>`_ et `ocamlopt <bin/ocamlopt>`_,
  deux scripts colorant la sortie des compilateurs OCaml ``ocamlc`` et
  ``ocamlopt`` pour la rendre plus lisible (colore ce qui est important, souligne les erreurs en rouge).
  **Attention** éventuellement, le chemin ``/usr/local/bin/ocamlc`` est à adapter (sur votre machine, c'est sûrement /usr/bin/ocamlc).

  :État: *Stable et performant* :red:`New!`


* `CP <bin/CP>`_,
  un script colorant la sortie de ``rsync`` pour la rendre plus lisible.
  *rsync* est utilisé avec les bonnes options, pour permettre un transfert de fichier efficace,
  joli (avec une barre de progression dans le terminal), à travers le réseau
  (par ex. ``CP *.pdf super@man.fr:~/web/pdf/`` copie tous les PDFs du dossier courant vers
  le dossier ``~/web/pdf/`` sur l'ordinateur *man.fr* pour l'utilisateur *super*).

  :État: *Stable et performant* :red:`New!`


* `pdflatex <bin/pdflatex>`_,
  un script colorant la sortie de ``pdflatex`` pour la rendre plus lisible (colore ce qui est important).

  :État: *Stable et performant*


* `chktex <bin/chktex>`_,
  un script colorant la sortie de ``chktex`` pour la rendre plus lisible (colore ce qui est important).

  :État: *Stable et performant*


Gallerie photo et lecteur de musique
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `generateglisse.sh <bin/generateglisse.sh>`_ (une démo ? `<generateglisse.sh/>`_ ici),
  est un script pour générer de jolies galeries photo.
  Utilise des fichiers disponibles dans le dossier `<bin/generateglisse/>`_.
  Il faut tout télécharger, et copier ce dossier dans *$HOME/bin/*
  (ou n'importe quel dossier dans votre *$PATH*).

  :État: *Super*


* `generatejplayer.sh <bin/generatejplayer.sh>`_ (une démo ? `<generatejplayer.sh/>`_ ici),
  est un script pour générer de superbes playlist pour un dossier contenant des mp3.
  Utilise des fichiers disponibles dans le dossier `<bin/generatejplayer/>`_.
  Il faut tout télécharger, et copier ce dossier dans *$HOME/bin/*
  (ou n'importe quel dossier dans votre *$PATH*).

  :État: *Sympa* (toujours quelques bugs sur certains caractères spéciaux dans les URLs, supporte juste les mp3)


Utilitaires divers
^^^^^^^^^^^^^^^^^^

* `autotex <bin/autotex>`_,
  un outil *expérimental* (uniquement pour GNU/Linux) pour rapidement écrire du \\(\\LaTeX{}\\) sans en-têtes, **juste en écrivant le contenu**.
  Repose sur `naereen.sty <publis/latex/naereen.sty>`_ pour le style, et `template.fr.tex <publis/latex/template.fr.tex>`_ (ou `template.en.tex <publis/latex/template.en.tex>`_ en anglais) à sauvegarder dans votre *$HOME* (``~``).
  D'autres feuilles de style sont disponibles dans le dossier `<publis/latex/>`_.

  :État: *Expérimental* mais fonctionne très bien.


* `dl.sh <bin/dl.sh>`_,
  un script (modifié à chaque utilisation) pour facilement télécharger tous les documents présents sur une page web.
  Assez expérimental, car l'analyse du code HTML de la page dépend de chaque cas.

  :État: *Expérimental*.


* `gravatar.py <bin/gravatar.py>`_,
  un exemple d'utilisation simple de l'API de `gravatar <https://fr.gravatar.com/>`_.

  :État: *Simpliste*, mais fonctionne :).


* `CheckDownload_Pypi.sh <bin/CheckDownload_Pypi.sh>`_,
  un tout petit script pour lire les statistiques de téléchargement d'un paquet
  hébergé sur sur `pypi <https://pypi.python.org/>`_.
  Par exemple, mon `module ANSIColors <https://pypi.python.org/pypi/ANSIColors-balises>`_, ou sa version plus récente `ansicolortags <https://pypi.python.org/pypi/ansicolortags>`_ (Python 2 et 3).

  :État: *Fonctionnait*, mais `pypi`_ a arrêté d'afficher les téléchargements depuis avril 2016.


* `PDFCompress <bin/PDFCompress>`_,
  un script pour automatiquement signer, compresser, ou encore changer les méta-données d'un ou plusieurs document(s) PDF, en ligne de commande.
  Très utile, notamment avant d'envoyer des PDFs sur un serveur web ou par courriels.
  Selon le type de *PDF*, l'efficacité de la compression varie de 5% *à 400%* !

  J'ai enfin ajouté une vérification de l'efficacité de la compression,
  et il *arrive* que le *PDF* produit soit PLUS lourd qu'avant. Dans ce cas, pas de soucis,
  il suffit de l'échanger avec l'ancienne version (conservée dans ``/tmp/``).

  Il est désormais muni d'un fichier de bash completion, `PDFCompress.bash_completion <bin/PDFCompress.bash_completion>`_, avec mon bashrc, il suffit de l'inclure dans ``~/.bash_completion.d``. Sinon, il suffit de l'inclure dans ``/etc/bash_completion.d/``.

  :État: *Stable et efficace*.


* `series.sh <bin/series.sh>`_,
  un script pour automatiser la lecture de l'épisode suivant de la série en cours de lecture.

  :red:`Il est désormais muni d'un fichier de bash completion,` `series.sh.bash_completion <bin/series.sh.bash_completion>`_:red:`, avec mon bashrc, il suffit de l'inclure dans ~/.bash_completion.d. Sinon, il suffit de l'inclure dans /etc/bash_completion.d/ !`

  :État: *Superbe*.


* `pytorst.sh <bin/pytorst.sh>`_,
  un (vieux) script pour automatiser l'écriture d'un fichier .rst pour documenter un script via Sphinx.

  :État: *Terminé*. Note : ``sphinx-apidoc`` ou ``sphinx-autogen`` font pareil, en mieux.


* `obscureemail.sh <bin/obscureemail.sh>`_,
  un script pour cacher les adresses emails dans tous les fichiers d'un répertoire.
  Par défaut, ne cherche que les adresses avec un domaine parmi ceux que j'utilises,
  et ne modifie que les fichiers *plain/text*.

  :État: *Assez dangereux* (à manipuler avec précaution).


* `save_disk_daily.sh <bin/save_disk_daily.sh>`_,
  un script pour automatiser la sauvegarde d'une distro Ubuntu entière
  installée via wubi, sur un disque dur externe.

  :État: *Terminé*.


* `.color.sh <bin/.color.sh>`_,
  un script pour définir de nombreuses couleurs ANSI pour GNU Bash,
  utilisé dans de nombreux autres scripts. Automatiquement généré avec `<publis/ansi-colors/>`_.
  Il est utilisé par de nombreux autres scripts, qui l'importent, en le cherchant dans votre ``$HOME``.

  :État: *Parfait*.


* `vrun <bin/vrun>`_,
  un script pour contrôler ``vlc`` en ligne de commande,
  est utilisé dans ``series.sh``, et ``.bash_aliases``.
  *N'est pas écrit par moi !*

  :red:`Il est muni d'un fichier de bash completion,` `vrun.bash_completion <bin/vrun.bash_completion>`_:red:`, avec mon bashrc, il suffit de l'inclure dans ~/.bash_completion.d. Sinon, il suffit de l'inclure dans /etc/bash_completion.d/ !`

  :État: *Terminé*.


* `searchgpg.sh <bin/searchgpg.sh>`_,
  permet de rechercher dans la base de donnée de `clés GPG <gpg.html>`_ du MIT
  (serveur `<http://pgp.mit.edu:11371/pks>`_) pour un nom ou prénom.

  :État: *Terminé*. Plus expérimental (et inutile) qu'autre chose.


* `randomgifts.sh <bin/randomgifts.sh>`_,
  un script pour automatiser l'attribution de cadeaux dans un groupe d'ami.
  Il lit un fichier ``~/bin/addresses.txt`` contenant les adresses des amis
  (sous la forme "Prénom Nom <prenom.nom@domain.com>" ou "adresses@dom.com"),
  et trouve une permutation sans point fixe (*i.e.* un dérangement).
  Chaque personne reçoit ensuite un mail lui précisant sa *cible*
  (utilise ``mutt`` et mes fichiers de conf' présents dans `<publis/muttrc/>`_)
  en lisant le modèle de mail `randomgifts.template.txt <bin/randomgifts.template.txt>`_.

  :État: *Trop badass* mais quand même assez expérimental. `Ce site fait pareil mais en mieux <https://secretsantagenerator.net/pages/about>`_.


Quelques scripts pour jouer avec des citations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `quotes.sh <bin/quotes.sh>`_,
  pour récupérer une citation (aléatoire ou non) depuis `<https://www.wikiquote.org>`_.

  :État: *Stable*.


* `makequotes.sh <bin/makequotes.sh>`_,
  pour construire une liste de citation
  (une fichier texte avec une citation complète par ligne).
  Utilise `quotes.sh`. A permis de construire `<publis/.quotes.txt>`_ !

  :État: *Stable*.

* `RandQuote.sh <bin/RandQuote.sh>`_,
  pour afficher une citation aléatoire (graphiquement avec *zenity*)
  lue depuis le fichier `<publis/.quotes.txt>`_ (qui doit être sauvé dans votre *$HOME*).

  :État: *Super cool*.

* `MailRandQuote.sh <bin/RandQuote.sh>`_,
  pour envoyer par email une citation aléatoire. Utilise `<bin/mail_ghost.py>`_.

  :État: *Super cool*.


* `changemotd.sh <bin/changemotd.sh>`_,
  un script pour changer le "message of the day" (motd) interactivement
  (dans le terminal avec *dialog* ou graphiquement avec *zenity*)

  :État: *Fonctionnel*.


Une expérience: des exercices de maths reçus par email ?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Ces scripts se basent sur le superbe site `<http://mp.cpgedupuydelome.fr>`_.

* `Exercice.sh <bin/Exercice.sh>`_,
  récupère un exercice aléatoire. Lance *elinks* sur la page, à moins d'être appelé
  avec l'option ``--static``. Encore expérimental pour récupérer le code TeX de chaque exo.

  :État: *Fonctionnel*.

* `MailExercice.sh <bin/MailExercice.sh>`_,
  envoie par email un exercice aléatoire. Peut être appelé avec l'option ``html`` pour envoyer
  un email formaté en HTML, plus lisible (et qui embarque une autre expérience, l'analyse
  d'audience via *ga-beacon*, voir `<beacon.html>`_ pour plus d'infos).
  Encore expérimental pour formater le texte de chaque exercice de façon *vraiment* lisible..

  :État: *Super cool*.


Pour améliorer certains toplevels
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `mocaml <bin/mocaml>`_,
  une petite surcouche au toplevel ``OCaml``. Utilise *rlwrap* et *ledit*.
  Fonctionne encore mieux avec cette liste de mots-clés (qui permet d'avoir une tab-complétion) :
  `keyword_mocaml_rlwrap.txt <bin/keyword_mocaml_rlwrap.txt>`_ à sauvegarder dans votre *$HOME*.

  :État: *Fonctionne*.


* Dans le même genre, `iocaml <bin/iocaml>`_ et `ocm <bin/ocm>`_
  sont deux expériences pour une meilleure utilisation du terminal ``OCaml``.

  :État: *Plutôt expérimental*.


* `octave <bin/octave>`_ et `octave-gui <bin/octave-gui>`_,
  deux scripts pour mieux utiliser ``GNU Octave``.

  :État: *Terminé*.


* `.pythonrc <bin/.pythonrc>`_,
  fichier d'initialisation ``Python`` lancé au démarrage du toplevel ``Python``.

  :État: *Terminé*.


* `.ocamlinit <bin/.ocamlinit>`_,
  fichier d'initialisation ``OCaml`` lancé au démarrage du toplevel ``OCaml``.

  :État: *Nul*.


Manipuler l'état de l'ordinateur (volume, batterie, ..)


* `GoingSleep.sh <bin/GoingSleep.sh>`_,
  un script pour mettre l'ordinateur en veille depuis un accès ssh.

  :État: *Expérimental*, marche sur ma machine *seulement* (enfin, pas testé ailleurs)...


* `Volume.sh <bin/Volume.sh>`_,
  un script pour manipuler le volume de votre ordinateur en ligne de commande.

  :État: *Expérimental*, marche sur ma machine *seulement* (enfin, pas testé ailleurs)...


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

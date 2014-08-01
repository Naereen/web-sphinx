.. meta::
   :description lang=fr: Page décrivant les binaires et les scripts du dossier bin/
   :description lang=en: Description of scripts in folder bin/

############################################
 Scripts et binaires (du dossier `<bin/>`_)
############################################
.. include:: .special.rst

À-propos
--------
.. note:: Nouveau dépôt git :

    Tous mes scripts et petits programmes sont de nouveau publiquement disponibles sur le tout neuf
    `bin.git <https://bitbucket.org/lbesson/bin/>`_ (ou plus d'informations ici `README.html <bin/README.html>`_).


Cette page est là pour décrire les divers éléments du dossier `<bin/>`_.

Ce dossier contient un certain nombre de petits logiciels, scripts ou autres utilitaires.

.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter `celle là <index.html>`_.


------------------------------------------------------------------------------

.. warning:: Uniquement sur Ubuntu

   Attention: ces scripts sont écrits pour ma machine (Ubuntu 12.04.4),
   et donc ne sont testés que sur cette plateforme.
   La plupart peuvent fonctionner ailleurs, mais je ne pourrais être responsable
   d'un quelconque disfonctionnement dûs à l'un de ces scripts.

   Notamment, ces scripts peuvent aussi fonctionner sous Windows, avec `cygwin <https://www.cygwin.org/>`_.


GNU Bash
--------

* `.bashrc <bin/.bashrc>`_,
  Profil pour GNU Bash.

  :État: *Terminé*, mais toujours en amélioration.


* `.bash_aliases <bin/.bash_aliases>`_,
  Profil complémentaire pour GNU Bash, définition d'alias et de fonctions.

  :État: *Terminé*, mais en amélioration constante..

------------------------------------------------------------------------------

Liste des scripts
-----------------

.. note:: Contribuer ?

    Tous ces scripts fonctionnent normalement correctement sur ma machine (Ubuntu 12.04.3 LTS, GNU Bash v4.2).
    Mais il est possible que certains scripts ou certaines fonctionnalités ne soient pas disponibles,
    voir même échouent complètement.
    **Tout retour d'utilisation est le bienvenu**.

    Vous pouvez utiliser `ce gestionnaire de bug <https://bitbucket.org/lbesson/home/issues/new>`_,
    ou encore m'envoyer un mail.

    *Par ailleurs* toute contribution est la bienvenue, et sera intégrée dans les prochaines versions
    du script concerné
    (ces scripts sont distribués sous les termes de la `licence GPLv3 <LICENSE.html>`_).


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

* `generateglisse.sh <bin/generateglisse.sh>`_ (aller voir un démo `<generateglisse.sh/>`_ ici),
  est un script pour générer de jolies galeries photo.
  Utilise des fichiers disponibles dans le dossier `<bin/generateglisse/>`_.
  Il faut tout télécharger, et copier ce dossier dans *$HOME/bin/*
  (ou n'importe quel dossier dans votre *$PATH*).

  :État: *Super*


* `generatejplayer.sh <bin/generatejplayer.sh>`_ (aller voir un démo `<generatejplayer.sh/>`_ ici),
  est un script pour générer de superbes playlist pour un dossier contenant des mp3.
  Utilise des fichiers disponibles dans le dossier `<bin/generatejplayer/>`_.
  Il faut tout télécharger, et copier ce dossier dans *$HOME/bin/*
  (ou n'importe quel dossier dans votre *$PATH*).

  :État: *Presque parfait* (toujours quelques bugs sur certains caractères spéciaux dans les URLs, supporte juste les .mp3)


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
  hébergé sur sur `pypi <https://pypi.python.org/>`_. Par exemple, mon `module ANSIColors <https://pypi.python.org/pypi/ANSIColors-balises>`_.

  :État: *Parfait*.


* `proxy.sh <bin/proxy.sh>`_,
  un script pour lancer un serveur *SOCKS* facilement, avec une machine locale du réseau (interne) du `crans <https://www.crans.org>`_.

  :État: *Parfait*.


* `PDFCompress <bin/PDFCompress>`_,
  un script pour automatiquement signer, compresser, ou encore changer les méta-données d'un ou plusieurs document(s) PDF, en ligne de commande.
  Très utile, notamment avant d'envoyer des PDFs sur un serveur web ou par courriels.
  Selon le type de *PDF*, l'efficacité de la compression varie de 5% a 400% !

  J'ai enfin ajouté une vérification de l'efficacité de la compression,
  et il *arrive* que le *PDF* produit soit PLUS lourd qu'avant. Dans ce cas, pas de soucis,
  il suffit de l'échanger avec l'ancienne version (conservée dans */tmp/*).

  :red:`Il est désormais muni d'un fichier de bash completion,` `PDFCompress.bash_completion <bin/PDFCompress.bash_completion>`_:red:`, avec mon bashrc, il suffit de l'inclure dans ~/.bash_completion.d. Sinon, il suffit de l'inclure dans /etc/bash_completion.d/ !`

  :État: *Stable et efficace*.


* `series.sh <bin/series.sh>`_,
  un script pour automatiser la lecture de l'épisode suivant de la série en cours de lecture.

  :red:`Il est désormais muni d'un fichier de bash completion,` `series.sh.bash_completion <bin/series.sh.bash_completion>`_:red:`, avec mon bashrc, il suffit de l'inclure dans ~/.bash_completion.d. Sinon, il suffit de l'inclure dans /etc/bash_completion.d/ !`

  :État: *Superbe*.


* `pytorst.sh <bin/pytorst.sh>`_,
  un script pour automatiser l'écriture d'un fichier .rst pour documenter un script via Sphinx.

  :État: *Terminé*.


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

  :État: *Terminé*. Plus expérimental qu'autre chose.

  :Exemple:

  .. runblock:: console

      $ searchgpg_nocolor.sh zelda 2>&1 | tr @ '#'


* `randomgifts.sh <bin/randomgifts.sh>`_,
  un script pour automatiser l'attribution de cadeaux dans un groupe d'ami.
  Il lit un fichier ``~/bin/addresses.txt`` contenant les adresses des amis
  (sous la forme "Prénom Nom <prenom.nom@domain.com>" ou "adresses@dom.com"),
  et trouve une permutation sans point fixe (*i.e.* un dérangement).
  Chaque personne reçoit ensuite un mail lui précisant sa *cible*
  (utilise ``mutt`` et mes fichiers de conf' présents dans `<publis/muttrc/>`_)
  en lisant le modèle de mail `randomgifts.template.txt <bin/randomgifts.template.txt>`_.

  :État: *Trop badass* mais quand même assez expérimental.


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

  :État: *Superbe*.


* Dans le même genre, `iocaml <bin/iocaml>`_ et `ocm <bin/ocm>`_
  sont deux expériences pour une meilleure utilisation du terminal ``OCaml``.

  :État: *Plutôt expérimental*.


* `.octave.sh <bin/.octave.sh>`_,
  un script pour mieux utiliser ``GNU Octave``.

  :État: *Terminé*.


* `.pythonrc <bin/.pythonrc>`_,
  fichier d'initialisation ``Python`` lancé au démarrage du toplevel ``Python``.

  :État: *Terminé*.


* `.ocamlinit <bin/.ocamlinit>`_,
  fichier d'initialisation ``OCaml`` lancé au démarrage du toplevel ``OCaml``.

  :État: *Inintéressant*.


Manipuler l'état de l'ordinateur (volume, batterie, ..)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `Battery.sh <bin/Battery.sh>`_,
  un script pour récupérer les informations sur la batterie de votre ordinateur.

  :État: *Expérimental*, marche sur ma machine *seulement* (enfin, pas testé ailleurs)...


* `GoingSleep.sh <bin/GoingSleep.sh>`_,
  un script pour mettre l'ordinateur en veille depuis un accès ssh.

  :État: *Expérimental*, marche sur ma machine *seulement* (enfin, pas testé ailleurs)...


* `Volume.sh <bin/Volume.sh>`_,
  un script pour manipuler le volume de votre ordinateur en ligne de commande.

  :État: *Expérimental*, marche sur ma machine *seulement* (enfin, pas testé ailleurs)...


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
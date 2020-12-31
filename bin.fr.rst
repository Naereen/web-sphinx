.. meta::
   :description lang=fr: Page décrivant les binaires et les scripts du dossier bin/
   :description lang=en: Description of scripts in folder bin/

############################################
 Scripts et binaires (du dossier `<bin/>`_)
############################################


À-propos de cette page
----------------------
.. note:: Nouveau dépôt git :

    Tous mes scripts et petits programmes sont publiquement disponibles sur
    `bin.git <https://bitbucket.org/lbesson/bin/>`_ (pour plus d'informations sur la licence d'utilisation, cf. `README.html <bin/README.html>`_).


Cette page est là pour décrire **certains** éléments du dossier `<bin/>`_,
qui contient un certain nombre de petits logiciels, scripts ou autres utilitaires.
La plupart d'entre eux ont été écrits par `moi <index.html>`_.

.. todo:: Ajouter des explications pour d'autres scripts importants.

.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter `celle là <index.html>`_.

------------------------------------------------------------------------------

.. warning:: Uniquement sur Ubuntu

   Attention : ces scripts sont écrits pour ma machine, qui utilise (X)Ubuntu 15.10,
   et donc ne sont testés que sur cette plateforme.
   La plupart peuvent fonctionner ailleurs, notamment sous Windows, avec `cygwin <https://www.cygwin.org/>`_, et sous Mac OS X avec Bash.

.. warning:: Aucune responsabilité

   Ces scripts sont distribués "TELS QUELS", en aucun cas
   je ne pourrais être responsable d'un quelconque dysfonctionnement dû à l'un de ces scripts


GNU Bash
--------

* `.bashrc <bin/.bashrc>`_,
  Profil pour GNU Bash, optimisé aux petits oignons au fil des années.

  :État: *Terminé*.


* `.bash_aliases <bin/.bash_aliases>`_,
  Profil complémentaire pour GNU Bash, définition d'alias et de fonctions. Extrêmement riche.

  :État: *Terminé*, mais en amélioration constante…

------------------------------------------------------------------------------

Liste des scripts
-----------------

.. note:: Contribuer ?

    Tous ces scripts fonctionnent normalement correctement sur ma machine ((X)Ubuntu 15.10, GNU Bash v4.3).
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
  deux scripts colorant la sortie des `compilateurs OCaml <https://ocaml.org/learn/tutorials/compiling_ocaml_projects.html#ocamlcandocamlopt>`_ ``ocamlc`` et
  ``ocamlopt`` pour la rendre plus lisible (colore ce qui est important, souligne les erreurs en rouge).
  **Attention** éventuellement, le chemin vers les binaries ``ocamlc`` et ``ocamlopt`` ``/usr/local/bin/ocamlc`` est à adapter (sur votre machine, c'est sûrement ``/usr/bin/ocamlc``).

  :État: *Stable et performant*


* `CP <bin/CP>`_,
  un script colorant la sortie de la commande ``rsync`` (cf. `<https://rsync.samba.org/>`_) pour la rendre plus lisible.
  *rsync* est utilisé avec les bonnes options, pour permettre un transfert de fichier efficace,
  joli (avec une barre de progression dans le terminal), à travers le réseau
  (par ex. ``CP *.pdf super@man.fr:~/web/pdf/`` copie tous les PDFs du dossier courant vers
  le dossier ``~/web/pdf/`` sur l'ordinateur *man.fr* pour l'utilisateur *super*).
  ou localement (e.g., ``CP *.{rst,md,txt} /tmp/``).

  :État: *Stable et performant*


* `pdflatex <bin/pdflatex>`_ et `chktex <bin/chktex>`_
  sont deux scripts colorant la sortie des outils LaTeX en ligne de commandes ``pdflatex`` et ``chktex`` (pour compiler un fichier ``.tex`` en ``.pdf``, ou pour vérifier les erreurs dans un fichier ``.tex``).

  :État: *Stable et performant*


Gallerie photo et lecteur de musique
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `generateglisse.sh <bin/generateglisse.sh>`_ (une démo ? `<generateglisse.sh/>`_ ici),
  est un script pour générer de jolies galeries photo (purement statique, juste du HTML + js + CSS).
  Utilise des fichiers disponibles dans le dossier `<bin/generateglisse/>`_.
  Il faut tout télécharger, et copier ce dossier ``generateglisse/`` dans *$HOME/bin/*
  (ou n'importe quel dossier dans votre ``$PATH``).

  :État: *Super*


* `generatejplayer.sh <bin/generatejplayer.sh>`_ (une démo ? `<generatejplayer.sh/>`_ ici),
  est un script pour générer de superbes playlist pour un dossier contenant des ``mp3``.
  Utilise des fichiers disponibles dans le dossier `<bin/generatejplayer/>`_.
  Il faut tout télécharger, et copier ce dossier dans *$HOME/bin/*
  (ou n'importe quel dossier dans votre ``$PATH``).

  :État: *Sympa* (toujours quelques bugs sur certains caractères spéciaux dans les URLs, supporte juste les mp3)


Utilitaires divers
^^^^^^^^^^^^^^^^^^

* `autotex <bin/autotex>`_,
  un outil *expérimental* (uniquement pour GNU/Linux) pour rapidement écrire du \\(\\LaTeX{}\\) sans en-têtes, **juste en écrivant le contenu**.
  Repose sur `naereen.sty <publis/latex/naereen.sty>`_ pour le style, et `template.fr.tex <publis/latex/template.fr.tex>`_ (ou `template.en.tex <publis/latex/template.en.tex>`_ en anglais) à sauvegarder dans votre *$HOME* (``~``).
  D'autres modèles de documents sont disponibles dans le dossier `<publis/latex/>`_
  (e.g., `template_twocolumns.tex <publis/latex/template_twocolumns.tex>`_ pour un document à deux colonnes, et ``autotex`` utilise celui-là automatiquement si le fichier d'entrée contient "twocolumns" dans son nom).

  :État: *Expérimental* mais fonctionne très bien.


* `gravatar.py <bin/gravatar.py>`_,
  un exemple d'utilisation simple de l'API de `gravatar <https://fr.gravatar.com/>`_.

  :État: *Simpliste*, mais fonctionne :).


* `PDFCompress <bin/PDFCompress>`_,
  un script pour automatiquement signer, compresser, ou encore changer les méta-données d'un ou plusieurs document(s) PDF, en ligne de commande.
  Très utile, notamment avant d'envoyer des PDFs sur un serveur web ou par courriels.
  Selon le type de *PDF*, l'efficacité de la compression varie de 5% *à 400%* !

  J'ai enfin ajouté une vérification de l'efficacité de la compression,
  et il *arrive* que le *PDF* produit soit PLUS lourd qu'avant. Dans ce cas, pas de soucis,
  il suffit de l'échanger avec l'ancienne version (conservée dans ``/tmp/``).

  Il est désormais muni d'un fichier de bash completion, `PDFCompress.bash_completion <bin/PDFCompress.bash_completion>`_ :
  avec mon ``.bashrc``, il suffit de l'inclure dans ``~/.bash_completion.d``.
  Sinon, il suffit de l'inclure dans ``/etc/bash_completion.d/`` (les droits sudo peuvent être requis).

  :État: *Stable et efficace*.


* `series.sh <bin/series.sh>`_,
  un script pour automatiser la lecture de l'épisode suivant de la série en cours de lecture.

  Il est désormais muni d'un fichier de bash completion, `series.sh.bash_completion <bin/series.sh.bash_completion>`_ :
  avec mon ``.bashrc``, il suffit de l'inclure dans ``~/.bash_completion.d``.
  Sinon, il suffit de l'inclure dans ``/etc/bash_completion.d/`` (les droits sudo peuvent être requis).!

  :État: *Superbe*.


* `obscureemail.sh <bin/obscureemail.sh>`_,
  un script pour cacher les adresses emails dans tous les fichiers d'un répertoire.
  Par défaut, ne cherche que les adresses avec un domaine parmi ceux que j'utilises,
  et ne modifie que les fichiers *plain/text*.

  :État: *Assez dangereux* (à manipuler avec précaution).


* `save_disk_daily.sh <bin/save_disk_daily.sh>`_,
  un script pour automatiser la sauvegarde d'une distro Ubuntu entière
  installée via `Wubi <https://doc.ubuntu-fr.org/wubi>`_, sur un disque dur externe.

  :État: *Terminé*.


* `.color.sh <bin/.color.sh>`_,
  un script pour définir de nombreuses couleurs ANSI pour GNU Bash,
  utilisé dans de nombreux autres scripts (mais elles sont optionelles).
  Un exemple : ``echo -e "${red}C'est rouge.${white} Et blanc.${blue}${u} Et bleu et souligné.${reset}"``.
  Automatiquement généré avec `ansicolortags.py <publis/ansicolortags.py/>`_.
  Il est utilisé par de nombreux autres scripts, qui l'importent, en le cherchant dans votre ``$HOME``.

  :État: *Parfait*. Sincèrement, c'est le script GNU Bash dont je suis le plus fier !


* `searchgpg.sh <bin/searchgpg.sh>`_,
  permet de rechercher dans la base de donnée de `clés GPG <gpg.html>`_ du MIT
  (serveur `<http://pgp.mit.edu:11371/pks>`_) pour un nom ou prénom.

  :État: *Terminé*. Plus expérimental (et inutile) qu'autre chose.


* `randomgifts.sh <bin/randomgifts.sh>`_,
  un script pour automatiser l'attribution de cadeaux dans un groupe d'ami.
  Il lit un fichier ``~/bin/addresses.txt`` contenant les adresses des amis
  (sous la forme "Prénom Nom <prenom.nom@domain.com>" ou "adresse@dom.com"),
  et trouve une permutation sans point fixe (*i.e.* un dérangement).
  Chaque personne reçoit ensuite un mail lui précisant sa *cible*
  (utilise ``mutt`` et mes fichiers de conf' présents dans `<publis/muttrc/>`_)
  en lisant le modèle de mail `randomgifts.template.txt <bin/randomgifts.template.txt>`_.

  :État: *Cool* mais quand même assez expérimental. `Ce site fait pareil mais en mieux <https://secretsantagenerator.net/pages/about>`_.


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
  pour afficher une citation aléatoire (graphiquement avec *zenity*),
  lue depuis le fichier `<publis/.quotes.txt>`_ (qui doit être sauvé dans votre *$HOME*).

  :État: *Super cool*, non?

* `MailRandQuote.sh <bin/RandQuote.sh>`_,
  pour envoyer par email une citation aléatoire. Utilise `<bin/mail_ghost.py>`_.

  :État: *Super cool*.


* `my-small-slack-bot.py <bin/my-small-slack-bot.py>`_,
  est un petit programme qui se connecte à une équipe `Slack <https://slack.com/>`_
  et poste des citations aléatoires, lues dans le fichier `~/.quotes.txt <publis/.quotes.txt>`_, à des temps réguliers (toutes les heures, par exemple).
  Le *bot* est peut être ralenti, accéléré ou stoppé par les `réactions des utilisateurs <https://api.slack.com/methods/reactions.get>`_ de la conversation Slack dans laquelle les citations sont postées
  (`:+1:` double la fréquence, `:-1:` la divise par deux, et `:rage:` arrête le script).

  :État: *Fonctionnel*. Et très chiant.


* `changemotd.sh <bin/changemotd.sh>`_,
  un script pour changer le fichier (``~/motd``) "message of the day" (motd) interactivement
  (dans le terminal avec *dialog* ou graphiquement avec *zenity*).

  :État: *Fonctionnel*.


Une expérience: des exercices de maths reçus par email ?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Ces scripts se basent sur le superbe site `<http://mp.cpgedupuydelome.fr>`_, qui héberge des milliers d'exercices de maths (niveau ~= 1ère et 2ème année de Licence).

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


Pour améliorer certains *toplevels*
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `mocaml <bin/mocaml>`_,
  une petite surcouche au toplevel ``OCaml``. Utilise *rlwrap* et *ledit*.
  Fonctionne encore mieux avec cette liste de mots-clés (qui permet d'avoir une tab-complétion) :
  `keyword_mocaml_rlwrap.txt <bin/keyword_mocaml_rlwrap.txt>`_ à sauvegarder dans votre *$HOME*.

  :État: *Fonctionne*. Note : si vous pouvez, installez `utop <https://github.com/diml/utop>`_, c'est une BIEN MEILLEURE alternative au toplevel ``OCaml`` par défaut.


* Dans le même genre, `iocaml <bin/iocaml>`_ et `ocm <bin/ocm>`_
  sont deux expériences pour une meilleure utilisation du terminal ``OCaml``.

  :État: *Plutôt expérimental*.


* `octave <bin/octave>`_ et `octave-gui <bin/octave-gui>`_,
  deux scripts pour mieux utiliser ``GNU Octave``, console ou interface graphique, avec les bonnes options.

  :État: *Terminé*.


* `.pythonrc <bin/.pythonrc>`_,
  fichier d'initialisation ``Python`` lancé au démarrage du toplevel ``Python``.

  :État: *Terminé*, assez pratique (en Python 2, l'interface readline n'était pas lancée par défaut).


* `.ocamlinit <bin/.ocamlinit>`_,
  fichier d'initialisation ``OCaml`` lancé au démarrage du toplevel ``OCaml``.

  :État: *OK*.


Manipuler l'état de l'ordinateur (volume, batterie, ..)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `GoingSleep.sh <bin/GoingSleep.sh>`_,
  un script pour mettre l'ordinateur en veille depuis un accès ssh.

  :État: *Expérimental*, marche sur ma machine (enfin, pas testé ailleurs)…


* `Volume.sh <bin/Volume.sh>`_,
  un script pour manipuler le volume de votre ordinateur en ligne de commande. (e.g., ``Volume.sh ++``, ``Volume.sh --`` pour augmenter ou diminuer le volume).

  :État: *Expérimental*, marche sur ma machine (enfin, pas testé ailleurs)…


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

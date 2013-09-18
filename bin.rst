.. meta:: 
   :description lang=fr: Page décrivant les binaires et les scripts du dossier publis/bin/
   :description lang=en: Description of scripts in folder publis/bin/

###################################################
 Scripts et binaires (du dossier `<publis/bin/>`_)
###################################################
.. include:: .special.rst
.. warning::

   :red:`Cette page est en cours de rédaction...`
   
---------------------------------------------------------------------

À-propos
--------

 Cette page est là pour décrire les divers éléments du dossier
 `<publis/bin/>`_.

 Ce dossier contient un certain nombre de petits logiciels, scripts ou autres.

.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter `celle là <index.html>`_.
   
---------------------------------------------------------------------

Liste des scripts
-----------------

.. note:: Contribuer ?

    Tous ces scripts fonctionnent normalement correctement sur ma machine (Ubuntu 12.04.3 LTS, GNU Bash v4.2).
    Mais il est possible que certains scripts ou certaines fonctionnalités ne soient pas disponibles,
    voir même échouent complètement.
    **Tout retour d'utilisation est le bienvenu**.
    
    Vous pouvez utiliser `ce gestionnaire de bug <https://bitbucket.org/lbesson/home/issues?action=new>`_,
    ou encore m'envoyer un mail.
    
    *Par ailleurs* toute contribution est la bienvenue, et sera intégrée dans les prochaines versions
    du script concerné
    (ces scripts sont distribués sous les termes de la `licence GPLv3 <LICENSE>`_).


.. Liste des scripts

* `PDFCompress <publis/bin/PDFCompress>`_,
  un script pour automatiquement signer, compresser ou encore changer les méta-données d'un ou plusieur document(s) PDF.

  :État: *Toujours en amélioration !*


* `quotes.sh <publis/bin/quotes.sh>`_,
  pour récupérer une citation (aléatoire ou non) depuis `<http://wikiquote.org>`_.

  :État: *Toujours en amélioration!*.

* `makequotes.sh <publis/bin/makequotes.sh>`_,
  pour construire une liste de citation 
  (une fichier texte avec une citation complète par ligne).
  Utilise `quotes.sh`.

  :État: *Toujours en amélioration!*.


* `pdflatex <publis/bin/pdflatex>`_,
  un script colorant la sortie de ``/usr/bin/pdflatex`` pour la rendre plus lisible.

  :État: *Toujours en amélioration !*


* `chktex <publis/bin/chktex>`_,
  un script colorant la sortie de ``chktex`` pour la rendre plus lisible.

  :État: *Toujours en amélioration !*


* `series.sh <publis/bin/series.sh>`_,
  un script pour automatiser la lecture de l'épisode suivant de la série en cours de lecture.

  :État: *Toujours expérimental*.


* `CheckDownload_Pypi.sh <publis/bin/CheckDownload_Pypi.sh>`_,
  un script pour consulter l'historique de téléchargement d'un projet hébergé sur Pypi.

  :État: *Terminé*.


* `pytorst.sh <publis/bin/pytorst.sh>`_,
  un script pour automatiser l'écriture d'un fichier .rst
  pour documenter un script via Sphinx.

  :État: *Terminé*.


* `save_disk_daily.sh <publis/bin/save_disk_daily.sh>`_,
  un script pour automatiser la sauvegarde d'une distro Ubuntu entière
  installée via wubi, sur un disque dur externe.

  :État: *Terminé*.


* `.color.sh <publis/bin/.color.sh>`_,
  un script pour définir de nombreuses couleurs ANSI pour GNU Bash,
  utilisé dans de nombreux autres scripts. Automatiquement généré avec `<publis/ansi-colors/>`_.

  :État: *Terminé*.


* `vrun <publis/bin/vrun>`_,
  un script pour contrôler ``vlc`` en ligne de commande,
  est utilisé dans ``series.sh``, et ``.bash_aliases``.

  :État: *Terminé*.


* `.octave.sh <publis/bin/.octave.sh>`_,
  un script pour mieux utiliser ``GNU Octave``.

  :État: *Terminé*.


* `.pythonrc <publis/bin/.pythonrc>`_,
  script ``Python`` lancé au démarrage du toplevel ``Python``.

  :État: *Terminé*.


* `.ocamlinit <publis/bin/.ocamlinit>`_,
  script ``OCaml`` lancé au démarrage du toplevel ``OCaml``.

  :État: *Terminé*.


* `Battery.sh <publis/bin/Battery.sh>`_,
  un script pour récupérer les informations sur la batterie du laptop.

  :État: *Terminé*.


* `GoingSleep.sh <publis/bin/GoingSleep.sh>`_,
  un script pour mettre l'ordinateur en veille depuis un accès ssh.

  :État: *Terminé*.


* `Volume.sh <publis/bin/Volume.sh>`_,
  un script pour manipuler le volume du laptop en ligne de commande.

  :État: *Terminé*.


------------------------------------------------------------------------------

GNU Bash
--------

* `.bashrc <publis/bin/.bashrc>`_,
  Profil pour GNU Bash.

  :État: *Terminé*, mais toujours en amélioration.


* `.bash_aliases <publis/bin/.bash_aliases>`_,
  Profil complémentaire pour GNU Bash, définition d'alias et de fonctions.

  :État: *Terminé*, mais toujours en amélioration.


.. todo:: Terminer !


.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
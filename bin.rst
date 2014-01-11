.. meta:: 
   :description lang=fr: Page décrivant les binaires et les scripts du dossier bin/
   :description lang=en: Description of scripts in folder bin/

###################################################
 Scripts et binaires (du dossier `<bin/>`_)
###################################################
.. include:: .special.rst

---------------------------------------------------------------------

À-propos
--------
Cette page est là pour décrire les divers éléments du dossier `<bin/>`_.

Ce dossier contient un certain nombre de petits logiciels, scripts ou autres utilitaires.

.. sidebar:: Retourner à l'accueil

   Si cette page ne vous intéresse pas, allez plutôt consulter `celle là <index.html>`_.


------------------------------------------------------------------------------

GNU Bash
--------

* `.bashrc <bin/.bashrc>`_,
  Profil pour GNU Bash.

  :État: *Terminé*, mais toujours en amélioration.


* `.bash_aliases <bin/.bash_aliases>`_,
  Profil complémentaire pour GNU Bash, définition d'alias et de fonctions.

  :État: *Terminé*, mais toujours en amélioration.
   
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


.. Liste des scripts

* `dl.sh <bin/dl.sh>`_,
  un script (modifié à chaque utilisé) télécharger tous les documents présents sur une page web.
  Assez expérimental, car l'analyse du code HTML de la page dépend de chaque cas.

  :État: *Expérimental*.


* `gravatar.py <bin/gravatar.py>`_,
  un exemple d'utilisation simple de l'API de `gravatar <https://fr.gravatar.com/>`_.

  :État: *Simpliste*, mais fonctionne :).


* `CheckDownload_Pypi.sh <bin/CheckDownload_Pypi.sh>`_,
  un tout petit script pour lire les statistiques de téléchargement d'un paquet
  hébergé sur sur `pypi <https://pypi.python.org/>`_.

  :État: *Parfait*.


* `proxy.sh <bin/proxy.sh>`_,
  un script pour lancer un serveur *SOCKS* facilement, avec une machine locale du réseau (interne) du `crans <https://www.crans.org>`_.

  :État: *Parfait*.


* `PDFCompress <bin/PDFCompress>`_,
  un script pour automatiquement signer, compresser ou encore changer les méta-données d'un ou plusieur document(s) PDF, en ligne de commande.
  Très utile, notamment avant d'envoyer des PDFs sur un serveur web.
  Selon le type de PDF, l'efficacité de la compression varie de 5% a 400% !
  
  :red:`Il est désormais muni d'un fichier de bash completion,` `PDFCompress.bash_completion <bin/PDFCompress.bash_completion>`_:red:`, avec mon bashrc, il suffit de l'inclure dans ~/.bash_completion.d. Sinon, il suffit de l'inclure dans /etc/bash_completion.d/ !`

  :État: *Stable et efficace*.


.. sidebar:: Uniquement sur Ubuntu

   Attention: ces scripts sont écrits pour ma machine (Ubuntu 12.04.3),
   et donc ne sont testés que sur cette plateforme.
   La plupart peuvent fonctionner ailleurs, mais je ne pourrais être responsable
   d'un quelconque disfonctionnement dûs à l'un de ces scripts.

   Notamment, ces scripts peuvent aussi fonctionner sous Windows, avec `cygwin <https://www.cygwin.org/>`_.


* `quotes.sh <bin/quotes.sh>`_,
  pour récupérer une citation (aléatoire ou non) depuis `<http://wikiquote.org>`_.

  :État: *Stable*.


* `makequotes.sh <bin/makequotes.sh>`_,
  pour construire une liste de citation 
  (une fichier texte avec une citation complète par ligne).
  Utilise `quotes.sh`.

  :État: *Stable*.


* `pdflatex <bin/pdflatex>`_,
  un script colorant la sortie de ``/usr/bin/pdflatex`` pour la rendre plus lisible.

  :État: *Stable et performant*


* `chktex <bin/chktex>`_,
  un script colorant la sortie de ``chktex`` pour la rendre plus lisible.

  :État: *Stable et performant*


* `series.sh <bin/series.sh>`_,
  un script pour automatiser la lecture de l'épisode suivant de la série en cours de lecture.

  :red:`Il est désormais muni d'un fichier de bash completion,` `series.sh.bash_completion <bin/series.sh.bash_completion>`_:red:`, avec mon bashrc, il suffit de l'inclure dans ~/.bash_completion.d. Sinon, il suffit de l'inclure dans /etc/bash_completion.d/ !`

  :État: *Toujours expérimental*.


* `pytorst.sh <bin/pytorst.sh>`_,
  un script pour automatiser l'écriture d'un fichier .rst pour documenter un script via Sphinx.

  :État: *Terminé*.


* `save_disk_daily.sh <bin/save_disk_daily.sh>`_,
  un script pour automatiser la sauvegarde d'une distro Ubuntu entière
  installée via wubi, sur un disque dur externe.

  :État: *Terminé*.


* `.color.sh <bin/.color.sh>`_,
  un script pour définir de nombreuses couleurs ANSI pour GNU Bash,
  utilisé dans de nombreux autres scripts. Automatiquement généré avec `<publis/ansi-colors/>`_.
  Il est utilisé par de nombreux autres scripts, qui l'importent, en le cherchant
  dans votre ``$HOME``.

  :État: *Parfait* (enfin, presque).


* `vrun <bin/vrun>`_,
  un script pour contrôler ``vlc`` en ligne de commande,
  est utilisé dans ``series.sh``, et ``.bash_aliases``.
  *N'est pas écrit par moi !*

  :red:`Il est muni d'un fichier de bash completion,` `vrun.bash_completion <bin/vrun.bash_completion>`_:red:`, avec mon bashrc, il suffit de l'inclure dans ~/.bash_completion.d. Sinon, il suffit de l'inclure dans /etc/bash_completion.d/ !`

  :État: *Terminé*.


* `.octave.sh <bin/.octave.sh>`_,
  un script pour mieux utiliser ``GNU Octave``.

  :État: *Terminé*.


* `.pythonrc <bin/.pythonrc>`_,
  fichier d'initialisation ``Python`` lancé au démarrage du toplevel ``Python``.

  :État: *Terminé*.


* `.ocamlinit <bin/.ocamlinit>`_,
  fichier d'initialisation ``OCaml`` lancé au démarrage du toplevel ``OCaml``.

  :État: *Terminé*.


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
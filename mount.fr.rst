.. meta::
   :description lang=fr: Comment monter un fichier Wubi .disk comme une image ISO sur Ubuntu ?
   :description lang=en: How to mount an Wubi .disk file as an ISO on Ubuntu?

#######################################################################
 Comment monter un fichier Wubi .disk comme une image ISO sur Ubuntu ?
#######################################################################
.. include:: .special.rst
.. note:: Wubi ?

   Wubi était mon moyen préféré pour installer (et utiliser) `Ubuntu <http://www.ubuntu.com/>`_ (distribution Linux populaire) sur une machine utilisant Windows® initialement.
   Please refer to these pages for more information:
   Veuillez lire ces sites pour plus d'informations :

    - le site officiel (mort, le projet wubi n'est plus supporté désormais),
    - cette page là en français (`<http://doc.ubuntu-fr.org/wubi>`_).

------------------------------------------------------------------------------

Comment monter un disque (fichier ``.disk``) sur Ubuntu ?
---------------------------------------------------------
1. Créer un **nouveau** répertoire qui sera le point de montage du disque : ::

    sudo mkdir /media/mondisque
    # A partir d'Ubuntu 12.04, /media/USER/mondisque avec votre nom d'utilisateur ($USER)


2. Monter le fichier ``.disk`` (qui est comme une image disque ISO) sur le dossier destination (``/media/mydisk`` ou celui de votre choix, créé au point 1.) : ::

    sudo mount -o loop /host/ubuntu/mydisks/root.disk /media/mondisque
    # Il faut peut-etre adapter ce chemin /host/[...]/root.disk vers le chemin réel de votre fichier rook.disk


3. Et lorsque vous avez fini de travailler sur ce disque monté, il ne faut pas oublier de le démonter : ::

    sudo umount /media/mondisque


.. warning:: Droits super-utilisateur ?

   Ces explications exigent d'`avoir les droits "sudo" <http://help.ubuntu.com/community/RootSudo>`_ sur votre machine (super utilisateur).
   Mais le logiciel `pmount <https://help.ubuntu.com/community/Mount/USB#Using_pmount>`_ peut être installé pour palier à ce défaut et permettre aux utilisateurs non-sudo d'être quand même capable de monter un disque.


.. note:: Deux références : `la page officielle de la documantation d'Ubuntu (en anglais) <https://help.ubuntu.com/community/Mount/USB>`_, ou `cette page sur AskUbuntu.com <http://askubuntu.com/a/193632>`_.


Si cela a échoué, vous pouvez tenter de :

1. Toujours tenter de redémarrer, ou se déconnecter/reconnecter, et réessayer (« `have you tried to turn it off and on again ? <https://www.youtube.com/watch?v=t2F1rFmyQmY>`_ »),
2. si ça échoue quand même, tenter d'utiliser un logiciel graphique spécialisé, comme `FuriusIsoMount <https://launchpad.net/furiusisomount>`_,
3. ou lisez `cette question sur AskUbuntu.com (askubuntu.com/q/164227) <http://askubuntu.com/questions/164227/how-to-mount-an-iso-file>`_ pour plus de détails.

------------------------------------------------------------------------------

Comment monter un Disque Dur Externe (NTFS)
-------------------------------------------
Un bon début sera : ::

 sudo mount -t ntfs /dev/sdb1 /media/USER/DOSSIER

L'adresse exacte (``/dev/sdb1``) qu'il faut utiliser peut être autre chose, mais on peut la trouver avec cette commande (prenez le temps d'analyser la sortie) : ::

 sudo fdisk -l

Enfin, on peut vérifier que le disque ait bien été monté avec ces commandes : ::

 mount  # donne des informations sur les disques montés
 df     # d'autres informations


.. note::

   Cette page est surtout là pour que je puisse facilement retrouver ces commandes que j'oublie facilement.


.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

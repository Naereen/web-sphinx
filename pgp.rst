.. meta::
   :description lang=en: PGP public key
   :description lang=fr: Clé publique PGP

##########################################
 Informations sur ma clé publique **PGP**
##########################################
.. include:: .special.rst

Qu'est-ce ?
-----------
 Je ne saurais pas expliquer mieux que l'ami *Wikipedia* : 
 `GPG sur Wikipedia <http://fr.wikipedia.org/wiki/GPG>`_.
 Une autre bonne référence est ce `wikibook sur GPG <http://fr.wikibooks.org/wiki/GPG>`_.

 Allez d'abord vous informer, ou vous rafraîchir les idées avant de lire d'avantage.

Où et quand m'en sers-je ?
--------------------------
Signer pour assurer l'origine du fichier
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
J'essaie de prendre l'habitude de **signer** les fichiers importants, critiques ou sérieux, 
que je propose au téléchargement.

Cela permet pour vous d'être sûr de ce que vous téléchargez : ma clé étant privé 
je suis (normalement) le seul à pouvoir émettre ces signatures.

La plupart des ``urls`` de fichiers que je donne sur mes pages webs
peuvent permettre de récuper la signature du fichier en question en rajoutant
``.asc`` à la fin.

Exemple
~~~~~~~
 Par exemple, mon `.bashrc <publis/bin/.bashrc>`_ a une signature
 `.bashrc.asc <publis/bin/.bashrc.asc>`_.

 Avec l'extension ``sphinx.ext.runblock``, il devrait être possible d'embarquer
 la commande qui permet de créer cette signature (et sa sortie) :

 .. runblock:: console

    $ gpg --detach-sign --armor --quiet -o - /home/lilian/.bashrc

 .. warning:: Seulement pour la version **HTML** !

Comment utiliser ces fichiers **.asc** ?
----------------------------------------
Il est possible de **vérifier** ces signatures, avec ma clé publique.

Il faut *importer* ma clé publique dans votre répertoire de clés 
auxquelles vous faites confiance (trustring).

.. image:: .gpgpublickey_80_15.png
   :scale: 120 %
   :align: right
   :alt: R4096/C1108F8A0
   :target: Lilian_Besson.asc

En ce qui concerne *ma* clé, il faut :

 1. **la télécharger**, comme expliqué au paragraphe suivant;
 2. **l'importer dans votre répertoire de clé** (local sur chaque machine) : ::
      
      gpg --import Lilian_Besson.asc


Ensuite, pour vérifier la signature *fichier.asc* du fichier *fichier*
il suffit de faire : ::
    
    gpg --verify fichier.asc fichier


Exemple
~~~~~~~
 Donc pour l'exemple de mon fichier `.bashrc`_, il suffit de faire : ::
     
     gpg --verify .bashrc.asc .bashrc


 Alors, :blue:`normalement`, si vous avez bien importé la clé, et 
 télécharger les bons fichiers, cela devrait vous donner un message comme ::

     $ gpg --verify ~/.bashrc.asc ~/.bashrc
     gpg: Signature made Fri Jul 05 19:46:31 2013 BST using RSA key ID C108F8A0
     gpg: GOOD signature from "Lilian Besson <lilian.besson[@]crans[.]org>"
 
Ma clé publique
---------------
L'**empreinte publique** de ma clé est **C108F8A0**.

.. image:: .gpgmypublickey_80_15.png
   :scale: 120 %
   :align: right
   :alt: R4096/C1108F8A0
   :target: Lilian_Besson.asc

Une méthode pour récupérer ma clé est de la **rechercher** directement 
sur un des deux serveurs suivants :

 * ``keyserver.ubuntu.com``;
 * ``pgp.mit.edu``.


Donc, une recherche sur un de ces serveurs donne :

 * `0x01aacdb9c108f8a0 sur keyserver.ubuntu.com <http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x01AACDB9C108F8A0>`_;
 * `0x01aacdb9c108f8a0 sur pgp.mit.edu <http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x01AACDB9C108F8A0>`_.

Et aussi
--------
J'utilise aussi de plus en plus **GPG** pour *signer* ou *chiffrer* mes
emails, abandonnant ainsi Hotmail pour la rédaction de mails.
Le paragraphe suivant est consacré à *mutt*, un client de message en console.

------------------------------------------------------------------------------

.. Courriel : pourquoi utiliser mutt ?
.. ===================================

Mutt
----
J'utilise **Mut 1.5.21** pour rédiger et lire mes mails.
Voir la page officielle pour plus de détails : `<http://mutt.org>`_.

Mes fichiers de conf'
^^^^^^^^^^^^^^^^^^^^^
Vous pouvez trouver notamment ici `<publis/mutt/>`_ mes fichiers de configurations
pour mutt (enfin, les fichiers ne contenant aucune info privée) et `<publis/.muttrc>`_
le fichier principal.

Il faut placer `.muttrc` dans votre `$HOME`, et le contenu du dossier `mutt/`
dans `$HOME/.mutt/`.

Il faut ensuite écrire un couple de fichier `account.truc` et 
`signature-truc.muttrc` par compte de messagerie que vous souhaitez utiliser.

Adaptez enfin le `.muttrc` pour charger les bons fichiers (dans mon cas,
`truc=ens` ou `truc=crans`).

Le jeu de couleur fourni vient du projet `solarized
<https://github.com/altercation/mutt-colors-solarized>`_.


Astuces
^^^^^^^

 * Utilisez *mutt* via *tmux* (ou screen ou byobu), afin de pouvoir l'ouvrir facilement !
 
 * Ne stockez pas vos mots de passes dans votre `~/.mutt/account.truc` !
 
 * Vous pouvez définir un alias `alias mutt-truc=mutt -F ~/.mutt/muttrc.truc`
   afin de lancer plus vite *mutt* sur un seul de vos comptes.
 
 * Il est possible d'utiliser ses contacts Google pour créer un fichier
   `$HOME/.goobook_cache`, permettant l'auto-complétion du destinataire
   via la touche TAB dans *mutt*, avec **goobook**.

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
.. meta::
   :description lang=en: PGP public key
   :description lang=fr: Clé publique PGP

##########################################
 Informations sur ma clé publique **PGP**
##########################################

.. warning:: Je n'utilise plus vraiment ma clé PGP, mais ces informations peuvent être encore utiles (peut-être ?).

Qu'est-ce ?
-----------
 Je ne saurais pas expliquer mieux que l'ami *Wikipedia* :
 `GPG sur Wikipedia <http://fr.wikipedia.org/wiki/GPG>`_.
 Une autre bonne référence est ce `wikibook sur GPG <http://fr.wikibooks.org/wiki/GPG>`_.

 Allez d'abord vous informer, ou vous rafraîchir les idées avant de lire d'avantage.


.. .. note:: Je vous invite à tester `encrypt.to/0x01AACDB9C108F8A0 <https://encrypt.to/0x01AACDB9C108F8A0>`_ !

Où et quand m'en sers-je ?
--------------------------
Signer pour assurer l'origine d'un fichier
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
J'essaie de prendre l'habitude de **signer** les fichiers importants (binaires, PDF etc),
que je propose au téléchargement.

Cela permet à n'importe qui d'être sûr de ce que vous téléchargez :
la clé utilisée pour signer les fichier étant privée je suis (normalement) le seul à pouvoir émettre ces signatures.

La plupart des adresses (``URLs``) de fichiers que je donne sur mes pages webs
peuvent permettre de récupérer la signature du fichier en question en rajoutant
``.asc`` à la fin. Exemple: `<cv.pdf>`_ et `<cv.pdf.asc>`_, ou
cette page : `<pgp.fr.html>`_ et `<pgp.fr.html.asc>`_.

Exemple
~~~~~~~
Par exemple, mon fichier de configuration pour Bash, `.bashrc <bin/.bashrc>`_, a une signature `.bashrc.asc <bin/.bashrc.asc>`_.

Avec l'extension ``sphinx.ext.runblock``, il est possible d'embarquer dans cette page web
la commande qui permet de créer cette signature numérique (et sa sortie) :

.. todo:: Fix these runblock blocks? I don't know how to.

.. runblock:: console

   $ gpg --detach-sign --armor --quiet -o - /home/lilian/.bashrc


Comment utiliser ces fichiers **.asc** ?
----------------------------------------
Il est possible de **vérifier** ces signatures, avec ma clé publique.
Et c'est même le but principal de ces fichiers **.asc** !

D'abord, il faut *importer* ma clé publique dans votre répertoire de clés
auxquelles vous faites confiance (trust-ring).

.. image::  .gpgpublickey_80_15.png
   :scale:  120 %
   :align:  right
   :alt:    R4096/C1108F8A0
   :target: Lilian_Besson.asc

En ce qui concerne ma clé publique, dans ce fichier `<Lilian_Besson.asc>`_ :

 #. D'abord, il faut **la télécharger**, comme expliqué au paragraphe suivant;
 #. Ensuite, il faut **vérifier** sa somme de contrôle *MD5* et *SHA256*, afin d'être sûr que vous ayez télécharger le bon fichier !
    Vous pouvez comparer la sortie des commandes ``md5sum`` et ``sha256sum`` avec les valeurs suivantes.

    Depuis mon répertoire de clés :

    .. runblock:: console

       $ GPGKEY=`gpg.sh` gpg --export --armor $GPGKEY | md5sum
       $ GPGKEY=`gpg.sh` gpg --export --armor $GPGKEY | sha256sum


    Depuis le fichier `<Lilian_Besson.asc>`_ :

    .. runblock:: console

       $ # Utilisez ./Lilian_Besson.asc pour verifier le fichier dans le dossier courant
       $ md5sum ~/Lilian_Besson.asc
       $ sha256sum ~/Lilian_Besson.asc


   À quoi cela sert-il ? Cela vous permet de vérifier que vous avez bien téléchargé
   la bonne armor-art (*ie.* la version ASCII) de ma clé publique.


 #. Ensuite il faut **l'importer dans votre répertoire de clé** (local sur chaque machine) : ::

      gpg --import Lilian_Besson.asc


Ensuite, pour vérifier la signature *fichier.asc* du fichier *fichier*
il suffit de faire : ::

    gpg --verify fichier.asc fichier


Exemple (2)
~~~~~~~~~~~
Donc pour l'exemple de mon fichier `.bashrc`_, il suffit de faire : ::

    gpg --verify .bashrc.asc .bashrc


Alors, :blue:`normalement`, si vous avez bien importé la clé, et
téléchargé les bons fichiers, cela devrait vous donner un message comme :

.. runblock:: console

   $ gpg --verify ~/.bashrc.asc ~/.bashrc


Normalement, ça marche !

.. note::

   J'ai écrit un petit script pour *automatiquement* cacher les adresses courriel
   écrite par ces commandes *gpg* dans les pages générées avec Sphinx et l'extension runblock.

   *Pourquoi ?* Pour rien. Ou si en fait. Pour tenter d'éviter de laisser mes adresses
   éléctroniques en clair dans les **nouveaux** documents que je produit.

   *Pourquoi seulement nouveaux ?* Parce que je ne savais pas que des *bots* peuvent
   scanner des millions de pages par jour à la recherche d'adresses électroniques,
   afin d'envoyer du spam.
   Donc, tant que faire ce peux, j'essaie de limiter la présence d'une adresse sous forme
   truc.machin@domain.ext et utilise plutôt un format du genre truc.machin[@] ou [AT].

   Bref, ce script `obscure_email.sh <https://bitbucket.org/lbesson/web-sphinx-scripts/src/master/.obscure_email.sh>`_
   réalise cette substitution automatiquement, pour tous les documents
   textuels générés via Sphinx, avant de les envoyer vers un serveur.
   Comme ça, c'est facile et automatique :)


..     gpg: Signature made Fri Jul 05 19:46:31 2013 BST using RSA key ID C108F8A0
..     gpg: GOOD signature from "Lilian Besson <lilian.besson[@]crans[.]org>"


Ma clé publique
---------------
L'**empreinte publique** de ma clé est **C108F8A0**.

.. image::  .gpgmypublickey_80_15.png
   :scale:  120 %
   :align:  right
   :alt:    R4096/C1108F8A0
   :target: Lilian_Besson.asc

Une méthode plus simple pour récupérer ma clé est de la **rechercher** directement
sur un des deux serveurs suivants :

 * ``keyserver.ubuntu.com``;
 * ``pgp.mit.edu``.


Donc, une recherche sur un de ces serveurs de clés PGP donne :

 * `0x01aacdb9c108f8a0 sur keyserver.ubuntu.com <http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x01AACDB9C108F8A0>`_;
 * `0x01aacdb9c108f8a0 sur pgp.mit.edu <https://pgp.mit.edu/pks/lookup?search=0x01AACDB9C108F8A0&op=index>`_.

Et aussi
--------
J'utilise aussi de plus en plus **GPG** pour *signer* ou *chiffrer* mes
emails, abandonnant ainsi Hotmail pour la rédaction de mails.
Le paragraphe suivant est consacré à *mutt*, un client de messagerie en console.

.. note:: Je n'utilise plus fréquemment *mutt*.

------------------------------------------------------------------------------

Mutt
----
J'utilise **Mut 1.5.21** pour rédiger et lire mes mails.
Voir la page officielle pour plus de détails : `<http://www.mutt.org>`_.

Mes fichiers de conf'
~~~~~~~~~~~~~~~~~~~~~
Vous pouvez trouver notamment ici `<publis/muttrc/>`_ mes fichiers de configurations
pour mutt (enfin, les fichiers ne contenant aucune info privée).

Il faut placer `.muttrc` dans votre `$HOME`, et le contenu du dossier `mutt/`
dans `$HOME/.mutt/`.

Il faut ensuite écrire un couple de fichier `truc.account.muttrc` et
`truc.signature.muttrc` par compte de messagerie que vous souhaitez utiliser.
Il est possible d'utiliser un fichier `truc.password.gpg` pour stocker un
mot de passe pour un serveur SMTP, POP ou IMAP de façon crypté par GPG.

Adaptez enfin le `.muttrc` pour charger les bons fichiers (dans mon cas,
`truc=ens` et `truc=crans`).

Le jeu de couleur fourni vient du projet `solarized
<https://github.com/altercation/mutt-colors-solarized>`_.

Astuces
~~~~~~~
* Utilisez *mutt* via *tmux* (ou screen ou byobu), afin de pouvoir l'ouvrir facilement !

* Ne stockez pas vos mots de passes en clair dans vos fichiers de configurations
  dans  `~/.mutt/` !

* Vous pouvez définir un alias `alias mutt-truc=mutt -F ~/.mutt/truc.muttrc`
  afin de lancer plus vite *mutt* sur un seul de vos comptes.

* Il est possible d'utiliser ses contacts Google pour créer un fichier
  `$HOME/.goobook_cache`, permettant l'auto-complétion du destinataire
  via la touche TAB dans *mutt*, avec **goobook**.


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

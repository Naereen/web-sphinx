.. meta::
   :keywords: Lilian Besson, Python, Ocaml, Sphinx, ÉNS de Cachan, Cr@ns, Bash, PGP, GPG
   :description lang=en: PGP public key
   :description lang=fr: Clé publique PGP

Informations sur ma clé publique PGP
====================================
Qu'est-ce ?
-----------

 Je ne saurais pas expliquer mieux que l'ami *Wikipedia* : 
 `GPG sur Wikipedia <http://fr.wikipedia.org/wiki/GPG>`_.
 Une autre bonne référence est ce `wikibook sur GPG <http://fr.wikibooks.org/wiki/GPG>`_.

 Allez d'abord vous informer, ou vous rafraîcher les idées avant de lire d'avantage.

Où et quand m'en sers-je ?
--------------------------
Signer pour assurer l'origine du fichier
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

J'essaie de prendre l'habitude de **signer** les fichiers importants, critiques ou sérieux, 
que je propose au téléchargement.

Cela permet pour vous d'être sûr de ce que vous téléchargez : ma clé étant privé 
je suis (normalement) le seul à pouvoir émettre ces signatures.

La plupart des ``urls`` que je donne sur mes pages webs 
peuvent être suffixé de ``.asc`` pour voir la signature du fichier.

Exemple
~~~~~~~

 Par exemple, mon `.bashrc <publis/bin/.bashrc>`_ a une signature
 `.bashrc.asc <publis/bin/.bashrc.asc>`_.

 Cette signature ressemble à ça :

 .. runblock:: console

    gpg --detach-sign --armor --quiet -o - /home/lilian/.bashrc


Comment utiliser ces fichiers **.asc** ?
----------------------------------------

Il est possible de **vérifier** ces signatures, avec ma clé publique.

Il faut *importer* ma clé publique dans votre répertoire de clés auxquelles vous faites confiance.

En ce qui concerne *ma* clé, il faut :

 1. **la télécharger**, comme expliqué au paragraphe suivant;
 2. **l'importer dans votre répertoire de clé** (local sur chaque machine) : ::
      
      gpg --import PGP_Lilian_BESSON.asc


Ensuite, il suffit de faire : ::
    
    gpg --verify fichier.asc fichier


Exemple
~~~~~~~

 Donc pour l'exemple de mon fichier `.bashrc`_, il suffit de faire : ::
     
     gpg --verify .bashrc.asc .bashrc


 Alors, normalement, si vous avez bien importé la clé, et télécharger les bons fichiers,
 cela devrait vous donner un message comme : ::
 
     $ gpg --verify .bashrc.asc .bashrc
     gpg: Signature faite le jeu. 14 mars 2013 15:40:59 CET avec la clé RSA ID C108F8A0
     gpg: Bonne signature de « Lilian Besson (for Naereen CORP.) <lbesson@ens-cachan.fr> »


Ma clé publique
---------------

L'**empreinte publique** de ma clé est **C108F8A0**.

.. Voici un lien pour enregistrer ma clé publique 
.. `PGP_Lilian_BESSON.asc <PGP_Lilian_BESSON.asc>`_.

Une méthode pour récupérer ma clé est de la **rechercher** directement sur un des deux serveurs suivants :
 * ``keyserver.ubuntu.com``;
 * ``pgp.mit.edu``.

Donc, une recherche sur un de ces serveurs donne :
 * `0x01aacdb9c108f8a0 sur keyserver.ubuntu.com <http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x01AACDB9C108F8A0>`_;
 * `0x01aacdb9c108f8a0 sur pgp.mit.edu <http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x01AACDB9C108F8A0>`_.


.. include:: .bottom.fr.rst
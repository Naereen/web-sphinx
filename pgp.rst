.. meta::
   :keywords: Lilian Besson, Python, Ocaml, Sphinx, ÉNS de Cachan, Cr@ns, Bash, PGP, GPG, public key, RSA key
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
peuvent permettre de récuper la signature du fichier en question en ratjout
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
auxquelles vous faites confiance.

En ce qui concerne *ma* clé, il faut :

 1. **la télécharger**, comme expliqué au paragraphe suivant;
 2. **l'importer dans votre répertoire de clé** (local sur chaque machine) : ::
      
      gpg --import PGP_Lilian_BESSON.asc


Ensuite, pour vérifier la signature *fichier.asc* du fichier *fichier*
il suffit de faire : ::
    
    gpg --verify fichier.asc fichier


Exemple
~~~~~~~
 Donc pour l'exemple de mon fichier `.bashrc`_, il suffit de faire : ::
     
     gpg --verify .bashrc.asc .bashrc


 Alors, :blue:`normalement`, si vous avez bien importé la clé, et 
 télécharger les bons fichiers, cela devrait vous donner un message comme :
 
 .. runblock:: console

    $ export LANG=en && gpg --verify ~/.bashrc.asc ~/.bashrc


.. note:: À propos de runcode
    
   Cet exemple règle la langue du terminal en anglais (:code:`export LANG=en`),
   car l'extension *non-officielle* ``runcode`` (qui permet d'intégrer le 
   résultat d'une commande ``shell`` dans la page produite par **Sphinx**)
   ne permet pas de gérer des caractères non *ASCII 128*.

Ma clé publique
---------------
L'**empreinte publique** de ma clé est **C108F8A0**.

.. Voici un lien pour enregistrer ma clé publique 
.. `PGP_Lilian_BESSON.asc <PGP_Lilian_BESSON.asc>`_.

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

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
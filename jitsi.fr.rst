.. meta::
   :description lang=fr: A propos de Jitsi Meet
   :description lang=en: About Jitsi Meet

########################
 A propos de Jitsi Meet
########################

.. note:: Petit point d'énervement contre le vocabulaire : parce que j'en ai marre que tout le monde utilise le verbe Skyper et le mot Skype pour dire **appel visio**.

Cette petite page web est rédigée pour faire la publicité de l'outil `Jitsi Meet <https://jitsi.org>`_.


Qu'est-ce qui ne va pas avec Skype ?
------------------------------------

Skype a été racheté par Microsoft il y a des années.
Skype est un outil propriétaire, pas libre, pas pair-à-pair, pas chiffré.
En gros, c'est la pire solution possible pour passer des appels visio !

Skype demande d'avoir un compte, un mail, ça dépend de Microsoft, le trafic audio comme vidéo est espionné en temps réel (c'est grâce à ça qu'ils arrivent à proposer de la traduction et des sous-titres en temps réel), tout le trafic passe par les USA, etc.

.. warning:: En gros, tu fais un appel via Skype, bah en trois clics et 24 secondes, Trump peut te voir, s'il veut...


Et avec Zoom / et avec CET AUTRE OUTIL TOUT AUSSI NUL ?
-------------------------------------------------------

Tant que le trafic audio ou vidéo passe par des serveurs centralisés, et n'est pas chiffré de bout en bout, les autres solutions ont les mêmes faiblesses.

C'est donc le cas pour Zoom, pour Messenger/Facebook et Instagram.

WhatsApp, Télégram et Signal semblent plus sécurisés puisque les communications sont chiffrées de bout en bout, mais chacune de ces solutions demandent d'avoir un compte, identifié soit avec une adresse email ou un numéro de téléphone.


------------------------------------------------------------------------------


Et quelle solution je propose ?
-------------------------------

En 2020, utiliser une des solutions sus-nommées me semble une grave erreur...
Alors qu'il y a tellement d'outils sécurisés, simples et sans installation sans rien à faire : sans compte, juste un lien, tu cliques pouf ça marche, dans un navigateur web assez récent (i.e., Firefox ou Google Chrome ou Chromium).

Je recommande d'utiliser **Jitsi Meet** !

- C'est **libre** : on a accès `au code source <https://GitHub.com/jitsi/jitsi-meet>`_, on peut le lire et le modifier si nécessaire,
- C'est **gratuit**,
- C'est **chiffré**,
- Ce n'est (a priori) **pas espionné** et **pas facilement espionnable**,
- Ça **fonctionne sans compte** et **sans installation** (on peut installer l'application sur téléphone mais les versions web marchent sans installation).


Il y a `meet.jit.si <https://meet.jit.si/>`_ qui est le serveur officiel. L'URL est simple à retenir, et il faut se mettre d'accord avec l'autre personne de l'appel sur un nom de salle.

.. note:: Imaginons que Alice et Bob veulent se parler le dimanche 3 mai...

    Un bon nom de salle serait `meet.jit.si/Alice-et-Bob-03-mai-2020 <https://meet.jit.si/Alice-et-Bob-03-mai-2020/>`_.


Un serveur Jitsi Meet ne peut pas être surchargé puisque Jitsi Meet marche en **pair-à-pair** : dès que l'appel est lancé, le trafic réseau (audio comme vidéo comme texte) passe plus par le serveur central mais juste entre nous !

------------------------------------------------------------------------------

Interlude humoristique
~~~~~~~~~~~~~~~~~~~~~~

.. image:: https://www.commitstrip.com/wp-content/uploads/2020/04/Strip-Covide19-7-650-final.jpg
   :scale: 25%
   :align: center
   :alt: Lien vers la planche de BD https://www.commitstrip.com/fr/2020/04/28/boiling-point/
   :target: https://www.commitstrip.com/fr/2020/04/28/boiling-point/

Je vous recommande aussi de regarder cette vidéo, réalisée par `Raphaël Truffet <https://www.youtube.com/channel/UCKdT0orbp8_eX5qh-NygBhg>`_, un ami et collègue, actuellement doctorant en informatique à l'IRISA (en 2021).

.. youtube:: 8RUdGAypXxs


Une autre instance Jitsi Meet ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: .jitsi_crans.png
   :scale: 50%
   :align: center
   :alt: Home page of the Jitsi Meet server on https://jitsi.crans.org/
   :target: https://jitsi.crans.org/


Tu peux aussi utiliser l'instance sur le serveur de l'association CRANS de l'ENS Cachan / Paris Saclay (dont j'ai été membre actif en 2012/13...) : `Jitsi.crans.org <https://jitsi.crans.org/>`_ qui est hébergé en France, à Cachan, et géré par des bénévoles volontaires qui n'espionnent pas leurs utilisatrices 😊 !

L'application sur Android™
~~~~~~~~~~~~~~~~~~~~~~~~~~

Elle marche très bien, et permet d'utiliser des salles de réunion, qu'elles soient hébergées sur `meet.jit.si <https://meet.jit.si/>`_ ou ailleurs sur n'importe quel serveur.

.. note:: Regarder `cette page <apk.fr.html>`_ qui parle d'autres applications pour Android™.

Installer Jitsi Meet sur son propre ordinateur
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

C'est très simple, en suivant `ce guide d'utilisation <https://github.com/jitsi/jitsi-meet/blob/master/doc/quick-install.md>`_ sur le `GitHub de jitsi-meet <https://github.com/jitsi/jitsi-meet/>`_.
Je l'ai sur l'un de mes ordinateurs portables, et cela peut être utile si vous êtes connecté sur un réseau local et que vous voulez parler avec quelqu'un d'un autre bureau, une pièce de votre maison, etc.

------------------------------------------------------------------------------

Et un autre outil ? BigBluebutton est génial aussi !
----------------------------------------------------

`BigBlueButton <https://bigbluebutton.org/>`_ est un autre logiciel gratuit et open source comme Jitsi Rencontre, que vous pouvez installer gratuitement sur votre ordinateur portable ou votre serveur Web, ou utilisez si votre école, votre université ou votre laboratoire a mis en place une instance à votre domicile.
Cependant, contrairement à Jitsi Meet, il n'y a pas d'instances publiques que vous pouvez utiliser sans aucun compte ni gratuitement.

Pour mes `activités d'enseignements <enseignements.fr.html>`_ depuis le début de la crise sanitaire du `coronavirus 2020 <coronavirus.fr.html>`_, j'ai utilisé beaucoup de serveurs BigBluebutton, sur `<https://bbb.irisa.fr/>`_ par le laboratoire de recherche IRISA, ou `<https://plmwebconf.math.cnrs.fr/>`_ par le CNRS.
Pour les séminaires de recherche, j'ai organisé deux fois par mois pour nos étudiants en informatique à l'ENS Rennes (cf `cette page <https://perso.crans.org/besson/seminaire_dptinfo_2020/>`_ et `cette autre <http://www.dit.ens-rennes.fr/seminaires/>`_), nous utilisons un serveur BigBluebutton hébergé gracieusement par le CNRS.

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

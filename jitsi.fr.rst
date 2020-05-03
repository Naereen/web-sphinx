.. meta::
   :description lang=fr: A propos de Jitsi Meet
   :description lang=en: About Jitsi Meet

########################
 A propos de Jitsi Meet
########################

.. note:: Petit point d'énervement contre le vocabulaire :

    Parce que j'en ai marre que tout le monde utilise le verbe Skyper et le mot Skype pour dire appel visio.

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


.. (c) Lilian Besson, 2011-2020, https://bitbucket.org/lbesson/web-sphinx/

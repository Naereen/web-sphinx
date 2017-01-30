.. meta::
   :description lang=fr: Page d'informations pour contacter Lilian Besson
   :description lang=en: Informations on how to stay in touch with Lilian Besson

########################
 Comment me contacter ?
########################
.. sidebar:: À propos

   Cette page liste divers moyen d'interagir avec `moi <index.html>`_ (*Lilian Besson*).

Vidéo-conférence instantanée ?
------------------------------
1. *D'abord*, prévenez-moi par courriel, on se met d'accord sur un jour et une heure pour s'appeler (*asynchrone*),
2. *Puis* on utilise le tout récent service *FramaTalk* : `framatalk.org/Naereen <https://framatalk.org/Naereen>`_ !
3. *Pourquoi ?* Ça ne demande pas d'installation, pas de création de compte, pas de logiciel à part un navigateur web (assez récent). Et c'est parfaitement sécurisé, comme la conversation et les messages ne sont pas espionnés ni enregistrés (le trafic durant la communication se fait en pair-à-pair).


Moyens traditionnels
--------------------
Courrier postal
^^^^^^^^^^^^^^^
Vous pouvez m'écrire ou bien m'envoyer des cartes postales (j'adore ça),
aux adresses suivantes (listées par ordre de préférence) :

.. raw:: html

   <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.2/dist/leaflet.css" />
   <script src="https://unpkg.com/leaflet@1.0.2/dist/leaflet.js"></script>
   <style type="text/css">
       #office, #home {
           margin:  auto;
           z-index: 0;
           height:  480px;
           width:   900px;
       }
   </style>


1. Mon bureau, à *CentraleSupélec*, campus Rennes, en France
   (voir `sur un plan OpenStreetMap <https://www.openstreetmap.org/?mlat=48.12572&mlon=-1.62307#map=17/48.12572/-1.62307>`_) ::

       Mr Lilian Besson,
       Bureau 304 - Équipe SCEE,
       CentraleSupélec - Campus de Rennes,
       Avenue de la Boulaie - CS 47601,
       35576 - Cesson-Sévigné,
       France

.. raw:: html

   <div id="office"></div>
   <script type="text/javascript">
       var office = L.map("office").setView([48.12576, -1.62312], 18);

       L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {
           attribution: "&copy; <a href='http://osm.org/copyright'>OpenStreetMap</a> contributors"
       }).addTo(office);

       L.marker([48.12576, -1.62312]).addTo(office)
           .bindPopup("Mr Lilian Besson,<br>Bureau 304 - Équipe SCEE,<br>CentraleSupélec - Campus de Rennes,<br>Avenue de la Boulaie - CS 47601,<br>35576 - Cesson-Sévigné,<br>France.")
           .openPopup();
   </script>


2. chez moi, en France
   (voir `sur un plan OpenStreetMap <https://www.openstreetmap.org/?mlat=48.11162&mlon=-1.65730#map=18/48.11162/-1.65730>`_) ::

       Mr Lilian Besson,
       23, boulevard Jeanne d'Arc,
       35000 - Rennes,
       France

.. raw:: html

   <div id="home"></div>
   <script type="text/javascript">
       var home = L.map("home").setView([48.11165, -1.65732], 17);

       L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {
           attribution: "&copy; <a href='http://osm.org/copyright'>OpenStreetMap</a> contributors"
       }).addTo(home);

       L.marker([48.11165, -1.65732]).addTo(home)
           .bindPopup("Mr Lilian Besson,<br>23, boulevard Jeanne d'Arc,<br>35000 - Rennes,<br>France.")
           .openPopup();
   </script>


.. include:: .javascript.fr.rst


Courrier électronique
^^^^^^^^^^^^^^^^^^^^^
Si c'est pour du spam : jarvis.spam@laposte.net ! Et allez vous faire voir, si vous êtes un spammeur !
(Bon... les spammeurs sont des robots, mais ça fait du bien de les engueuler !)

.. image:: .courriel.png
   :scale: 120 %
   :align: right
   :alt:   Mon adresse courriel, dans une image PNG...
   :target: mailto:Lilian.Besson à ens-cachan point fr


Si c'est sérieux, vous pouvez utiliser cette adresse :

  `Lilian point Besson à ens-cachan point fr <mailto:Lilian point Besson à ens-cachan point fr>`_

.. note::

   Vous pouvez utiliser `ce super site web <http://send-email.org/>`_ (``send-email.org``)
   si vous n'avez pas accès à un client de messagerie à l'instant.


Téléphone
^^^^^^^^^
.. image:: .telephone.png
   :scale: 130 %
   :align: right
   :alt:   Mon numéro de téléphone, dans un image PNG...
   :target: callto:100101011101001100111101100001_2


Pour (essayer de) m'avoir directement, par exemple si c'est important, veuillez utiliser mon numéro français.

.. .. warning:: Je suis actuellement à l'étranger, vivant à Hyderabad (en Inde).

..    Les appels vers l'étranger coûtent cher ! Même recevoir des appels
..    coûte cher (pour moi), svp évitez si possible.


Pour m'envoyer des messages textuels (SMS), idem.

------------------------------------------------------------------------------

Autres méthodes
---------------
Les moyens suivants sont plus technologiques, et nécessitent un ordinateur ou un *téléphone intelligent* (smartphone) relativement récent.

*« Demandez moi n'importe quoi ! »*
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Ces deux pages peuvent être utilisées pour me poser une question **publiquement**
(n'importe qui pourra voir votre question et ma réponse) :
sur GitHub : `github.com/Naereen/ama <https://github.com/Naereen/ama>`_ (en anglais),
`github.com/Naereen/ama.fr <https://github.com/Naereen/ama.fr>`_ (en français), ceux là requièrent un compte GitHub;
et sur Bitbucket `bitbucket.org/lbesson/ama <https://bitbucket.org/lbesson/ama>`_ (en anglais),
`bitbucket.org/lbesson/ama.fr <https://bitbucket.org/lbesson/ama.fr>`_ (en français), pour ceux là, pas besoin d'un compte Bitbucket.

IRC (salles de discussion)
^^^^^^^^^^^^^^^^^^^^^^^^^^
De temps en temps, je suis sur le réseau ``irc.crans.org``, connecté souvent aux salles *#crans* et *#general*, sous le pseudo `Naereen <https://gravatar.com/naereen>`_ (j'utilise généralement `irssi <http://irssi.org/about>`_ avec `ces fichiers de configuration <publis/irssi/>`_, en console).

Si vous vous sentez un peu courageux, vous pouvez aussi tenter de "laisser un message" pour moi là bas, *mais ce n'est pas vraiment conçu pour*.

.. VoIP (Téléphonie par l'Internet)
.. ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. Vous pouvez suivre la `procédure suivante <https://wiki.crans.org/VieCrans/UtiliserVoIP#A.2BAMo-tre_appel.2BAOk_depuis_l.27ext.2BAOk-rieur>`_ pour m'appeler : téléphoner au ``+33.9.72.11.32.70`` puis composer le "un quatre zero quatre deux" (``14042``) quand le robot le demande.

.. Vous pouvez aussi essayer de m'appeler au compte `Linphone <http://www.linphone.org/>`_ suivant : naereen à linphone point org (" à " = "@", " point " = ".").

.. .. note:: Linphone ?

..    `Linphone`_ est un outil *libre* et *gratuit* de téléphonie par IP, qui fonctionne parfaitement.
..    Il propose un client pour bureau (Windows, Ubuntu etc) et pour téléphone (Android etc).
..    Pour Android, je préfère `CSip Simple <http://apk-dl.com/store/apps/details?id=com.csipsimple>`_.
..    `Linphone`_ permet aussi de créer un compte utilisateur, gratuitement, afin d'appeler sans limite n'importe quel autre utilisateur de VoIP avec le `protocole SIP <http://fr.wikipedia.org/wiki/Session_Initiation_Protocol>`_.


Formulaires web
^^^^^^^^^^^^^^^
* Vous pouvez utiliser ce formulaire pour m'envoyer un message, actuellement proposé par l'`annuaire électronique <http://www.math.ens-cachan.fr/annuaire/besson-lilian-128754.kjsp>`_ de l'`ENS Cachan <http://www.ens-cachan.fr/>`_ : http://perso.crans.org/besson/contact,
* ou bien signaler un bug via le formulaire suivant : https://bitbucket.org/lbesson/home/issues/new. Mais **ce n'est pas conçu pour me contacter directement !**

Services HTML5
^^^^^^^^^^^^^^
.. sidebar:: Plus d'explications

   Vous pouvez utiliser `cette page là <http://iswebrtcready.appear.in/>`_ pour vérifier si votre navigateur actuel supporte la technologie WebRTC.

   En revanche, comme ils sont *synchrones*, **il faut se mettre d'accord pour un rendez-vous d'abord** !


Les services suivants, basés sur les fonctionnalités de l'`HTML 5 <https://fr.wikipedia.org/wiki/HTML5>`_, permettent de facilement se parler, s'écrire ou s'échanger des fichiers.

* `gruveo.com/#Naereen <https://www.gruveo.com/#Naereen>`_ pour des appels (vocaux ou vidéos), semble fiable et sécurisé,
* `framatalk.org/Naereen <https://framatalk.org/Naereen>`_ pour des visio-conférences (jusqu'à 8 personnes en même temps), hébergé par l'association `FramaSoft <https://framasoft.org/>`_,
* `appear.in/Naereen <https://appear.in/Naereen>`_ pour des visio-conférences (jusqu'à 8 personnes en même temps),
* `RTC Copy <https://rtccopy.com/>`_ pour s'envoyer des fichiers (toute taille, tout type).


.. seealso::

   Cette page `<vieprivee.html>`_
      Quelques autres outils pouvant être utilisés pour (essayer de) préserver sa vie privée en ligne.


.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

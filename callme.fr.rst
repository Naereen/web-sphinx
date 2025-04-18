.. meta::
   :description lang=fr: Page d'informations pour contacter Lilian Besson
   :description lang=en: Information on how to stay in touch with Lilian Besson

########################
 Comment me contacter ?
########################

.. .. warning:: Informations sur la pandémie de coronavirus, et comment elle m'affecte moi, et mes enseignements : veuillez consulter la page : `<coronavirus.fr.html>`_, je la mets à jour deux fois par jour (à partir du 13/03/2020).


.. sidebar:: À propos

   Cette page liste divers moyen d'interagir avec `moi <index.html>`_ (*Lilian Besson*).

Vidéo-conférence instantanée ?
------------------------------
1. *D'abord*, prévenez-moi (par SMS ou courriel), et on se met d'accord sur un jour et une heure pour s'appeler (*début asynchrone*, *suite synchrone*),
2. *Puis* on utilise le service *FramaTalk* : `FramaTalk.org/Naereen <https://framatalk.org/Naereen>`_ (ou un lien Jitsi hébergé par `le CRANS <https://www.CRANS.org/>`_), e.g., `jitsi.crans.org/Lilian-05-2021 <https://jitsi.crans.org/Lilian-05-2021>`_. Je parle de Jitsi sur `cette page à propos de Jitsi <jitsi.fr.html>`_ !
3. *Pourquoi ?* Ça ne demande pas d'installation, pas de création de compte, pas de logiciel à part un navigateur web (assez récent, donc Firefox ou Chromium). Et c'est parfaitement sécurisé, comme la conversation et les messages ne sont pas espionnés ni enregistrés (le trafic durant la communication se fait en pair-à-pair).
4. D'autres services web que j'aime bien : `<https://services.renater.fr/rendez-vous/index>`_ (de RENATER, pour les enseignants-chercheurs en France), `<https://visio.inria.fr/?lang=fr-FR>`_ (de INRIA), `<https://meet.jit.si/>`_, `<https://www.gruveo.com/>`_, `<https://whereby.com/>`_ (c'était appear.in avant).


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


Bureau
~~~~~~
Je n'ai plus de bureau, mais je peux recevoir du courrier au `Lycée Kléber <https://lycee-kleber.com.fr/>`_, à Strasbourg, en France
(voir `sur un plan OpenStreetMap <https://www.openstreetmap.org/#map=18/48.59414/7.75711&layers=N>`_) ::

      Dr Lilian Besson
      Classe de MP2I
      Lycée Kléber
      Place de Bordeaux
      67000 Strasbourg
      France

.. raw:: html

   <div id="office"></div>
   <script type="text/javascript">
      var office = L.map("office").setView([48.59414, 7.75711], 18);

      L.tileLayer("https://{s}.tile.osm.org/{z}/{x}/{y}.png", {
         attribution: "&copy; <a href='https://osm.org/copyright'>OpenStreetMap</a> contributors"
      }).addTo(office);

      L.marker([48.59414, 7.75711]).addTo(office)
         .bindPopup("Dr Lilian Besson<br> Classe de MP2I<br> Lycée Kléber<br> 67000 Strasbourg<br> France")
         .openPopup();
   </script>


Maison
~~~~~~
Chez moi, en France. Avant, j'aurai donné mon adresse personnelle, mais je souhaite ne plus le faire.


Courrier électronique
^^^^^^^^^^^^^^^^^^^^^
Si c'est pour du spam : jarvis.spam@laposte.net ! Et allez vous faire voir, si vous êtes un spammeur !
(Bon… les spammeurs sont des robots, mais ça fait du bien de les engueuler !)

.. image:: .courriel.png
   :scale: 50 %
   :align: right
   :alt:   Mon adresse courriel, dans une image PNG…
   :target: mailto:Lilian.Besson à crans point org


Si c'est sérieux, vous pouvez utiliser une de ces adresses :

- `Lilian point Besson à ac-strasbourg point fr <mailto:Lilian point Besson à ac-strasbourg point fr>`_
- `Lilian point Besson à crans point org <mailto:Lilian point Besson à crans point org>`_

.. note::

   Vous pouvez utiliser `ce super site web <http://send-email.org/>`_ (``send-email.org``)
   si vous n'avez pas accès à un client de messagerie à l'instant.


Téléphone
^^^^^^^^^
.. image:: .telephone.png
   :scale: 50 %
   :align: right
   :alt:   Mon numéro de téléphone, dans un image PNG…
   :target: callto:100101011101001100111101100001_2


Pour (essayer de) m'avoir directement, par exemple si c'est important, veuillez utiliser mon numéro français.

.. .. warning:: Je suis actuellement à l'étranger, vivant à XXX (en XXX).

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


Services HTML5
^^^^^^^^^^^^^^
.. sidebar:: Plus d'explications

   Vous pouvez utiliser `cette page là <http://iswebrtcready.whereby.com/>`_ pour vérifier si votre navigateur actuel supporte la technologie WebRTC.

   En revanche, comme ils sont *synchrones*, **il faut se mettre d'accord pour un rendez-vous d'abord** !


Les services suivants, basés sur les fonctionnalités de l'`HTML 5 <https://fr.wikipedia.org/wiki/HTML5>`_, permettent de facilement se parler, s'écrire ou s'échanger des fichiers.

* `gruveo.com/#Naereen <https://www.gruveo.com/#Naereen>`_ pour des appels (vocaux ou vidéos), semble fiable et sécurisé,
* `framatalk.org/Naereen <https://framatalk.org/Naereen>`_ pour des visio-conférences (jusqu'à 8 personnes en même temps), hébergé par l'association `FramaSoft <https://framasoft.org/>`_,
* `whereby.com/Naereen <https://whereby.com/Naereen>`_ pour des visio-conférences (jusqu'à 8 personnes en même temps),
* `RTC Copy <https://rtccopy.com/>`_ pour s'envoyer des fichiers (toute taille, tout type).


.. seealso::

   Cette page `<vieprivee.html>`_
      Quelques autres outils pouvant être utilisés pour (essayer de) préserver sa vie privée en ligne.


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

.. meta::
   :description lang=en: Informations on how to stay in touch with Lilian Besson
   :description lang=fr: Page d'informations pour contacter Lilian Besson

################################
 How to stay in touch with me ?
################################
.. sidebar:: About

   This page's purpose is to give a complete list of different way to stay in touch with `me <index.html>`_ (*Lilian Besson*).

Instantaneous video-conference ?
--------------------------------
1. *First*, reach me by e-mail, so we agree on a date and time to call (*asynchronous*),
2. *Then* we use the awesome and brand new website *FramaTalk*: `FramaTalk.org/Naereen <https://framatalk.org/Naereen>`_ or Jitsi on `<jitsi/>`_ (see `this page on Jitsi <jitsi.en.html>`_) !
3. *Why ?* It does not require any installation or plugin, no need to create any account, no need for a specific software - just your regular web browser (a fairly recent one is needed). And it's awesomely secured, as the conversation and messages are not spied nor registered (the communication uses peer-to-peer trafic with WebRTC, that's safe).
4. Other web services that I like : `<https://services.renater.fr/rendez-vous/index>`_ (by RENATER, for French researchers and teachers), `<https://visio.inria.fr/?lang=fr-FR>`_ (by INRIA), `<https://meet.jit.si/>`_, `<https://www.gruveo.com/>`_, `<https://whereby.com/>`_ (it was appear.in before).


Traditional ways
----------------
Postal addresses
^^^^^^^^^^^^^^^^
You can write a letter or some postal cards to me (I love them),
at the following addresses (listed by decreasing preference):

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


My Office
~~~~~~~~~
My office, at `École Normale Supérieure de Rennes <http://www.dit.ens-rennes.fr/>`_, in Bruz, France
(you can `see it on this OpenStreetMap map <https://www.OpenStreetMap.org/?mlat=48.04615&mlon=-1.74530#map=19/48.04615/-1.74530&layers=N>`_) ::

       Mr Lilian Besson
       Bureau R112 - Département Informatique et Télécommunications
       École Normale Supérieure de Rennes
       Campus de Ker Lann
       Avenue Robert Schuman
       35170 Bruz - France

.. raw:: html

   <div id="office"></div>
   <script type="text/javascript">
       var office = L.map("office").setView([48.04615, -1.74530], 18);

       L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {
           attribution: "&copy; <a href='http://osm.org/copyright'>OpenStreetMap</a> contributors"
       }).addTo(office);

       L.marker([48.04615, -1.74530]).addTo(office)
           .bindPopup("Mr Lilian Besson <br> Bureau R112 - Département Informatique et Télécommunications <br> École Normale Supérieure de Rennes <br> Campus de Ker Lann <br> Avenue Robert Schuman <br> 35170 Bruz - France.")
           .openPopup();
   </script>


My Home
~~~~~~~
To my own place (in France)
(you can `see it on this OpenStreetMap map <https://www.openstreetmap.org/?mlat=48.11162&mlon=-1.65730#map=18/48.11162/-1.65730>`_) ::

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


.. include:: .javascript.en.rst


Emails
^^^^^^
If you are a *spammer*, go on: jarvis.spam@laposte.net! Oh, and, go kîll yoùrself also if you are a *spammer*!!
(Well… spammers are usually bots, ie spambots, but it feels good to yell at them anyway!)

.. image:: .courriel.png
   :scale: 40 %
   :align: right
   :alt:   My email address in a PNG picture…
   :target: mailto:Lilian.Besson at ens-rennes dot fr


If you are *not* a *spammer*, go on, you can use one of these email addresses:

- `Lilian dot Besson at ens-rennes dot fr <mailto:Lilian dot Besson at ens-rennes dot fr>`_
- `Lilian dot Besson at inria dot fr <mailto:Lilian dot Besson at inria dot fr>`_
- `Lilian dot Besson at crans dot org <mailto:Lilian dot Besson at crans dot org>`_

.. note::

   You can use `this awesome website <http://send-email.org/>`_ (``send-email.org``)
   if you don't have access to an email client right now.


Regular phone
^^^^^^^^^^^^^
.. image:: .telephone.png
   :scale: 50 %
   :align: right
   :alt:   My cellphone number, in a PNG picture…
   :target: callto:100101011101001100111101100001_2


To speak directly, e.g. if it is important, you can (try to) call me, you could use my French cellphone number:

.. .. warning:: I am currently out of the French territory, living in XXX (in XXX).

..   Calling someone in a foreign country can be expensive!
..   In fact, even receiving them is costly, so please avoid it (if possible).


You could also try to send me text messages (SMS), with the same number (obviously).

.. (*again, but be aware of the price!*).

------------------------------------------------------------------------------

Other methods
-------------
The next solutions are way more *geeky*, and you will need a relatively recent computer to try them (or a smartphone).

*« Ask me anything! »*
^^^^^^^^^^^^^^^^^^^^^^
These two pages can be used to ask my a question **publically** (everyone can see what you ask and my answer):
on GitHub : `github.com/Naereen/ama <https://github.com/Naereen/ama>`_ (in English),
`github.com/Naereen/ama.fr <https://github.com/Naereen/ama.fr>`_ (in French), both requires a GitHub account;
and on Bitbucket : `bitbucket.org/lbesson/ama <https://bitbucket.org/lbesson/ama>`_ (in English),
`bitbucket.org/lbesson/ama.fr <https://bitbucket.org/lbesson/ama.fr>`_ (in French), no need for an account.


Forms on some web pages
^^^^^^^^^^^^^^^^^^^^^^^
* You can use this very form to send me a message, currently this page is powered by the `electronic people's directory <http://www.dit.ens-rennes.fr/lilian-besson--292020.kjsp>`_ for `ENS de Rennes <http://www.ens-rennes.fr/>`_ : `https://perso.crans.org/besson/contact <https://perso.crans.org/besson/contact>`_

HTML5 Services
^^^^^^^^^^^^^^
.. sidebar:: Some explanation ?

   You can go to `this testing page <http://iswebrtcready.appear.in/>`_, to check if your browser is compatible with the "WebRTC" technology, which is part of the last HTML version (HTML 5).

   However, these services are *synchronous*, **so first we have to agree for a date and an hour**!


These web services, strongly based on the great functions offered by the `HTML 5 <https://en.wikipedia.org/wiki/HTML5>`_, offer the possibility to talk, to write or even to share files, dynamically.

* `gruveo.com/#Naereen <https://www.gruveo.com/#Naereen>`_ for vocal or videos calls. It seems to be secured and reliable,
* `framatalk.org/Naereen <https://framatalk.org/Naereen>`_ for video-chat (up to 8 persons at a time), hosted by the `FramaSoft <https://framasoft.org/>`_ non-profit association,
* `whereby.com/Naereen <https://whereby.com/Naereen>`_ for video-chat (up to 8 persons at a time),
* `RTC Copy <https://rtccopy.com/>`_ to securely send files over the Internet (no matter the type, no matter the size).


.. seealso::

   This page `<vieprivee.html>`_ (in French)
      Some others tools are presented there, and they surely can be used to (try to) preserve your on-line private life.


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

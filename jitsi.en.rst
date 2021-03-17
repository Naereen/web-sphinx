.. meta::
   :description lang=fr: A propos de Jitsi Meet
   :description lang=en: About Jitsi Meet

##################
 About Jitsi Meet
##################

.. note:: Small point of *anger* against the vocabulary: because I'm sick of everyone using the verb "to Skype" (or even worst, in French "skyper") and the word Skype to say **video call**.

This little web page is written to advertise the `Jitsi Meet <https://jitsi.org>`_ tool.


What's wrong with Skype?
------------------------

Skype was bought out by Microsoft years ago.
Skype is a proprietary tool, not free, not peer-to-peer, not encrypted.
Basically, it's the worst possible solution for making video calls!

Skype requires an account, an email, it depends on Microsoft, audio and video traffic is spied on in real time (that's how they manage to offer translation and subtitles in real time), all the traffic goes through the USA, etc.

.. warning:: Basically, when you make a call via Skype, well in three clicks and 24 seconds, Trump or Biden or any "big USA chief" can see you, if he/she wants to...

If you have 5 minutes and want a good laugh while joking about Skype, please watch this fun video by CollegeHumour (2021-03-17):

.. youtube:: ZI0w_pwZY3E


And with Zoom / and with OTHER TOOL THAT SUCKS TOO ?
----------------------------------------------------

As long as the audio or video traffic goes through centralized servers, and is not encrypted end-to-end, other solutions have the same weaknesses.

This is the case for Zoom, Messenger/Facebook and Instagram.

WhatsApp, Telegram and Signal seem more secure since communications are encrypted from end to end, but each of these solutions require an account, identified either with an email address or a phone number.


------------------------------------------------------------------------------


And what solution do I propose?
-------------------------------

In the year 2020, using one of the above-mentioned solutions seems to me to be a serious mistake...
When there are so many secure, simple and installation-free tools with nothing to do: no account, just a link, you click and it works, in a fairly recent web browser (i.e., Firefox or Google Chrome or Chromium).

I recommend using **Jitsi Meet** !

- It's **free** : you have access to the source code, you can read it and modify it if necessary,
- It's free,
- It's **digitized**,
- It is (a priori) **not spied on** and **not easily spied on**,
- It **works without an account** and **without installation** (you can install the application on your phone but the web versions work without installation).


There is `meet.jit.si <https://meet.jit.si/>`_ which is the official server. The URL is simple to remember, and you have to agree with the other person in the call on a room name.

.. note:: Let's say Alice and Bob want to talk on Sunday, May 3rd...

    A good room name would be `meet.jit.si/Alice-and-Bob-03-May-2020 <https://meet.jit.si/Alice-et-Bob-03-mai-2020/>`_.


A Jitsi Meet server can't be overloaded since Jitsi Meet works in **peer-to-peer** : as soon as the call is launched, the network traffic (audio as well as video as text) goes through the central server but just between us !

------------------------------------------------------------------------------

Funny break
~~~~~~~~~~~

.. image:: https://www.commitstrip.com/wp-content/uploads/2020/04/Strip-Covide19-7-650-finalenglish.jpg
   :scale: 25%
   :align: center
   :alt: Link to the comic strip https://www.commitstrip.com/en/2020/04/28/boiling-point/
   :target: https://www.commitstrip.com/en/2020/04/28/boiling-point/

I also recommend that you watch this video, made by `Raphaël Truffet <https://www.youtube.com/channel/UCKdT0orbp8_eX5qh-NygBhg>`_, a friend and colleague, currently doctoral student in IRISA (EN 2021).

.. youtube:: 8RUdGAypXxs


Another Jitsi Meet instance?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: .jitsi_crans.png
   :scale: 50%
   :align: center
   :alt: Home page of the Jitsi Meet server on https://jitsi.crans.org/
   :target: https://jitsi.crans.org/

You can also use the instance on the server of the association CRANS of the ENS Cachan / Paris Saclay (of which I was an active member in 2012/13...): `Jitsi.crans.org <https://jitsi.crans.org/>`_ which is hosted in France, in Cachan, and managed by volunteers who will never spy on their users 😊!

The application on Android™
~~~~~~~~~~~~~~~~~~~~~~~~~~~

It works very well, and allows the use of meeting rooms, whether they are hosted on `meet.jit.si <https://meet.jit.si/>`_ or anywhere else on any server.

.. note:: See `this page about other applications for Android™.

Installing Jitsi Meet on your own computer
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

It's very simple, just follow `this user guide <https://github.com/jitsi/jitsi-meet/blob/master/doc/quick-install.md>`_ on the `jitsi-meet page on GitHub <https://github.com/jitsi/jitsi-meet/>`_.
I have it on one of my laptop, and it can be useful if you are connected on a local network and want to talk with someone from another office, a room in your home etc.

------------------------------------------------------------------------------

And another tool? BigBlueButton is awesome too!
-----------------------------------------------

`BigBlueButton <https://bigbluebutton.org/>`_ is another free and open-source software like Jitsi Meet, which you can install for free ony your laptop or web-server, or use if your school, University or laboratory has set-up an instance on their home.
However, unlike Jitsi Meet, there are no public instances that you can use without any account or for free.

For my `teaching activities <teaching.en.html>`_ since the `coronavirus <coronavirus.en.html>`_ crisis, I have used a lot of BigBlueButton servers, on `<https://bbb.irisa.fr/>`_ by IRISA lab, or `<https://plmwebconf.math.cnrs.fr/>`_ by CNRS.
For the research seminars I organize twice a month for our students of Computer Science at ENS Rennes (see `this page <https://perso.crans.org/besson/seminaire_dptinfo_2020/>`_ and `this one <http://www.dit.ens-rennes.fr/seminaires/>`_), we are using a BigBlueButton server gracefully hosted by CNRS.

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

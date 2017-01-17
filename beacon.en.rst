.. meta::
   :description lang=en: How to use Google Analytics with a beacon image
   :description lang=fr: Comment utiliser Google Analytics avec une petite image
   :keywords: Google, Google Analytics, beacon, image, picture, without javascript, Google Analytics without javascript, Google Analytics with a picture, Google Analytics with an image, beacon analytics, beacon Google Analytics

#################################################
 How to use Google Analytics with a beacon image
#################################################

.. note:: This short page is focusing on Google Analytics

   For more informations, it might be useful to consult first one of these pages:
    * `en.wikipedia.org/wiki/Google_Analytics <https://en.wikipedia.org/wiki/Google_Analytics>`_,
    * `www.google.com/analytics <http://www.google.com/analytics/>`_.

   This page will explain to you how to use Google Analytics when you do not have support for Javascript, and how to use Google Analytics with an image (a picture) loaded from a web-page.


« Vanilla » Google Analytics code
---------------------------------
The default code to add in every page is the following piece of JavaScript (at least, it was the case in January 2015):

.. code-block:: javascript

   (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
   (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
   m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
   })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
   ga('create', 'UA-38514290-15', 'ga-beacon.appspot.com');
   ga('send', 'pageview');

------------------------------------------------------------------------------

.. sidebar:: A popular page?

   Apparently, this `very page <http://perso.crans.org/besson/beacon.en.html>`_ became quite popular *recently* (fall 2014),
   receiving more visitors than any of my other webpages.
   `Any feedback about it is therefore most surely welcome! <contact/en/>`_.

   For example, `that page <#>`_ comes as the **second** Google result for "google analytics beacon" in English, and **First** in French (cf. `this search result <https://startpage.com/do/search?q=google+analytics+beacon&l=english>`_ in English or `this one <https://startpage.com/do/search?q=google+analytics+beacon?l=francais>`_ in French)
   and also `forth DuckDuckGo French result <https://duckduckgo.com/?q=google+analytics+beacon>`_.


A smaller piece of code
-----------------------
And also easier to maintain!
You just have to create a small ``ga.js`` script containing
the previous piece of code, and add it somewhere on your website.

For instance: `ga.js <http://perso.crans.org/besson/_static/ga.js>`_.

Then you have to load it in every webpage with one-line of ``HTML`` code
at the end of the file (in the ``<bottom>`` paragraph or at the end of ``<body>``):

.. code-block:: html

   <script type="text/javascript" async src="http://perso.crans.org/besson/_static/ga.js"></script>


(Moreover, the ``async`` tag will improve the speed of the page, by
loading asynchronously the ``ga.js`` script. Cool!)

------------------------------------------------------------------------------

A pretty nice idea
------------------
That `blog post`_ explains how to use **one** image,
or even a single pixel to emulate a communication with Google Analytics.

This tutorial explain how to add Google Analytics spying capacity
to any piece of HTML, as any webpage, but even for an email !
The main example he gives is for a `Github <https://github.com/>`_ project homepage, that have
to be written in ``Markdown``, without any ``<script>`` tag.

This image is downloaded from ``ga-beacon.appspot.com/UA-XXXXXX-YY``,
and by downloading it, with the right Google Analytics key ``UA-XXXXXX-YY``,
the browser or the email reader triggers a visit on the associated Google Analytics profile.
As a result, you can monitor *in real time* an email, it justs have to be written in plain ``HTML``.


Embedding this picture is quite *simple*, and can be done with the following piece of ``HTML`` code:

.. code-block:: html

   <img style="visibility:hidden;display:none;" src="https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html?pixel" />


Or, for a *Sphinx*-generated webpage, with the following piece of ``rST`` code:

.. code-block:: rst

   .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html?pixel


.. warning:: Sphinx tip:

   Embedding an image with a *non-local* URL triggers a *warning message* when
   Sphinx builds the website, but that nothing you should be worried about!

------------------------------------------------------------------------------

Eventually, it is also possible to use a small *badge* rather than an almost invisible pixel,
simply by removing the ``?pixel`` at the end of the URL addresse.

  For instance:

  .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html/with-a-badge
    :scale: 300%
    :align: center
    :alt: A small « analytics | GA » badge.
    :target: http://perso.crans.org/besson/beacon.html


  which is included with the following ``rST`` line of code:

  .. code-block:: rst

     .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html/with-a-badge


  .. note:: A customized URL for a customized path

     Here you just saw an example of a customized URL, as the previous image
     was loaded from ``appspot`` with the *"virtual"* file ``beacon.en.html/with-a-badge``.
     You can use any URL you want, the only limitation is your imagination !
     (hum, wait, that sounded like a Lego advertisement... or maybe just for me)

-------------------------------------------------------------

How to write an HTML email ?
----------------------------
Outlook, Thunderbird or even GMail have an easy-to-use functionality
to write and send ``HTML`` email, and therefore it is a piece of cake
to add *one* line at the end of an email, to add a tracking *dead-pixel*.

It might also be a good idea to use a clever naming protocol,
allowing you to track and get statistics for every single emails you send:

.. code-block:: html

   <img style="visibility:hidden;display:none;" src="https://ga-beacon.appspot.com/UA-38514290-15/mail/27-02-2014/3?pixel" />


That example shows the naming rule I'm using for my electronic mailing:
every day, each email is named **DD-MM-YYYY/NUM**, where DD-MM-YYYY is the date
(like 27-11-2014 for the 27th of November, 2014)
and where **NUM** is the number of the email you sent that very day.

For instance, the content of the forth email sent on the 03rd of December 2014
will have the code **03-12-2014/4**, and therefore will contains that piece of ``HTML`` code at its end:

.. code-block:: html

   Kind regards,<br>
   -- <br>
   Lilian<br>
   <img style="visibility:hidden;display:none;" src="https://ga-beacon.appspot.com/UA-38514290-15/mail/03-12-2014/4?pixel" />


One dead-pixel ?
----------------
Just to show how it works, a *one-pixel picture* is included right there,
before the next paragraph. You shouldn't be able to see it, but with the proper
debugging tool or be seeing the source of the page,
you will have confirmation that it is here !

.. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html/one-dead-pixel?pixel

References
----------
Two articles (from the same `genius guy (Ilya Grigorik from Google) <https://github.com/igrigorik>`_ ):

 #. `blog post <http://www.sitepoint.com/using-beacon-image-github-website-email-analytics/>`_ contains a detailed explanation on how to use beacon image to track visits on a github page or an email,
 #. `github page <https://github.com/igrigorik/ga-beacon>`_ of his project.

------------------------------------------------------------------------------

A bonus?
--------
It is even possible to make this easier and more discrete for the user side by using one `Apache <http://httpd.apache.org/>`_ rule
(or one `NGinx <nginx.org>`_ rule) to be able to locally ask for the beacon image, and letting your server fetch it, thanks to an invisible proxy.

The goal is to be able to use `an address like this one <beacon/one%20random%20page/yes%20,%20everything%20can%20work%20well/by%20Næreen>`_
"``beacon/one random page``", which will ask the server (for my website, the machine behind ``perso.crans.org``)
to go fetch the beacon picture "``https://ga-beacon.appspot.com/UA-38514290-1/one random page``".

For Apache, that rule can simply be written as:

.. code-block:: bash

   RewriteEngine On    # Turn on the rewriting engine
   RewriteRule ^([^0-9].*)$ http://ga-beacon.appspot.com/UA-38514290-1/$1 [L,P]    # Without key: "UA-38514290-1" is the default one


We can improve a little bit the process, by adding the redirection from `<beacon/>`_ to `<beacon.html>`_
(which then point to `<beacon.fr.html>`_ or `<beacon.en.html>`_ based on your favorite language):

.. code-block:: bash

   RewriteRule ^()$ /besson/beacon.html [L]    # Point to this explanation page.


And if you want to be able to use the same proxy on ``yourWebSite.ext/beacon/....``, but with other Google Analytics sub-keys.
(one key for one account, and as many sub-keys as you want for your account, each sub-key corresponds to different datas, for instance one sub-key for every of your web-sites),
you can add the rule to redirect an URL of the form "``beacon/14/any random paged but seen as being on another website/here lbesson.bitbucket.io``"
to the picture "``https://ga-beacon.appspot.com/UA-38514290-14/any random paged but seen as being on another website/here lbesson.bitbucket.io``",
which will be counted (in Google Analytics dashboard) as a page with URL "``any random paged but seen as being on another website/here lbesson.bitbucket.io``"
on your site with the (example) key being "``UA-38514290-14``" (in my case, the site `<http://lbesson.bitbucket.io/>`_)

.. code-block:: bash

   RewriteRule ^([0-9]*)/(.*)$ http://ga-beacon.appspot.com/UA-38514290-$1/$2 [L,P]    # With a specified sub-key


.. note:: With your key?

   Of course, if you want to use this small trick, do not forget to change ``UA-38514290`` to **your key**.


How secured is it?
^^^^^^^^^^^^^^^^^^
It seems to be OK.
A first "attack" could be by buffer overload, but obviously there is no problem regarding this:

* `this very very long URL <http://perso.crans.org/besson/beacon/Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0cb>`_ is just too long by one caracter: your browser will refuse to ask for it (this will trigger one 400 error (*"Bad request"*) and probably say *"Your client has issued a malformed or illegal request."*)

* `that one is also very long, but with one less caracter <http://perso.crans.org/besson/beacon/Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0%20%C3%A7a%20c%27est%20une%20bonne%20solution%20:%20est-ce%20bien%20s%C3%A9curis%C3%A9%20?Voil%C3%A0c>`_, and so the browser agree to send it.



.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

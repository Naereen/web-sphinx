.. meta::
   :description lang=en: Google Analytics with a beacon image
   :description lang=fr: Google Analytics avec une petite image

#################################################
 How to use Google Analytics with a beacon image
#################################################
.. include:: .special.rst
.. note:: This short page is focusing on Google Analytics

   For more informations, it might be useful to consult first one of these pages:
    * `en.wikipedia.org/wiki/Google_Analytics <https://en.wikipedia.org/wiki/Google_Analytics>`_,
    * `www.google.com/analytics <http://www.google.com/analytics/>`_.

«Vanilla» Google Analytics code
-------------------------------
The default code to add in every page is the following piece of JavaScript:

.. code-block:: javascript

   (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
   (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
   m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
   })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
   ga('create', 'UA-38514290-15', 'ga-beacon.appspot.com');
   ga('send', 'pageview');


A smaller piece of code
-----------------------
And also easier to maintain !
You just have to create a small ``ga.js`` script contenaning 
the previous piece of code, and add it somewhere on your website.

For instance: `ga.js <http://besson.qc.to/_static/ga.js>`_.

Then you have to load it in every webpage with one-line of ``HTML`` code
at the end of the file (in the ``<bottom>`` paragraph or at the end of ``<body>``) :

.. code-block:: html

   <script type="text/javascript" async src="http://besson.qc.to/_static/ga.js"></script>


Moreover, the ``async`` tag will improve the speed of the page, by
loading asynchronously the ``ga.js`` script. Awesome!

------------------------------------------------------------------------------

A pretty nice idea
------------------
That `blog post`_ explain how to use **one** image, 
or even a single pixel to emulate a communication with Google Analytics.

This tutorial explain how to add Google Analytics spying capacity
to any piece of HTML, as any webpage, but even for an email !
The main example he gives is for a github project homepage, that have
to be written in ``Markdown``, without any ``<script>`` tag.

This image is downloaded from ``ga-beacon.appspot.com/UA-XXXXXX-YY``,
and by downloading it, with the right Google Analytics key ``UA-XXXXXX-YY``,
the browser or the email reader triggers a visit on the associated Google Analytics profile. 
As a result, you can monitor *in real time* an email, it justs have to be written in plain ``HTML``.


Embed this picture is quite simple, and can be done with the following piece of ``HTML`` code :

.. code-block:: html

   <img style="visibility:hidden;display:none;" src="https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html?pixel" />


Or, for a *Sphinx*-generated webpage, with the following piece of ``rST`` code :

.. code-block:: rst

   .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html?pixel


.. warning:: Sphinx tip :

   Embedding an image with a *non-local* URL triggers a warning when
   Sphinx builds the website, but that nothing you should be worried about !

------------------------------------------------------------------------------

Eventually, it is also possible to use a small *badge*
rather than an almost invisible pixel,
simply by removing the ``?pixel`` at the end of the URL addresse.

  For instance : 
 
  .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html/with-a-badge
    :scale: 300%
    :align: center
    :alt: A small « analytics | GA » badge.
    :target: http://besson.qc.to/beacon.html
  
 
  which is included with the following ``rST`` line of code :
 
  .. code-block:: rst
 
     .. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html/with-a-badge


  .. note:: A customized URL for a customized path

     Here you just saw an example of a customized URL, as the previous image
     was loaded from ``appspot`` with the *"virtual"* file ``beacon.en.html/with-a-badge``.
     You can use any URL you want, the only limitation is your imagination !
     (hum, wait, that sounded like a Lego advertisement... or maybe just for me)


How to write an HTML email ?
----------------------------
Outlook, Thunderbird or even GMail have an easy-to-use functionality
to write and send ``HTML`` email, and therefore it is a piece of cake
to add *one* line at the end of an email, to add a tracking *dead-pixel*.

It might also be a good idea to use a clever naming protocol,
allowing you to track and get statistics for every single emails you send :

.. code-block:: html

   <img style="visibility:hidden;display:none;" src="https://ga-beacon.appspot.com/UA-38514290-15/mail/27-02-2014/3?pixel" />


That example shows the naming rule I'm using for my electronic mailing :
every day, each email is named **DD-MM-YYYY/NUM**, where DD-MM-YYYY is the date
(like 27-02-2014 for the 27th of February, 2014)
and where **NUM** is the number of the email you sent that very day.

For instance, the content of the forth email sent on the 11th of Mars 2014 
will have the code **11-03-2014/4**, and therefore will contains that piece of ``HTML`` code at its end :

.. code-block:: html

   Cheers;<br>
   -- <br>
   Lilian<br>
   <img style="visibility:hidden;display:none;" src="https://ga-beacon.appspot.com/UA-38514290-15/mail/11-03-2014/4?pixel" />


One dead-pixel ?
----------------
Just to show how it works, a *one-pixel picture* is included right there,
before the next paragraph. You shouldn't be able to see it, but with the proper
debugging tool or be seeing the source of the page, 
you will have confirmation that it is here !

.. image:: https://ga-beacon.appspot.com/UA-38514290-15/beacon.en.html/one-dead-pixel?pixel

References
----------
Two articles (from the same genius guy) :

 #. `blog post <http://www.sitepoint.com/using-beacon-image-github-website-email-analytics/>`_ contains a detailed explanation on how to use beacon image to track visits on a github page or an email,
 #. `github page <https://github.com/igrigorik/ga-beacon>`_ of his project.


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
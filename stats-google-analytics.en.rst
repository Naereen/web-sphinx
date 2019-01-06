.. meta::
   :description lang=en: Sum-up of my use of Google Analytics for 3 years
   :description lang=fr: Résumé de trois ans d'utilisation de Google Analytics

#################################################
 Sum-up of my use of Google Analytics for 3 years
#################################################

.. note:: This short page is focusing on *Google Analytics*

   For more informations, it might be useful to consult first one of these pages:

    * this other article `<ga.en.html>`_ on this website,
    * and for instance `en.wikipedia.org/wiki/Google_Analytics <https://en.wikipedia.org/wiki/Google_Analytics>`_,
    * `www.google.com/analytics <https://www.google.com/analytics/>`_.

Quick historical overview
-------------------------
 - `This website <index.html>`_ ``http://perso.crans.org/besson`` is hosted by the `personal pages at CRANS <http://www.crans.org/PagesPerso>`_ (student association in charge of the Internet connexion on the `campus of the ENS Cachan superior school <http://www.ens-cachan.fr/version-anglaise/campus/>`_).
 - It has been `available on-line <http://isup.me/perso.crans.org/besson/>`_ with `this form <https://developers.google.com/speed/pagespeed/insights/?url=http%3A%2F%2Fperso.crans.org%2Fbesson>`_, since March 2013 (and it's an open source project, its source code is available `on this git repository <https://bitbucket.org/lbesson/web-sphinx/>`_).
 - This website is powered by `Sphinx <http://www.sphinx-doc.org/>`_, to generate a static website (i.e., some HTML and CSS files, a few JavaScript files), from files written in plain text, in the `rST <demo.html>`_ markup language.
 - From the beginning, even with the ethical questions this raised, I decided to use `Google Analytics <https://www.google.com/analytics/>`_. I wanted to move to `Piwik <https://piwik.org/>`_ from a while, but `the hosting server for this website <https://www.crans.org/VieCrans/TousLesServices#Zamok>`_ does not support it…


.. raw:: html

   And so, from the last <abbr class="timeago" title="2013-03-22T03:00:43Z">22 Mars 2013</abbr>
   this website hosts pages and got visitors on a daily basis, and I have a partial access to a few statistics on these visits (cf. <a href="https://bitbucket.org/lbesson/web-sphinx/commits/b3a0205a3f2fe288f91e9bceb9f1ac6f6335bce3">the first commit</a>).

------------------------------------------------------------------------------

*Overview of this article:*

- The next part of this article gives a small overview of these data, by analyzing quickly the main statistics.
- Please note that this article has only been written in order to be *informative* and to respect my constant will *to be fully transparent*. This article was *not* meant to be pretentious, or to give any confidential information (Google Analytics only keeps anonymous data, in fact (in a weird way…)).

Main statistics
---------------
These stats have been simply summed from the data last accumulated during the last 3 years (March 2013 -- March 2016).

- **27000 visits**, it is about an average of *25 visits every day* (but it includes visits from web-bots and crawlers so it might be over estimated…),
- **51000 pages served**; and, weirdly, `this page <sublime-text.fr.html>`_ in French (`see its translation <sublime-text.en.html>`_) brings about 10% of visits, and `this other one <beacon.en.html>`_ in English get about 5% of the visits,
- and a ratio of *83%* of *new users* vs *known users*.


**Geographical origins:**

- **157 different countries** (almost all!) in 3 years. But it's pretty consistent, I get in average about 100 different countries (e.g., 110 in the first 6 weeks in 2016). Most of these countries sent less than 10 visitors, and 33 sent a user only once! Just 22 countries emitted more than 100 visits, and without surprise, the first 5 countries share about 75% of the visits (by decreasing order, France 45%, USA 20%, Russia 7%, India 4% and UK 3%),
- **5 different continents** (`I catched them all! <http://bulbapedia.bulbagarden.net/wiki/Gotta_catch_%27em_all>`_), with 60% from Europe, 23% from America, 10% from Asia and only 1% from Oceania,
- **21 different sub-continents** (`I catched them all! <http://bulbapedia.bulbagarden.net/wiki/Gotta_catch_%27em_all>`_), about the same repartition (West Europe got 45%, Northern Europe about 15%),
- **3152 different cities** (… that's a lot, but there is so many of them!). The ten most important ones are "unkwown/unspecified" (*25%* !), Paris (7%), Cachan (France, 6%), Samara (in Russia, there is surely a web-bot or a crawler there, 3%), London (3%), Hyderabad (India, 2%), Toulouse (France, 1%), Bangalore (0.9%), New York (0.8%) and Rennes (France, 0.8%). Just on these top ten cities, we clearly see the effect on the number of visits of my `current and past presence <cv.fr.pdf>`_ in a country or city (as I lived in Paris, Cachan, London and Hyderabad between 2013 and 2016), and from huge "high-tech" cities (New York and Bangalore), and "important spots" of the research in maths and computer science in France (Rennes and Toulouse).


**Languages :** French has 40%, English has 25%, "unknown/not specified" has 25% (!), and Russian, Spanish and others got 10%.

Other statistics
----------------
**Browsers** repartition (which follows the `the global evolution of the repartition of web-browsers <https://en.wikipedia.org/wiki/Usage_share_of_web_browsers>`_):

- 52% of the users visiting this website are browsing with Google Chrome (but every one knows that `Firefox <firefox-extensions.en.html>`_ is the best browser!),
- Mozilla Firefox has 28% (sadly…),
- Apple Safari has 10%,
- and the rest few percents are shared by Internet Explorer (3%), Opera (2%), and other smaller browsers.


**Devices repartition :** laptops (90%) vs mobiles (8%) vs tablets (1%).


**Mean duration of the visits :** about 2 minutes (that's about half the time to read the longest of my articles, and about the time to read any of the medium-size article hosted here, so it's a good sign: visitors are really reading these pages!).


**Referrer :** Google (45%), *"direct access"* (42%, this includes the various anonymous search engine, mainly the wonderful `DuckDuckGo <https://duckduckgo.com/>`_), Facebook (5%), `<http://lbesson.bitbucket.io>`_ (3%), `<http://crans.org>`_ (2%) and `<http://www.mahindraecolecentrale.edu.in/>`_ (1%).

------------------------------------------------------------------------------

More images
-----------
Have a look to `this folder for a pretty image gallery <_images/stats-google-analytics/>`_,
showing more examples and figures, in pictures.

Other website?
--------------
`This website <index.html>`_ is the one that gets most of the visitors (on web pages written by `me <cv.en.pdf>`_), but I have some pages with Google Analystics enabled on other websites:

- Some projects hosted on this same domain (``perso.crans.org/besson``) have a different Google Analytics key, so they are showed on a separate GA database (*"view"*), but they all have very few visitors.
- My Bitbucket `<https://bitbucket.org/lbesson>`_ and `<http://lbesson.bitbucket.io/>`_ got about 5000 visits in 3 years (and `this small game is responsible for 20% <http://lbesson.bitbucket.io/2048-agreg/>`_ !),
- My `documents for the "Computer Science" course <infoMP/>`_ that I taught in a MP prep' school (in Sceaux (France) in 2015-16, got about 400 visits, for 1200 pages seen and about 290 different users, since August 2015 (so they have some recurrent visitors, that's a good sign showing that my students are using these documents!),
- A tiny Python module I wrote in 2013, `ANSIColors <https://pypi.org/project/ANSIColors-balises>`_, `its code <https://bitbucket.org/lbesson/ansi-colors/>`_ and `its doc (dead link) <https://pythonhosted.org/ANSIColors-balises/>`_, receives about 1100 visits since I put them online (February 2013) -- it's ridiculously small but who cares! I updated it to support Python 3 in June 2016: `ansicolortags <https://pypi.org/project/ansicolortags>`_: `its code (ansicolortags) <https://bitbucket.org/lbesson/ansicolortags.py/>`_ and `its doc (ansicolortags) <http://ansicolortags.readthedocs.io/>`_!
- `<https://bitbucket.org/lbesson>`_ and `<http://lbesson.bitbucket.io/>`_ (on Bitbucket),
- My GitHub `<https://github.com/naereen>`_ and `<http://naereen.github.io/>`_ got about 400 visits (since September 2015).

.. (c) Lilian Besson, 2011-2019, https://bitbucket.org/lbesson/web-sphinx/

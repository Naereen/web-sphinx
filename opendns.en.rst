.. meta::
   :description lang=en: Short description for alternative DNS services
   :description lang=fr: Petit résumé pour services alternatifs de DNS

#################################
 Use an alternative DNS services
#################################
.. include:: .special.rst

This mini tutorial starts by using OpenDNS, and then the DNS service of Google.

.. note:: More details about OpenDNS?

   `That Wikipédia page <https://en.wikipedia.org/wiki/OpenDNS>`_ gives more information about that free (but questionable) service.

   `This (French) blog post is quite aggressive against OpenDNS <http://www.bortzmeyer.org/opendns-non-merci.html>`_, with quite valid arguments.
   As an extremely short sum-up, you should **not** use OpenDNS.


To start using OpenDNS, you just need to specify these addresses as *additional DNS servers*.

:For IPv4: ``208.67.222.222``, ``208.67.220.220``, ``208.67.222.220``, ``208.67.220.222``
:For IPv6: ``2620:0:ccc::2``, ``2620:0:ccd::2``

More details on the procedure needed to start using an alternative DNS provider `can be found here (thanks to developers.Google.com) <https://developers.google.com/speed/public-dns/docs/using#setup>`_.
An other tutorial explaining precisely `here (for Windows 7) <http://mintywhite.com/windows-7/change-dns-server-windows-7/>`_.

Check your settings
-------------------
To **check that you use indeed the OpenDNS servers**, you just need to `go on that web-page www.OpenDNS.com/welcome <http://www.opendns.com/welcome/>`_.

Or you can **test this from the command line** (with `the dig command <https://en.wikipedia.org/wiki/Dig_(command)>`_):

.. runblock:: console

   $ echo -e "# Main answer (208.67.222.222 OpenDNS server) :"
   $ dig @208.67.222.222 perso.crans.org


.. runblock:: console

   $ echo -e "# Other answer (208.67.220.220 OpenDNS server) :"
   $ dig @208.67.220.220 perso.crans.org | grep -v "^\(;.*\|$\)"


.. runblock:: console

   $ echo -e "# Other answer (208.67.222.220 OpenDNS server) :"
   $ dig @208.67.222.220 perso.crans.org | grep -v "^\(;.*\|$\)"


.. runblock:: console

   $ echo -e "# Other answer (208.67.220.222 OpenDNS server) :"
   $ dig @208.67.220.222 perso.crans.org | grep -v "^\(;.*\|$\)"


You can also check how the OpenDNS servers **protect you against fishing** and *"bad"* Internet web-sites, by going to the (safe) web-page `www.InternetBadGuys.com <http://www.internetbadguys.com/>`_ (the DNS request to OpenDNS required to know where to look up the `www.InternetBadGuys.com` page will be interpreted as *dangerous*, and so you will be redirected to `that "nicer" page <http://phish.opendns.com/main?url=www.internetbadguys.com>`_).

.. seealso::

   monip.org
      In order to `know your IP address (v4 or v6) <http://monip.org/>`_.

   WhoIsMyISP.org
      In order to `know your Internet Service Provider <http://www.whoismyisp.org/>`_ (**ISP**).

   DNSLeaktest.com
      In order to `check if your ISP <http://www.dnsleaktest.com/>`_  is not doing any `DNS leaks <https://dnsleaktest.com/what-is-a-dns-leak.html>`_ behind your back...


----

Why this rather empty page on my web-site?
------------------------------------------
 Mainly because I wanted to have one *easy-to-find* web-page where to **quickly find the IPv4** (and IPv6) **addresses of the OpenDNS** (and Google DNS) **servers**, in order to be able to *quickly* copy/paste them when I **configure a new Wi-Fi** (or Ethernet) **connexion** on my personal laptop.


Now it's done!

----

An other alternative DNS provider?
----------------------------------
Google also offers a free, `non-restrictive <https://developers.google.com/speed/public-dns/faq#nxdomains>`_, and *open-to-anyone* DNS service:

:For IPv4: ``8.8.8.8``, ``8.8.4.4``
:For IPv6: ``2001:4860:4860::8888``, ``2001:4860:4860::8844``


Or you can **test this from the command line** (with `the dig command <https://en.wikipedia.org/wiki/Dig_(command)>`_):

.. runblock:: console

   $ echo -e "# Main answer (8.8.8.8 Google server) :"
   $ dig @8.8.8.8 perso.crans.org


.. runblock:: console

   $ echo -e "# Other answer (8.8.4.4 Google server) :"
   $ dig @8.8.4.4 perso.crans.org | grep -v "^\(;.*\|$\)"


.. runblock:: console

   $ echo -e "# And with IPv6 (2001:4860:4860::8888 Google server) :"
   $ dig @2001:4860:4860::8888 perso.crans.org AAAA +cd


.. note:: More information?

   As always, more details can be found `here on Wikipédia <https://en.wikipedia.org/wiki/Google_Public_DNS>`_,
   or on the `official web-page on developers.Google.com <https://developers.google.com/speed/public-dns/>`_.


Google DNS is supposed to be `quicker and more efficient  <https://developers.google.com/speed/public-dns/docs/performance>`_, but we do not really care in fact (except if you are on a really quick network, the DNS requests velocity *cannot* be the limiting bottleneck for your web browsing).

But that free service is supposed to not modify the domain names space, contrarily to other services of that kind; and `it is known to be quite safe <https://developers.google.com/speed/public-dns/docs/security>`_.


``resolv.conf``?
----------------
Our Linuxian friends can also use a `resolv.conf <http://manpages.ubuntu.com/manpages/trusty/en/man5/resolv.conf.5.html>`_, and for example `that one on www.chaz6.com/files/resolv.conf <http://www.chaz6.com/files/resolv.conf>`_ can help, or by following `these explanations <https://developers.google.com/speed/public-dns/docs/using#setup>`_.
Some extra explanations `are also here on theos.in <http://theos.in/desktop-linux/resolve-conf-linux-example/>`_ or `here on die.net <http://linux.die.net/man/5/resolv.conf>`_, or as always `on Wikipédia (yes, I like Wikipédia!) <https://en.wikipedia.org/wiki/Resolv.conf>`_.


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

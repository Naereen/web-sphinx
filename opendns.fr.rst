.. meta::
   :description lang=fr: Petit résumé pour services alternatifs de DNS
   :description lang=en: Short description for alternative DNS services

#######################################
 Utiliser un service alternatif de DNS
#######################################


Ce mini-tutoriel commence en utilisant OpenDNS, puis le service DNS de Google.

.. note:: Plus de détails sur OpenDNS ?

   `Cette page Wikipédia <https://fr.wikipedia.org/wiki/OpenDNS>`_ donne plus d'informations sur le service.

   `Ce post de blog est assez agressif envers OpenDNS <http://www.bortzmeyer.org/opendns-non-merci.html>`_, avec raisons.
   Pour faire un résumé très court : **il ne faudrait pas utiliser** OpenDNS.


Pour utiliser OpenDNS, il suffit de renseigner ces adresses comme *serveurs DNS supplémentaires*.

:Pour l'IPv4: ``208.67.222.222``, ``208.67.220.220``, ``208.67.222.220``, ``208.67.220.222``
:Pour l'IPv6: ``2620:0:ccc::2``, ``2620:0:ccd::2``

Plus de détails (en anglais) sur la procédure nécessaire à l'utilisation d'un service DNS alternatif `peuvent être trouvés ici (merci à developers.Google.com) <https://developers.google.com/speed/public-dns/docs/using#setup>`_.
Un autre tutoriel plutôt précis se trouve `ici (pour Windows 7) <http://mintywhite.com/windows-7/change-dns-server-windows-7/>`_.

Vérifier les réglages
---------------------
Pour **vérifier que l'on utilise bien les serveurs d'OpenDNS**, il suffit d'`aller sur cette page www.OpenDNS.com/welcome <http://www.opendns.com/welcome/>`_.

Mais il est aussi possible de **tester ses réglages via la ligne de commande** (avec `la commande dig <https://fr.wikipedia.org/wiki/Dig_%28programme_informatique%29>`_) :

.. runblock:: console

   $ echo -e "# Réponse principale (serveur 208.67.222.222 d'OpenDNS) :"
   $ dig @208.67.222.222 perso.crans.org


.. runblock:: console

   $ echo -e "# Autre réponse (serveur 208.67.220.220 d'OpenDNS) : "
   $ dig @208.67.220.220 perso.crans.org | grep -v "^\(;.*\|$\)"


.. runblock:: console

   $ echo -e "# Autre réponse (serveur 208.67.222.220 d'OpenDNS) : "
   $ dig @208.67.222.220 perso.crans.org | grep -v "^\(;.*\|$\)"


.. runblock:: console

   $ echo -e "# Autre réponse (serveur 208.67.220.222 d'OpenDNS) : "
   $ dig @208.67.220.222 perso.crans.org | grep -v "^\(;.*\|$\)"


On peut vérifier leur **protection de l’hameçonnage** et des *"mauvais"* sites Internet, sur cette page (sans danger) `www.InternetBadGuys.com <http://www.internetbadguys.com/>`_ (la requête à OpenDNS pour savoir où trouver la page `www.InternetBadGuys.com` sera analysée comme *dangereuse*, et donc redirigée sur `cette "gentille" page <http://phish.opendns.com/main?url=www.internetbadguys.com>`_).

.. seealso::

   monip.org
      Afin de `connaître son adresse IP (v4 ou v6) <http://monip.org/>`_.

   WhoIsMyISP.org
      Afin de `connaître son Fournisseur d'Accès à Internet <http://www.whoismyisp.org/>`_ (**FAI**, ISP en anglais).

   DNSLeaktest.com
      Afin de `vérifier si son Fournisseur d'Accès à Internet <http://www.dnsleaktest.com/>`_  ne procède pas à `des fuites DNS <https://dnsleaktest.com/what-is-a-dns-leak.html>`_ dans votre dos.

   DNS Leak Test - Hidester
      Un autre `outil du même genre (hidester.com/dns-leak-test) <https://hidester.com/dns-leak-test/>`_, parce que son auteur m'a demandé d'inclure un lien ici…

   Pixel Privacy's DNS Leak Test
      On m'a gentiment demandé d'ajouter `un lien vers cet autre guide (PixelPrivacy.com/resources/dns-leak) <https://pixelprivacy.com/resources/dns-leak>`_.

----

Pourquoi avoir écrit cette page un peu vide pour mon site ?
-----------------------------------------------------------
 Je voulais un endroit où **retrouver facilement les adresses** IPv4 (et IPv6) **des serveurs d'OpenDNS** (et de Google DNS), afin de rapidement **les copier/coller pour configurer les nouvelles connexions** WiFi (ou filaires) sur mon ordinateur personnel.

Voilà chose faite !

----

Un autre service DNS alternatif ?
---------------------------------
Google propose aussi un service de DNS gratuit, `non restreint et non restrictif <https://developers.google.com/speed/public-dns/faq#nxdomains>`_, et ouvert à tous :

:Pour l'IPv4: ``8.8.8.8``, ``8.8.4.4``
:Pour l'IPv6: ``2001:4860:4860::8888``, ``2001:4860:4860::8844``


**Testons les**, via la ligne de commande (via `la commande dig`_) :

.. runblock:: console

   $ echo -e "# Réponse principale (serveur 8.8.8.8 de Google) :"
   $ dig @8.8.8.8 perso.crans.org


.. runblock:: console

   $ echo -e "# Autre réponse (serveur 8.8.4.4 de Google) :"
   $ dig @8.8.4.4 perso.crans.org | grep -v "^\(;.*\|$\)"


.. runblock:: console

   $ echo -e "# Et on teste aussi l'IPv6 (serveur 2001:4860:4860::8888 de Google) :"
   $ dig @2001:4860:4860::8888 perso.crans.org AAAA +cd


.. note:: Plus d'informations ?

   Comme d'habitude, plus de détails `ici sur Wikipédia <https://fr.wikipedia.org/wiki/Google_Public_DNS>`_,
   ou bien `la page officielle sur developers.Google.com <https://developers.google.com/speed/public-dns/>`_.


Il est sensé être `plus rapide, plus performant etc <https://developers.google.com/speed/public-dns/docs/performance>`_, mais on s'en fiche un peu (à moins d'être sur un réseau très rapide, la vitesse des requêtes DNS n'est *vraiment* pas le goulot d'étranglement de la rapidité de votre navigation web).

Ce service gratuit prétend ne procéder à aucune manipulation de l'espace des noms de domaine, `contrairement à d'autres services <http://www.bortzmeyer.org/dns-menteur.html>`_ de ce type; et `est réputé pour être sécurisé <https://developers.google.com/speed/public-dns/docs/security>`_.

.. note:: Sécurisé ? Hum, vraiment… ?

   On peut supposer que la plupart les services DNS sont `espionnés par des agences gouvernementales <http://www.lemonde.fr/economie/visuel/2015/01/24/cowbells-nouvelles-revelations-sur-les-pratiques-de-la-nsa_4561547_3234.html>`_… Ou des agences privés ou des groupes d'activistes ou… par Batman ?
   Bref, essayez de garder ça en tête : quand vous utilisez un service DNS externe, vous ne pouvez tout simplement pas être sûr de leur neutralité et de leur sécurité. Par défaut, il vaudrait mieux supposer que *chaque requête DNS* faite par votre ordinateur/téléphone peut être lue, à la demande, par votre gouvernement.
   Rassurant, non ?


Two other alternative DNS providers?

Deux autres services DNS alternatifs ?
--------------------------------------
`Récemment, CloudFare <https://blog.cloudflare.com/announcing-1111/>`_ propose aussi un service de DNS gratuit, `non restreint et non restrictif <https://developers.cloudflare.com/1.1.1.1/commitment-to-privacy/>`_, et ouvert à tous :

:Pour l'IPv4: ``1.1.1.1``, ``1.0.0.1`` (encore plus simple à mémoriser !)
:Pour l'IPv6: ``2606:4700:4700::1111``, ``2606:4700:4700::1001``


.. runblock:: console

   $ echo -e "# Réponse principale (1.1.1.1, DNS CloudFare) :"
   $ dig @1.1.1.1 perso.crans.org


.. runblock:: console

   $ echo -e "# Et en IPv6 (2606:4700:4700::1111, DNS CloudFare) :"
   $ dig @2606:4700:4700::1111 perso.crans.org AAAA +cd


Et `Quad9 <https://www.quad9.net/>`_ propose aussi son propre service de DNS.

:Pour l'IPv4: ``9.9.9.9``


.. runblock:: console

   $ echo -e "# Réponse principale (9.9.9.9, DNS Quad9) :"
   $ dig @9.9.9.9 perso.crans.org


.. seelalso::

    `Cet article m'a informé de l'existence de ces deux autres services <https://korben.info/1-1-1-1-ou-9-9-9-9-ou-8-8-8-8-quel-dns-choisir.html>`_.

.. seealso::

    `Plus d'informations sur la command dig  <https://blog.udemy.com/dns-lookup-command/>`_ (en anglais).


``resolv.conf``?
----------------
Les barbus sur Linux peuvent aussi utiliser un fichier `resolv.conf (doc en anglais) <http://manpages.ubuntu.com/manpages/trusty/en/man5/resolv.conf.5.html>`_, en s'inspirant de `cet exemple (www.chaz6.com/files/resolv.conf en anglais) <http://www.chaz6.com/files/resolv.conf>`_, et en suivant `ces explications <https://developers.google.com/speed/public-dns/docs/using#setup>`_.
D'autres explications sont `là sur theos.in (en anglais) <http://theos.in/desktop-linux/resolve-conf-linux-example/>`_ ou `sur die.net (en anglais) <http://linux.die.net/man/5/resolv.conf>`_, ou enfin `sur Wikipédia (encore, toujours, mais en anglais) <https://en.wikipedia.org/wiki/Resolv.conf>`_.


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

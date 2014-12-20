.. meta::
   :description lang=en: Short description for alternative DNS services
   :description lang=fr: Petit résumé pour services alternatifs de DNS

#################################
 Use an alternative DNS services
#################################
.. include:: .special.rst

.. todo:: Conclude translation!

---

Ce mini-tutoriel commence en utilisant OpenDNS, puis le service DNS de Google.

.. note:: Plus de détails sur OpenDNS ?

   `Cette page Wikipédia <https://fr.wikipedia.org/wiki/OpenDNS>`_ donne plus d'informations sur le service.

   `Ce post de blog est assez agressif envers OpenDNS <http://www.bortzmeyer.org/opendns-non-merci.html>`_, avec raisons.
   En résumé, non il ne faudrait pas utiliser OpenDNS.

Pour utiliser OpenDNS, il suffit de renseigner ces adresses comme *serveurs DNS supplémentaires*.

:Pour l'IPv4: ``208.67.222.222``, ``208.67.220.220``, ``208.67.222.220``, ``208.67.220.222``
:Pour l'IPv6: ``2620:0:ccc::2``, ``2620:0:ccd::2``

Plus de détails (en anglais) sur la procédure nécessaire à l'utilisation d'un service DNS alternatif `sont là (par Google) <https://developers.google.com/speed/public-dns/docs/using#setup>`_.

Vérifier les réglages
---------------------
Pour vérifier que l'on utilise bien les serveurs d'OpenDNS, il suffit d'`aller sur cette page www.OpenDNS.com/welcome <http://www.opendns.com/welcome/>`_.

Testons les :

.. runblock:: console

   echo -e "\n\n# Mainanswer:"
   dig @208.67.222.222 perso.crans.org
   echo -e "\n\n# Other answers:"
   dig @208.67.220.220 perso.crans.org | grep -v "^\(;.*\|$\)"
   dig @208.67.222.220 perso.crans.org | grep -v "^\(;.*\|$\)"
   dig @208.67.220.222 perso.crans.org | grep -v "^\(;.*\|$\)"


On peut vérifier leur protection de l’hameçonnage, sur cette page `www.InternetBadGuys.com <http://www.internetbadguys.com/>`_ (la requête à OpenDNS pour savoir ou chercher la page www.InternetBadGuys.com sera analysée comme dangereuse, et donc redirigée sur `cette gentille page <http://phish.opendns.com/main?url=www.internetbadguys.com>`_).

.. seealso::

   monip.org
      Afin de `connaître son adresse IP (v4 ou v6) <http://monip.org/>`_.

   WhoIsMyISP.org
      Afin de `connaître son Fournisseur d'Accès à Internet <http://www.whoismyisp.org/>`_.

   DNSLeaktest.com
      Afin de `vérifier si son Fournisseur d'Accès à Internet <http://www.dnsleaktest.com/>`_  ne procède pas à `des fuites DNS <https://dnsleaktest.com/what-is-a-dns-leak.html>`_.


----

Pourquoi cette page un peu vide ?
---------------------------------
 Je voulais un endroit où retrouver facilement les adresses IPv4 et v6 des serveurs DNS d'OpenDNS, afin de rapidement les copier/coller pour configurer les nouvelles connexions WiFi ou filaires.

Voilà chose faite !

----

D'autres DNS alternatifs ?
--------------------------
Google propose aussi un service de DNS gratuit, `non restreint et non restrictif <https://developers.google.com/speed/public-dns/faq#nxdomains>`_, et ouvert à tous.

:Pour l'IPv4: ``8.8.8.8``, ``8.8.4.4``
:Pour l'IPv6: ``2001:4860:4860::8888``, ``2001:4860:4860::8844``


Testons les :

.. runblock:: console

   echo -e "\n\n# Mainanswer:"
   dig @8.8.8.8 perso.crans.org
   echo -e "\n\n# Other answers:"
   dig @8.8.4.4 perso.crans.org | grep -v "^\(;.*\|$\)"
   echo -e "\n\n# And with IPv6:"
   dig @2001:4860:4860::8888 perso.crans.org AAAA +cd


.. note:: Plus d'informations ?

   Comme d'habitude, plus de détails `ici sur Wikipédia <https://fr.wikipedia.org/wiki/Google_Public_DNS>`_,
   ou bien `la page officielle sur developers.google.com <https://developers.google.com/speed/public-dns/>`_.


Il est sensé être `plus rapide, plus performant etc <https://developers.google.com/speed/public-dns/docs/performance>`_, mais on s'en fiche un peu (à moins d'être sur un réseau très rapide, la vitesse des requêtes DNS n'est *vraiment* pas le facteur limitant la rapidité de navigation web).
Ce service ne procède à aucune manipulation de l'espace des noms de domaine, contrairement à d'autres services de ce type; et `est réputé pour être sécurisé <https://developers.google.com/speed/public-dns/docs/security>`_.


.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/

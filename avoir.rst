#######################################################################
 Expériences faites et à faire (dans des pages web faites avec Sphinx)
#######################################################################
.. include:: .javascript.fr.rst

.. note:: Page de démos (faites et à faire)

    Cette page est là pour montrer quelques démos supplémentaires à propos de Sphinx.

Quelques idées ou démos
-----------------------
Liens externes
^^^^^^^^^^^^^^
L'extension `sphinx.ext.extlinks <http://sphinx-doc.org/ext/extlinks.html#confval-extlinks>`_ permet de définir des rôles `rST <demo.html>`_ pour rapidement insérer un lien externe.
Quelques exemples des alias `définis dans mon conf.py <https://bitbucket.org/lbesson/web-sphinx/src/master/conf.py#conf.py-120>`_ :

- ``:issue:`1``` donnera ce lien :issue:`1` (bug signalé via Bitbucket).
- ``:wfr:`Grim_Dawn``` donnera ce lien :wfr:`Grim_Dawn` (Wikipédia, en français).
- ``:wen:`Grim_Dawn``` donnera ce lien :wen:`Grim_Dawn` (Wikipédia, en anglais).
- ``:ffaddonfr:`nosquint``` donnera ce lien :ffaddonfr:`nosquint` (page d'un `greffon pour Firefox <firefox-extensions.fr.html>`_).
- ``:ffaddonen:`nosquint``` donnera ce lien :ffaddonen:`nosquint` (page d'un `greffon pour Firefox en anglais <firefox-extensions.en.html>`_).
- ``:stpkg:`GitGutter``` donnera ce lien :stpkg:`GitGutter`.

Meilleur thème ?
^^^^^^^^^^^^^^^^
- `Read-the-doc <https://github.com/snide/sphinx_rtd_theme>`_ semble le mieux !
- `SphinxTrab <http://jfardello.github.io/Sphinxtrap>`_ semble intéressant.
- `Basicstrap <https://pythonhosted.org/sphinxjp.themes.basicstrap/>`_ aussi.
- `Sphinx-bootstrap-theme <http://ryan-roemer.github.io/sphinx-bootstrap-theme/>`_ idem.

Réduire les dépendances inutiles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Enlever `<gnuplot_embed.html>`_ ?

Une extension Sphinx pour Youtube
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Voici, par exemple, la première vidéo du `concert du Trio ELM <https://www.youtube.com/playlist?list=PLPtDOWi65kraB9AgUkcN9NkwIsiT6NRnb>`_ donné à l'ENS Cachan en 2014 :

.. youtube:: 45Ms9-t-Pr4&list=PLPtDOWi65kraB9AgUkcN9NkwIsiT6NRnb&index=2

-----------------------------------------------------------------------------

Une **expérimentation** : ajouter facilement des couleurs en rST ?
------------------------------------------------------------------
J'utilise la balise ``.. raw:: html`` pour embarquer des définitions de
rôles dans les fichiers **.rst** écrits pour ces pages webs,
et ces rôles sont mis en relation avec des styles CSS définis dans
`.templates/layout.html <https://bitbucket.org/lbesson/web-sphinx/src/master/.templates/layout.html>`_
le template Jinja qui contrôle l'apparence et le rendu de toutes mes pages produites avec Sphinx.
C'est `une question courante concernant Sphinx <https://stackoverflow.com/questions/3702865/sphinx-restructuredtext-set-color-for-a-single-word/35231016#35231016>`_.

Notamment, les différentes couleurs suivantes sont disponibles :
*black gray silver white maroon red magenta fuchsia pink orange yellow lime green olive teal cyan aqua blue navy purple*.

Ceci est rendu possible avec:

 * `.special.rst <https://bitbucket.org/lbesson/web-sphinx/raw/master/.special.rst>`_ inclus en haut de chaque fichier rST (nécessaire). :red:`Nouveau :` en fait, il est possible d'utiliser la variable `rst_prolog <http://www.sphinx-doc.org/en/stable/config.html#confval-rst_prolog>`_ dans le fichier `conf.py <http://www.sphinx-doc.org/en/stable/config.html>`_ de sphinx pour ajouter du contenu reStructuredText qui sera ajouté en en-tête de chaque page, et donc dans ce cas, on peut utiliser ``.. include:: .special.rst`` (voir cette modification :bbchangeset:`f4b9d9d565f71849ca848232a9e5a0daf99c1484`),
 * `hacks.css <https://bitbucket.org/lbesson/web-sphinx/src/master/.static/hacks.css>`_ inclus dans chaque page web via les templates.

Liste des couleurs rajoutées :

 * la couleur :black:`black`;
 * la couleur :gray:`gray`;
 * la couleur :silver:`silver`;
 * la couleur :white:`white` (white);
 * la couleur :maroon:`maroon`;
 * la couleur :red:`red`;
 * la couleur :magenta:`magenta`;
 * la couleur :fuchsia:`fuchsia`;
 * la couleur :pink:`pink`;
 * la couleur :orange:`orange`;
 * la couleur :yellow:`yellow`;
 * la couleur :lime:`lime`;
 * la couleur :green:`green`;
 * la couleur :olive:`olive`;
 * la couleur :teal:`teal`;
 * la couleur :cyan:`cyan`;
 * la couleur :aqua:`aqua`;
 * la couleur :blue:`blue`;
 * la couleur :navy:`navy`;
 * la couleur :purple:`purple`.

.. versionadded:: 1.4

   Autres styles rajoutés :

    * :under:`souligné`, avec ``:under:`texte```;
    * :over:`surligné`, avec ``:over:`texte```;
    * :line:`barré`, avec ``:line:`texte```;
    * :it:`italique`, avec ``:it:`texte```;
    * :ob:`oblique`, avec ``:ob:`texte``` (comme italique semble-t-il);
    * :blink:`clignotant`, avec ``:blink:`texte``` (:red:`pas toujours supporté !`).


------------------------------------------------------------------------------

Tests JavaScript avec TimeAgo
-----------------------------
Affiche des dates avec un ``<abbr class="timeago">`` :

.. raw:: html

   Fin des écrits de l'ENS en MP* : <abbr class="timeago" title="2011-05-10T11:24:17Z">10 Mai 2011</abbr>.


Valideurs CSS et HTML
---------------------
.. versionadded:: 1.5

Deux liens vers les valideurs **CSS** et **HTML** du W3C étaient intégrés dans la barre latérale de chaque page.

Ils n'y sont plus, mais ils sont encore accessibles ici :

 #. `XHTML 4.01 <http://validator.w3.org/check?uri=referer>`_,
 #. et `CSS 3 <http://jigsaw.w3.org/css-validator/check/referer>`_,
 #. et `RSS 2.0 <http://validator.w3.org/feed/check.cgi?url=http%3A%2F%2Fperso.crans.org/besson%2Frss.xml>`_.


Une des deux images était codée en *base64*, pour *essayer*.

L'autre est :

.. image:: .valid-xhtml10.png

Résultats attendus :

 * aucune erreur **sérieuse** pour les feuilles **CSS** !
 * aucune erreur **grave** pour les pages **XHTML** 1.0 Transitional !
 * aucune erreur pour le flux RSS !

.. warning:: Mes pages ne sont plus correctes sémantiquement …

   Aucunes pages ne passent désormais le test XHTML, à cause de bout de
   code écrits par des extensions non officielles de Sphinx (``sphinx.ext.gnuplot`` par exemple).

   Aucunes pages ne passent désormais le test CSS, à cause de la feuille `buttons.css <_static/buttons.css>`_.

   :red:`Mais j'y travaille ! J'essaie de nétoyer au mieux les modèles de pages, et le code de chaque pages. Dans ce but, tout retour est le bienvenu ! Le traqueur de bug est là pour ça :`
   `<https://bitbucket.org/lbesson/web-sphinx/issues/new/>`_.

------------------------------------------------------------------------------

D'autres ajouts
---------------
``sphinx_git``
^^^^^^^^^^^^^^
Une liste des dernières modifications. Une liste plus complète
peut-être consultée avec le flux `rss <https://bitbucket.org/lbesson/web-sphinx/rss>`_.

.. git_changelog::


``sphinxcontrib.bitbucket``
^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Un signalement d'erreur via bitbucket :bbissue:`1`.
- Et une modification, indiquée via son hash long (``822ba395fceeac8e8a2a25b571503ec790e4fe35``)
  :bbchangeset:`822ba395fceeac8e8a2a25b571503ec790e4fe35`.

------------------------------------------------------------------------------

Citation random !
^^^^^^^^^^^^^^^^^
.. versionadded:: 1.8

Cette ligne Bash affiche une citation aléatoire.
Actuellement, ``~/.quotes.txt`` est une liste (très) complète des meilleures citations de Kaamelott.

Cette liste est obtenue à partir des deux scripts suivants,
depuis les données du superbe projet `WikiQuote <https://fr.wikiquote.org/wiki/Kaamelott>`_ :

- `quotes.sh <publis/bin/quotes.sh>`_ pour télécharger et analyser les citations,
- `makequotes.sh <publis/bin/makequotes.sh>`_ pour construire un fichier ``quotes.txt``.

.. runblock:: console

   $ echo -e "Citation aléatoire :" ; shuf /home/lilian/.quotes.txt 2>/dev/null | head -n 1 | fold -s -w 90


.. (c) Lilian Besson, 2011-2019, https://bitbucket.org/lbesson/web-sphinx/

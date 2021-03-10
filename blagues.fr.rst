.. meta::
    :description lang=fr: Des blagues en français
    :description lang=en: Some jokes in French

=========================
 Des blagues en français
=========================

Cette petite page montre des blagues en français.

.. warning:: Je ne suis **pas** l'auteur de la plupart de ces blagues.


Une première blague ?
~~~~~~~~~~~~~~~~~~~~~

Dans un terminal, sur ma machine `avec mon ~/.bash_aliases <https://bitbucket.org/lbesson/bin/src/master/.bash_aliases>`_, j'ai cette commande, mais qui ne marche pas ici :

.. runblock:: console

   $ blague


En gros, elle fait ça :

.. runblock:: console

   $ python3 -c "import random; f=open('$HOME/.blagues.txt'); line=random.choice(f.readlines()); print(line)"


ALL THE JOKES!
~~~~~~~~~~~~~~

On affiche `TOUTES LES BLAGUES ! <https://knowyourmeme.com/memes/all-the-things>`_ :

.. include:: .blagues.rst


.. .. runblock:: pycon
..
..    >>> import random
..    >>> f = open('/home/lilian/.blagues.txt')
..    >>> for line in f.readlines():
..    ...    print(line)

Liens
~~~~~
- J'avais trouvé `ce PDF <http://mathem-all.fr/recueil_blagues31.pdf>`_ (`copie <http://ludovicy.lu/images/stories/documents/receuil_blagues_math.pdf>`_), « Recueil de blagues mathématiques et autres curiosités » de Bruno Winckler, qui est `disponible à la vente <https://livre.fnac.com/a3422878/Bruno-Winckler-Blagues-mathematiques-et-autres-curiosites>`_ et contient 115 pages de blagues mathématiques très riches (et instructives) à l'édition 3.1 du 1er avril 2009 ;
- Ces listes de blagues : `d'informatique <https://www.nicolasmoro.net/blagues-informatique/>`_ et `de mathématiques <https://www.nicolasmoro.net/blagues-maths/>`_ par `Nicolas Moro <https://www.nicolasmoro.net/>`_ ;
- D'autres blagues d'informatique sur `linuxfr.org <https://linuxfr.org/news/blagues-d-informaticiens>`_, `devtopics.com <http://www.devtopics.com/best-programming-jokes/>`_ (en anglais) ;
- `Vidéos « Jokes de Papa » sur YouTube <https://www.youtube.com/playlist?list=PLKVHXumEUNS53qA3_GkAlR9eMsHkMfsek>`_ ;
- Le jeu `Jokes de Papa <https://www.fnac.com/Jokes-de-papa/a11184531/w-4>`_ (sur la Fnac).

.. youtube:: IhkNo3znU5s

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

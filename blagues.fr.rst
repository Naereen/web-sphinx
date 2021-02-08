.. meta::
    :description lang=fr: Des blagues en français
    :description lang=en: Some jokes in English

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
- `Vidéos « Jokes de Papa » sur YouTube <https://www.youtube.com/playlist?list=PLKVHXumEUNS53qA3_GkAlR9eMsHkMfsek>`_ ;
- Le jeu `Jokes de Papa <https://www.fnac.com/Jokes-de-papa/a11184531/w-4>`_ (sur la Fnac).

.. youtube:: IhkNo3znU5s

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

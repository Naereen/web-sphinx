.. meta::
    :description lang=fr: Des blagues en français
    :description lang=en: Some jokes in English

=========================
 Des blagues en français
=========================

Cette petite page montre des blagues en français.
Je ne suis pas l'auteur de la plupart de ces blagues.

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

.. include:: .blagues.rst


.. On affiche `TOUTES LES BLAGUES ! <https://knowyourmeme.com/memes/all-the-things>`_
.. 
.. .. runblock:: pycon
.. 
..    >>> import random
..    >>> f = open('/home/lilian/.blagues.txt')
..    >>> for line in f.readlines():
..    ...    print(line)

Liens
~~~~~
- Vidéos « Jokes de Papa » sur YouTube

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

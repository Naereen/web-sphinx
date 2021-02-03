.. meta::
    :description lang=en: Somes jokes in English
    :description lang=fr: Des blagues en français

=======================
 Some jokes in English
=======================

This tiny page shows a list of jokes. I'm not the author of the jokes, see the links at the bottom.

A first joke?
~~~~~~~~~~~~~

.. runblock:: console

   $ python3 -c "import json; f=open('$HOME/.jokes.json'); line=json.load(f)[0]; print(line['setup']); print(line['punchline'])"


A random joke!
~~~~~~~~~~~~~~

This joke changes at every build of this website:

.. runblock:: pycon

   >>> import json,random
   >>> f = open('/home/lilian/.jokes.json')
   >>> line = random.choice(json.load(f))
   >>> print(line['setup'])
   >>> print(line['punchline'])


ALL THE JOKES!
~~~~~~~~~~~~~~

Let's print `ALL THE JOKES! <https://knowyourmeme.com/memes/all-the-things>`_

.. runblock:: pycon

   >>> import json
   >>> f = open('/home/lilian/.jokes.json')
   >>> for line in json.load(f):
   ...    print("\n\n", line['setup'], "\n", line['punchline'])

Links
~~~~~
- https://official-joke-api.appspot.com/jokes/random

- https://github.com/15Dkatz/official_joke_api

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

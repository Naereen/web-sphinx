.. meta::
   :description lang=en: Quick tutorial for git and Bitbucket
   :description lang=fr: Rapide tutorial pour git and Bitbucket

###############################################################
 Quick tutorial for `git <https://en.wikipedia.org/wiki/Git>`_
###############################################################

Introduction
------------
This page is a quick introduction to `git`_ , and its regular use via `Bitbucket <https://bitbucket.org>`_.

This article contains very quick explanations about how to start using and mastering the mighty `git`_ software, its installation,  and its use thanks to the awesome `Bitbucket`_.

Links are provided to other tutorials and other explanations.

I also use that page to join and publish a few configuration files to improve and customize your use of `git`_, some advices, and some aliases to ease the use of `git`_ on the command line (thanks to your ``~/.bash_aliases`` file for the command-line `GNU/Bash <https://en.wikipedia.org/wiki/GNU_Bash>`_ environment).


.. note:: Licence ?

   This page, and all related files are freely distributed under the terms of the `GPLv3 licence <LICENSE.html>`_ !
   (like everything I publish or distribute).

-----------------------------------------------------------------------

About **Git**
^^^^^^^^^^^^^
The official website of `git`_ is `git-scm.com <http://git-scm.com>`_.

What is Git ?
~~~~~~~~~~~~~
« *Git is a decentralized* `version control <https://en.wikipedia.org/wiki/Version_control_software>`_ *software. This is free software created by Linus Torvalds, Linux kernel copyright and distributed under the terms of the GNU General Public License Version 2.* »

« *Git is designed to be efficient in speed and ensure the integrity of data stored, sent or received. Completely free and open-source since 2005, it quickly became the most popular version control system for software development.* »

What's the point?
~~~~~~~~~~~~~~~~~

.. sidebar:: Example ?

   For instance, `this link shows the first version I wrote for this very page <https://bitbucket.org/lbesson/web-sphinx/src/master/tutogit.en.rst>`_ !
   By using `Bitbucket`_ web interface, you can see `the complete history of changes for this document <https://bitbucket.org/lbesson/web-sphinx/history-node/master/tutogit.en.rst>`_.


« *A version control software is a software designed to store a set of files by holding the chronology of all the changes that have been made on it.* »

« `git`_ *allows notably to find all the previous versions of a lot of related files. It also allows an effective and secure control of your files (and even of entire projects) and also provide a complete track changes made to each file.* »

Needless to say, `I am using git constantly <https://bitbucket.org/lbesson/>`_, mainly when I work on Linux ((X)Ubuntu™ 15.10) on a daily basis, and from time to time on Windows™.


Is it really so popular?
~~~~~~~~~~~~~~~~~~~~~~~~
Yes:

* The biggest web companies use git: `Facebook <https://github.com/facebook>`_, `Google <https://github.com/google>`_, `Twitter <https://github.com/Twitter>`_, `Netflix <https://github.com/netflix>`_ or `LinkedIn <https://github.com/linkedin>`_ for instance.

* The `git`_ project itself has been developed by a small team, and they have been using `git`_ themselves: `GitHub.com/git <https://github.com/git>`_ for quite some time!

* In November 2014, `GitHub <https://github.com/>`_ seemed to have more that **7 millions of users**, `Bitbucket`_ had **almost 2 millions**, and `gitorious <https://gitorious.org/>`_ more than 400 000!

* The `wonderful software toolbox <https://about.gitlab.com/features/>`_ `GitLab <https://about.gitlab.com/>`_ claims to be used by more than **100,000 companies and organizations from the world!** See for `instance the Crans gitlab <https://gitlab.crans.org/>`_ (and `my not-so-used account on it <https://gitlab.crans.org/lbesson/>`_).


An important distinction
~~~~~~~~~~~~~~~~~~~~~~~~
* `Bitbucket.org <https://Bitbucket.org>`_, `GitHub.com <https://GitHub.com>`_, `Gitorious.org <https://Gitorious.org>`_ (`which hosts the source code for the amazing "Frédo" mathematics books <https://www.gitorious.org/mes-notes-de-math-matique>`_), or `the Crans GitLab <http://GitLab.CRANS.org>`_ are just **hosting services** (awesome services, but just this).

* `git`_ is the version **management software (free, open-source and free)**, used by all these web services.

Documentation about `git`_
~~~~~~~~~~~~~~~~~~~~~~~~~~
A little loose, but still in the order from the best reference to the blurrier:

* `This first tutorial by the team running Bitbucket (Atlassian) <https://confluence.atlassian.com/display/BITBUCKET/Getting+started+with+Bitbucket>`_,
* `www.Atlassian.com/git/ <https://www.atlassian.com/git/>`_ covers lots of things. I like the graphic and English styles of these explanations,
* `the official reference book on git-scm.com <http://git-scm.com/book/en/>`_,
* the `help.GitHub.com <https://help.github.com/>`_ website is really well designed, and it can sure help you,
* this last `tutorial on readwrite.com <http://readwrite.com/2013/09/30/understanding-github-a-journey-for-beginners-part-1>`_ is quite well written (`second part <http://readwrite.com/2013/10/02/github-for-beginners-part-2>`_).


Two documents in PDF to download in order to never panic when you will get lost during your first days with `git`_:

* The first one is `given by training.GitHub.com <https://training.github.com/kit/downloads/github-git-cheat-sheet.pdf>`_,
* The second one `is by Atlassian <https://www.atlassian.com/dms/wac/images/landing/git/atlassian_git_cheatsheet.pdf>`_.


Other resources (less useful, but can help):

* `en.wikibooks.org/wiki/Git <https://en.wikibooks.org/wiki/Git>`_.
* `that other unofficial tutorial <https://www.progclub.net/~key720/tutorials/git_bitbucket/>`_ about the use of both `git`_ and `Bitbucket`_,
* `this third tutorial <http://www.bohyunkim.net/blog/archives/2518>`_ is kinda ugly but might be useful.
* This `« Start with Git » by Robusta Code <http://www.robusta.io/content/tutoriel/git/start-git.html>`_.


.. note:: And how does it work, *really*, underneath the nice web interface and command line tools? Is it (theoretically) complicated? :red:`Yes.`

   .. image:: .git.png
      :scale: 100%
      :align: center
      :alt: XKCD of Friday the 30th of October, about Git
      :target: https://xkcd.com/1597/


---------------------------------------------------------------------

My (amateur) use of `git`_
---------------------------
`My setup <./publis/git/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^
:State: *Actively maintained.* (November 2014)

For these two configuration files (on Linux), a global ``.gitconfig`` and ``.gitignore`` can be in your ``HOME`` (``~/``, or ``/home/pseudo``), and a particular file for every repository can also be created.

* `.gitconfig <./publis/git/.gitconfig>`_ to configure the complete behavior of `git`_ (inspired by the `one of the Crans developers <http://perso.crans.org/respbats/config/.gitconfig>`_, thanks to them).
* `.gitignore <./publis/git/.gitignore>`_ lets say which files should be ignored (ie. not considered) by `git`_ when it indicates the unsupervised files.


.. seealso::

   About ``.gitconfig``
      ``git-config`` is a git command, and it interacts with the file(s) ``.gitconfig``.
      The page `git-scm.com/docs/git-config <http://git-scm.com/docs/git-config>`_ gives in-depth explanations on how to use a ``.gitconfig``.
      More details are also given `here on the book on git-scm.com <http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration>`_.
      `These explanations by Atlassian <https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config>`_ or `this small article by Nick Berardi <http://nickberardi.com/gitconfig/>`_ can also help.
      Two other examples: `GitHub.com/matagus/gitconfig <https://github.com/matagus/gitconfig/blob/master/.gitconfig>`_, `GitHub.com/alikins/gitconfig <https://github.com/alikins/gitconfig/blob/master/gitconfig>`_.

   About ``.gitignore``
      `These explications on help.GitHub.com <https://help.github.com/articles/ignoring-files/>`_ why and how to use ``.gitignore``. GitHub even offer a `collection of .gitignore files <https://github.com/github/gitignore>`_ suitable for different kinds of projects.
      For instance, `that one is perfectly designed to use with a Python project <https://github.com/github/gitignore/blob/master/Python.gitignore>`_.

      This other reference page `git-scm.com/docs/gitignore <http://git-scm.com/docs/gitignore>`_ or `that last article on kernel.org <https://www.kernel.org/pub/software/scm/git/docs/gitignore.html>`_ can also help.


From the Command Line
^^^^^^^^^^^^^^^^^^^^^
You can consult my `bash_aliases <bin/.bash_aliases>`_ (also `here on Bitbucket.org/lbesson/bin <https://bitbucket.org/lbesson/bin/src/master/.bash_aliases>`_).
I defined the following `Bash aliases <http://abs.traduc.org/abs-5.3-fr/ch24.html>`_,
which allow you to see the changed, deleted or added files:

* ``alias GitChanged='clear ; git status | grep --color=always 'modified' | less -r'`` for the modified files,
* ``alias GitDeleted='clear ; git status | grep --color=always 'deleted' | less -r'`` for the deleted files,
* ``alias GitAdded='clear ; git status | grep --color=always 'added' | less -r'`` for the added files,

* and ``alias GitSize='clear; git count-objects -v -H | grep "size-pack" | sed s/"size-pack: "/"The size of the repository is "/'`` displays the storage size of the current repository (e.g. 10.43 MB currently for `this project web-sphinx <https://bitbucket.org/lbesson/web-sphinx>`_).

.. runblock:: console

   $ git count-objects -v -H | grep "size-pack" | sed s/"size-pack: "/"The size of the repository is "/



These ones are good shortcuts, which by default also launches local compression of the just filed after each operation (on average it saves time):

* ``alias Push='clear; git push && git gc'`` to upload the latest changes on the mother repository,
* ``alias Pull='clear; git gc && git pull && git gc'`` to download the latest changes from the mother repository,
* ``alias Commit='clear; git commit -m'`` to quickly validate the last changes (ie. doing a *commit*),
* ``alias Add='git add'`` to easily add files,
* ``alias Aggressive='git gc --aggressive'`` launches an "aggressive" compression,
* ``alias s='clear ; git status | less -r'`` is a handy shortcut for the most used `git`_ command: ``git status``.


And finally, I have defined an practical alias to synchronize the current project with the deposit mother and its sub-folder on my website.

* ``alias Sync='clear; echo -e "Synchronizing (git push, gc, send_zamok, send_dpt)..."; git push; git gc --aggressive; make send_zamok; make send_dpt; alert'``


For instance, `that repository <https://bitbucket.org/lbesson/ansi-colors>`_ is `here locally on my website (publis/ansi-colors) <publis/ansi-colors/>`_.
`That other one <https://bitbucket.org/lbesson/mpri-bomberman>`_ is `here locally on my website (publis/Bomberman) <publis/Bomberman/.build/html/>`_.
`And that last one <https://bitbucket.org/lbesson/python-demos>`_ is also `here locally on my website (python-demos) <python-demos/>`_.


.. note:: Details about aliases Bash?

   More information is available `in this book about Bash programming <http://abs.traduc.org/abs-5.3-fr/ch24.html>`_, `on the Linux documentation project <http://www.tldp.org/LDP/abs/html/aliases.html>`_, `that other doc <http://ss64.com/bash/alias.html>`_, or that `last Wikipédia about aliases on generic scripting programming language <https://en.wikipedia.org/wiki/Alias_%28command%29>`_.



With `Sublime Text 3 <http://www.sublimetext.com/3/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. note:: A graphical interface for `git`_?

   The use of any good GUI for `git`_ can save a lot of time.
   To write webpages and code, I like `Sublime Text 3 (ST3) <sublimetext.en.html>`_.
   Regardless of your text editor or IDE, it should be possible to bring this kind of functionality to easily use `git`_ without always going through console commands.

   For example, Atlassian offers `SourceTree <http://www.sourcetreeapp.com/>`_, for Windows™ and Mac™ OS X.
   And GitHub have developed their own application `for Mac™ OS X <https://mac.github.com/>`_ or `Windows™ <https://windows.github.com>`_.


The following free plugins allow a smooth and easy use of `git`_ on `Sublime Text 3`_:

* The small `GitGutter <https://sublime.wbond.net/packages/GitGutter>`_  will help to visualize the difference of *each line* of *each file* regarding the last commited version for the *git* repository in which it is located (visually great to see the changes since the last *commit*).

* The wonderful `SublimeGit <https://sublimegit.net/>`_ (installable from `sublime.wbond.net/packages/SublimeGit <https://sublime.wbond.net/packages/SublimeGit>`_). Allows a full integration of git via the control panel. Free but annoys you regularly to ask you buy an (useless) 10$ commercial licence... But it is really awesome, so you will support this.

* `GitSavvy <https://packagecontrol.io/packages/GitSavvy>`_ seems to be a good free and open-source alternative.

.. seealso::

   `sublimetext.en.html`_
      Please read the recent page `sublimetext.en.html <sublimetext.en.html>`_ for more details on the use I make of Sublime Text 3.


With Bitbucket.org
^^^^^^^^^^^^^^^^^^
Like the other hosting services, `Bitbucket`_ is **free**, flexible, powerful, `24h/24 and 7/7 functionnal <https://status.Bitbucket.org>`_, and allow to easily publish your code on Internet.

 .. note:: GitHub offers pretty much the same (awesome) features, for free too.


`Bitbucket`_ offers in addition to the public repositories and unlimited numbers of private repos. Every repos is `limited to 2GB <https://confluence.atlassian.com/pages/viewpage.action?pageId=273877699>`_ (you really have to want to break the system go beyond!).
Signing up is quick, just go to `this page https://Bitbucket.org/ <https://Bitbucket.org/>`_ !
(Note that `Bitbucket`_ can also be used with a Google account, Facebook, GitHub or even with `OpenID <https://en.wikipedia.org/wiki/OpenID>`_.)


Once your profile is created, it will look like mine, but more *empty*: `Bitbucket.org/lbesson <https://bitbucket.org/lbesson>`_ (see this one for another example `Bitbucket.org/jilljenn <https://bitbucket.org/jilljenn>`_).

Public deposits are visible to all: `Bitbucket.org/lbesson/profile/repositories <https://bitbucket.org/lbesson/profile/repositories?visibility=public>`_.

For example, here are some of my repositories:

 - `Bitbucket.org/lbesson/web-sphinx <https://bitbucket.org/lbesson/web-sphinx>`_ stores the sources of `this website <index.html>`_, as for instance the reStructuredText (``.rst``) source code for that `(→ and with a direct link to THAT line) <https://bitbucket.org/lbesson/web-sphinx/annotate/master/tutogit.en.rst?fileviewer=file-view-default#tutogit.en.rst-223>`_,
 - `Bitbucket.org/lbesson/bin <https://bitbucket.org/lbesson/bin>`_ hosts dozens of scripts, especially some in Bash and Python
 - `Bitbucket.org/lbesson/web-sphinx-scripts <https://bitbucket.org/lbesson/web-sphinx-scripts>`_ stores local versions of all `Javascript scripts used by this site <js.html>`_,
 - `Bitbucket.org/lbesson/cv <https://bitbucket.org/lbesson/cv>`_ stores the \\(\\LaTeX{}\\) sources for my résumés `in English <cv.en.pdf>`_ and `in French <cv.fr.pdf>`_: `cv.en.tex <https://bitbucket.org/lbesson/cv/src/master/cv.en.tex>`_ or `cv.fr.tex <https://bitbucket.org/lbesson/cv/src/master/cv.fr.tex>`_,
 - `Bitbucket.org/lbesson/munstrap <https://bitbucket.org/lbesson/munstrap>`_ a small repository hosting my French translation of the theme **Munstap**, adaptive and modern theme for `Munin <http://munin-monitoring.org/>`_.


Further reading is available here `en.WikiPedia.org/wiki/Bitbucket <https://en.wikipedia.org/wiki/Bitbucket>`_.


Publish web pages with Bitbucket?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
If your username is Bitbucket **STUFF**, it is possible to create a repository called "STUFF.bitbucket.org", and then all documents will be stored there you will be automatically available on the website `http://STUFF.bitbucket.org <http://STUFF.bitbucket.org>`_ !

More details are given on `cette page de doc par Atlassian <https://confluence.atlassian.com/display/BITBUCKET/Publishing+a+Website+on+Bitbucket>`_, and `here is their example (tutorials.bitbucket.org) <https://bitbucket.org/tutorials/tutorials.bitbucket.org>`_ is online at `https://tutorials.bitbucket.org <https://tutorials.bitbucket.org>`_)

 (This service is unfortunately a little less advanced than GitHub (`GitHub.io <https://pages.github.com/>`_, `see the doc here <https://help.github.com/categories/github-pages-basics/>`_), but works well anyway.)


.. note:: `lbesson.Bitbucket.org <http://lbesson.Bitbucket.org>`_ ?

   See for example this little page `lbesson.Bitbucket.org/README.html <http://lbesson.bitbucket.org/README.html>`_ whose source is hosted here `Bitbucket.org/lbesson/lbesson.bitbucket.org/src/master/README.html <https://Bitbucket.org/lbesson/lbesson.bitbucket.org/src/master/README.html>`_.

   I mainly use `lbesson.Bitbucket.org`_ for:

   - `squirt <http://lbesson.bitbucket.org/squirt/>`_ a bookmarklet for Firefox, Chrome or Opéra, allowing to read a webpage *super fast* (hey, by the way, it is available on that website also, go on, try by hitting the "q" on your keyboard! *Cool right?*),
   - `StrapDown.js <http://lbesson.bitbucket.org/md/>`_ is a pretty project to quickly and easily write and publish responsive webpages, in `Markdown <https://en.wikipedia.org/wiki/Markdown>`_. Such StrapDown-powered document are *directly* ready to be published *like-this* on any website or server, without any boring compilation step required by you ! (This project currently `is only downloaded about 20 times a month <https://bitbucket.org/lbesson/lbesson.bitbucket.org/downloads/>`_, thanks to the zip archive `StrapDown.js.zip <https://bitbucket.org/lbesson/lbesson.bitbucket.org/downloads/StrapDown.js.zip>`_),
   - My own copies of the (legendary) **2048** game: `lbo.k.vu/2048 <http://lbo.k.vu/2048>`_ (the original one), `lbo.k.vu/2048-agreg <http://lbo.k.vu/2048-agreg>`_ (a version `for mathematicians <http://agreg.org/ResultatsMerite2014.html>`_) or the interesting `lbo.k.vu/2048-AI <http://lbo.k.vu/2048-AI>`_ (available with an `Artificial Intelligence <slidesM1Info13.pdf>`_).
   - and `this homepage that acts as a nice wrapper for my website <http://lbesson.bitbucket.org/index.html?i=no>`_.

   And even if the certificate is not valid, it is perfectly possible to use this feature with `HTTPS <https://en.wikipedia.org/wiki/HTTPS>`_ activated: `https://lbesson.Bitbucket.org/README.html <https://lbesson.bitbucket.org/README.html>`_ (if your browser rattle and displays an error **is perfectly normal!**).
   If you are using a relatively new browser, it may grumble and explain why (you will see that the only reason is that the `SSL certificat <https://en.wikipedia.org/wiki/SSL>`_ for `https://bitbucket.org <https://bitbucket.org>`_ has been signed for only a few sub-domains of the website bitbucket.org, not all of them).
   But in fact the traffic will be well encrypted and secured by the SSL certificate, no worries :)


A French web interface for Bitbucket?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
For a little over a year, it is possible to change the interface of the site in French (and many other languages) in `your personal settings <https://bitbucket.org/account/user/>`_.

.. note:: French translation?

   In March and April 2013, I initiated and for some time I managed the `translation of the site and the service of the English into French <transifex.en.html>`_.
   `I translated almost 90% <https://www.transifex.com/accounts/profile/Naereen/>`_ presque 90% du contenu initial, of the original content, left some small typos, but we did a good job. With few other motivated and myself, French was the first language translated to 100%! (Mid March 2013) I have neither the time nor the desire to take care of it, but `the project continues to be maintained by others <https://www.transifex.com/projects/p/bitbucketorg/#fr/bitbucket-django>`_.


Some "Buttons"?
~~~~~~~~~~~~~~~
As some GitHub fans offer `ghbtns.com/ <http://ghbtns.com/>`_ or `buttons.GitHub.io/ <https://buttons.github.io/>`_, a Bitbucket fan designed `bb-btns.bitbucket.org/ <http://bb-btns.bitbucket.org/>`_.

Here are some examples for `my web-sphinx deposit <https://bitbucket.org/lbesson/web-sphinx>`_:

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block;">
   <iframe src="http://bb-btns.bitbucket.org/bitbucket-btn.html?user=lbesson&repo=web-sphinx&type=watch&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="160" height="40"></iframe>
   <iframe src="http://bb-btns.bitbucket.org/bitbucket-btn.html?user=lbesson&repo=web-sphinx&type=fork&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="150" height="40"></iframe>
   <iframe src="http://bb-btns.bitbucket.org/bitbucket-btn.html?user=lbesson&repo=web-sphinx&type=follow&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="190" height="40"></iframe></p>


The same, but `hosted on lbesson.bitbucket.org/bbbtns/ <https://lbesson.bitbucket.org/bbbtns/>`_ (for my `bin <./bin/>`_ repository):

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block;">
   <iframe src="http://lbesson.bitbucket.org/bbbtns/bitbucket-btn.html?user=lbesson&repo=bin&type=watch&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="160" height="40"></iframe>
   <iframe src="http://lbesson.bitbucket.org/bbbtns/bitbucket-btn.html?user=lbesson&repo=bin&type=fork&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="150" height="40"></iframe>
   <iframe src="http://lbesson.bitbucket.org/bbbtns/bitbucket-btn.html?user=lbesson&repo=bin&type=follow&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="190" height="40"></iframe></p>


The same, but `hosted on my website (./bbbtns/) <./bbbtns/>`_ (for the `lbesson.Bitbucket.org`_ repo):

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block;">
   <iframe src="./bbbtns/btn.html?user=lbesson&repo=lbesson.bitbucket.org&type=watch&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="160" height="40"></iframe>
   <iframe src="./bbbtns/btn.html?user=lbesson&repo=lbesson.bitbucket.org&type=fork&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="150" height="40"></iframe>
   <iframe src="./bbbtns/btn.html?user=lbesson&repo=lbesson.bitbucket.org&type=follow&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="190" height="40"></iframe></p>


-----------------------------------------------------------------------------

One last tip?
^^^^^^^^^^^^^
 As with any technical and powerful software, `git`_ takes time to adapt. Be persistent, it is worth it.

 « *I wish you a very good programming experience, and good luck for your geeky projects!* »


Additional credit
^^^^^^^^^^^^^^^^^
 Thanks to `Vincent Cohen-Addad <http://www.di.ens.fr/~vcohen/>`_ for motivating me to start using `git`_, in Octobre 2012 for `the network programming project for my Computer Science (CS) Master of Science (MPRI, course #1-21) <https://bitbucket.org/lbesson/mpri-bomberman>`_ on which we worked together.

.. (c) Lilian Besson, 2011-2017, https://bitbucket.org/lbesson/web-sphinx/

.. meta::
   :description lang=en: Why and how to use WakaTime to monitor the time you spend on programming
   :description lang=fr: Comment et pourquoi utiliser WakaTime pour surveiller le temps passé à programmer

###########################################################################
 Why and how to use WakaTime to monitor the time you spend on programming?
###########################################################################
.. include:: .special.rst

.. todo:: Conclude translation!

What is this weird idea?
------------------------
 A professional sportive tries to monitor precisely his daily training process, including his food, which muscle she/he is working on etc.

 Well, similarly, developers and programmers might be interested to know on which projects they spend more time, on which files or directories they work on etc.

Why exactly?
------------
 Hum, in fact, the real reason seems to be pure ego: programmers are proud to see how much time they can work on each of their projects.

------------------------------------------------------------------------------

With this in mind, let me present an interesting and peculiar tool that I have been using from a while.

How can we monitor our programming time?
----------------------------------------
The goal of `WakaTime <https://wakatime.com/>`_ is to offer to any developer an easy, (relatively) *"secured"* and centralized way to monitor the time she/he spend on programming, on a daily, weekly or monthly basis.

And they do the job extremely well, because `WakaTime`_ offers two things:

 - `a nice web interface <https://wakatime.com/>`_, well designed (responsive of course), to visualize your activity,
 - and  `a really rich collection <https://wakatime.com/help/getting-started/welcome>`_ of *plug-ins,* you know, these small softwares that you can easily add to `your favorite text editor <sublimetext.en.html>`_.

The concept is quite simple after: your text editor is spying on you and each aspect of your programming activity, to send the data on-line on `Wakatime`_ servers, and then you (and their sys-admins, and NSA of course) can easily read and use your personal data.

------------------------------------------------------------------------------

In my situation
---------------
Installation and use of WakaTime
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
I am using `Sublime Text 3 <sublimetext.en.html>`_ almost exclusively, and from now 1 year and a half.
Without any surprise, the `WakaTime`_ team had written a plug-in for `Sublime Text 3`.

`You can install it with two clicks <https://packagecontrol.io/packages/WakaTime>`_, and the plug-in will integrate nicely in `ST3 <sublimetext.en.html>`_ (discrete, minimal system workload, and it can even stores the data in order to send them later if your computer is temporarily disconnected from Internet etc).


Overview of the stats ?
^^^^^^^^^^^^^^^^^^^^^^^

 During the first 8 days, I was like in a `coding marathon <https://bitbucket.org/lbesson/>`_ to conclude some projects (`StrapDown.js <http://lbesson.bitbucket.org/md/>`_, my `MEC Students Face-Book demo <http://perso.crans.org/besson/MEC_Students/>`_ etc), but still, I was kind of scared to see that I used my text editor for **29 hours in 8 days!**

It is also possible to see:

 - on which project do you spend the most of your time,
 - which file-types are the more used, on a daily basis,
 - and even on which files have you worked one (this last thing can be disabled).

For instance, during my first week of use, the repartition was about: 30% HTML, 29% Python, 15% reStructuredText, 6% Bash, 12% Markdown.

Include a graphic of these stats here, with an iframe?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Below is included that `page https://wakatime.com/@lbesson <https://wakatime.com/@lbesson>`_, with an iframe:

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block; margin:auto">
   <iframe src="http://wakatime.com/@lbesson" allowtransparency="true" frameborder="0" scrolling="0" width="980" height="450"></iframe>
   </p>


.. note:: Before I find anything better...

   I would love to find an easy way to just include the pie chart, and not the entire page.


Sharing stats for a project?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
It is also possible to share the stats of one project, with a dedicated obfuscated link, like `<https://wakatime.com/@lbesson/projects/qdkkfmhcoi>`_ for example (corresponding to `that project <https://bitbucket.org/lbesson/web-sphinx/>`_).

------------------------------------------------------------------------------

Let us finish on a bonus : read your `Wakatime`_ stats from the command line
----------------------------------------------------------------------------

It is easy to install the command line tool `WakaTimeCLI <https://github.com/JoshLankford/WakaTimeCLI/tree/master/src>`_,
with the command ``npm install wakatimecli``.

.. note:: nodejs and npm are needed

    This requires to have already installed `nodejs <https://nodejs.org/>`_ on your machine, and its packet manager `npm <https://www.npmjs.com/>`_.


This tool is based on `the officiel Wakatime API <https://wakatime.com/developers/>`_, and his fairly easy to use.
The first command is `wakatime -help <https://github.com/JoshLankford/WakaTimeCLI/blob/master/src/lib/wakatime.js#L245>`_ which shows the different options that are accepted by the tool: ::

    Please pass an option:
      -? or -help
      -u or -user
      -t or -today
      -y or -yesterday
      -w or -week


The help (``wakatime -help``) is not very clear, but we can guess its use `by directly reading its source-code <https://github.com/JoshLankford/WakaTimeCLI/blob/master/src/lib/wakatime.js#L237>`_.


.. note:: This tool is writing its results with ANSI colors, sweet!

   Yeah, but it is less sweet when we see that the colors 
   are used even if the output is a terminal which does not support them, or if it is a file
   (but `this is not the script's fault <https://github.com/JoshLankford/WakaTimeCLI/blob/master/src/lib/wakatime.js#L10>`_
   but `its a bug in the cli-color npm module <https://www.npmjs.com/package/cli-color#clc-strip-formatedtext>`_ that should have implemented a better detection of the output,
   like `I did for ANSIColors a few years ago <https://bitbucket.org/lbesson/ansi-colors/src/master/ANSIColors.py?fileviewer=file-view-default#ANSIColors.py-286>`)

   As `this message explains it <http://stackoverflow.com/a/6307894>`_, this is NOT the good practice to follow.
   (`I opened an issue about that on the GitHub repo for WakaTimeCLI <https://github.com/JoshLankford/WakaTimeCLI/issues/11>`_)

   But thanks to `this sed command <http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed>`_ (` | sed -r "s:\\x1B\\[[0-9;]*[mK]::g"`) I thought I would be able to include the output of a `wakatime` command in this page.


Then, in order to be able to use the tool, you will need to add `your API Key (available in the settings on Wakatime.com/settings) <https://wakatime.com/settings>`_ : ::

    wakatime -api yourApiKeyHere


For instance, the command `wakatime -w <https://github.com/JoshLankford/WakaTimeCLI/blob/master/src/lib/wakatime.js#L245>`_ gives the total time spent in your text editor(s) during the lat 7 days.


.. runblock:: console

   $ /home/lilian/bin/mywakatime | head -n3

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

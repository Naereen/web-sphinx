.. meta::
   :description lang=en: Why and how to use WakaTime to monitor the time you spend on programming
   :description lang=fr: Comment et pourquoi utiliser WakaTime pour surveiller le temps passé à programmer

#############################################################################
 *Why* and how to use WakaTime to monitor the time you spend on programming?
#############################################################################


What is this weird idea?
------------------------
 A professional sportive tries to monitor precisely his daily training process, including his food, which muscle she/he is working on etc.

 Well, similarly, developers and programmers might be interested to know on which projects they spend more time, on which files or directories they work on etc.

Why exactly?
------------
 Hum… in fact, the real reason seems to be pure ego: programmers are *proud* to see *how much time* they can work on each of their projects.

.. warning:: If you are concerned about your privacy, you should rather use a local-only tool such as the great `ActivityWatch <https://activitywatch.net/>`_, which offers a "watcher" plugin to monitor your editing activity for a few editors, including `VSCode <visualstudiocode.en.html>`_ that I use and advise to use! Your data remains local and no espionage is possible with ActivityWatch.

.. todo:: Try both all the month of April, then remove Wakatime if I'm happy with ActivityWatch?

------------------------------------------------------------------------------

With this in mind, let me present an interesting and peculiar tool that I have been using from a while.

How can we monitor our programming time?
----------------------------------------
The goal of `WakaTime <https://wakatime.com/>`_ is to offer to any developer an easy, (relatively) *"secured"* and centralized way to monitor the time she/he spend on programming, on a daily, weekly or monthly basis.

And they do the job extremely well, because `WakaTime`_ offers three things:

 - `a very nice web interface <https://wakatime.com/>`_, well designed (responsive of course), to visualize your activity,
 - `a really rich collection <https://wakatime.com/help/getting-started/welcome>`_ of *plug-ins,* you know, these small softwares that you can easily add to `your favorite text editor <visualstudiocode.en.html>`_,
 - and `an easy way to embed some charts <https://wakatime.com/share>`_ anywhere on the web.

The concept is quite simple after: your text editor is spying on you and each aspect of your programming activity, to send the data on-line on `WakaTime`_ servers, and then you (and their sys-admins, and the NSA of course) can easily read and use your personal data.
*Scary, right?*

------------------------------------------------------------------------------

In my situation
---------------
Installation and use of WakaTime
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
I was using `Sublime Text 3 <sublimetext.en.html>`_ almost exclusively for about 4 years.
Without any surprise, the `WakaTime`_ team had written a plug-in for `Sublime Text 3`.

`You can install it with two clicks <https://packagecontrol.io/packages/WakaTime>`_, and the plug-in will integrate nicely in `ST3 <sublimetext.en.html>`_ (discrete, minimal system workload, and it can even stores the data in order to send them later if your computer is temporarily disconnected from Internet).

I am now using `Visual Studio Code <visualstudiocode.fr.html>`_, and of course it also has an extension for Wakatime `which can be installed quickly <https://marketplace.visualstudio.com/items?itemName=WakaTime.vscode-wakatime>`_ too.


Overview of the statistics ?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 During the first 8 days (after installing it, in January 2015), I was in a `coding marathon <https://bitbucket.org/lbesson/>`_ to conclude some projects (`StrapDown.js <http://lbesson.bitbucket.io/md/>`_, my `MEC Students Face-Book demo <http://perso.crans.org/besson/MEC_Students/>`_ etc), but still, I was kind of scared to see that I used my text editor for **29 hours in 8 days!**

It is also possible to see:

 - on which *project* do you spend the most of your time,
 - which *file-types* are the more used, on a daily basis,
 - and even on which *files* have you worked one (this last thing can be disabled).


For instance, during my first week of use, the repartition was about: 30% HTML, 29% Python, 15% reStructuredText, 6% Bash, 12% Markdown.

------------------------------------------------------------------------------

Sharing these statistics ?
--------------------------
Coding time over last 30 days
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This first chart shows how much I type every day (it counts most of my emails, programming tasks and more):

.. raw:: html

   <figure><embed width="680" type="image/svg+xml" src="https://wakatime.com/@lbesson/5d1ec603-73b0-44b9-b61e-5eeda2490e51.svg"></embed></figure>


Languages over last 30 days
^^^^^^^^^^^^^^^^^^^^^^^^^^^
You can see that I mainly use `Python <learn-python.en.html>`_ and `Bash <bin.html>`_, `LaTeX <./publis/latex/>`_ and `reStructuredText <demo.html>`_, and Markdown (or HTML when using `StrapDown.js <http://lbesson.bitbucket.io/md/>`_) :

.. raw:: html

   <figure><embed width="680" type="image/svg+xml" src="https://wakatime.com/@lbesson/9f6c0b0b-6806-4afa-9a4e-651ee6201be0.svg"></embed></figure>


And from the beginning of my use of WakaTime:

.. raw:: html

   <figure><embed width="680" type="image/svg+xml" src="https://wakatime.com/@lbesson/648eaa51-38c1-47a9-9ac4-b5c434997f7e.svg"></embed></figure>


Text editors
^^^^^^^^^^^^
WakaTime thinks I only use (and it's almost correct!):
WakaTime detect that I am using the wonderful `Visual Studio Code <visualstudiocode.en.html>`_ for about ~90% of my daily writing/coding/programing, and `Sublime Text <sublimetext.html>`_
and `PyCharm IDE <https://www.jetbrains.com/pycharm/>`_ for the remaining ~10% :

.. raw:: html

   <figure><embed width="480" type="image/svg+xml" src="https://wakatime.com/@lbesson/b6e7a8c3-f9b2-46d0-b265-65adf009d58d.svg"></embed></figure>


.. note::

   WakaTime does not count `GNU Nano <NanoSyntax.html>`_, `GNU Octave GUI <http://www.gnu.org/software/octave/>`_, or `Spyder <https://www.spyder-ide.org/>`_ for Python 2/3.
   However, now `they offer a WakaTime plugin for Bash, Zsh and iTerm (terminal) <https://wakatime.com/help/plugins/terminal>`_!


Sharing stats for a specific project?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
It is also possible to share the stats of one project, with a dedicated obfuscated link, like `<https://wakatime.com/@lbesson/projects/qdkkfmhcoi>`_ for example (corresponding to `that project <https://bitbucket.org/lbesson/web-sphinx/>`_).

Include a graphic of these stats here, with an iframe?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Below is included that `page https://wakatime.com/@lbesson <https://wakatime.com/@lbesson>`_, with an *iframe*:

.. raw:: html

   <p style="text-align:center; margin-left:auto; margin-right:auto; display:block; margin:auto">
   <iframe src="http://wakatime.com/@lbesson" allowtransparency="true" frameborder="0" scrolling="0" width="980" height="450"></iframe>
   </p>


.. note::

   :line:`I would love to find an easy way to just include the pie chart, and not the entire page.`
   :red:`Edit:` On December 19th (2015), I got a personal email from `Alan Hamlet <https://github.com/alanhamlett>`_, CEO and founder of WakaTime, to inform me of the new `charts share <https://wakatime.com/share>`_ feature.
   The charts displayed above are good examples of what brings this very new WakaTime feature (I find it very cool!).


`Overview of my coding time in 2015 <https://wakatime.com/a-look-back-at-2015>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- About 600 hours in 2015 entirely, average for WakaTime users was 269h, median 193h (and max 2342h !).
- Daily average about 2 hours 27 minutes in 2015, average for WakaTime users was 44 min, median 31 min (and max 6 h 25 min !).
- As for languages, I mainly used `Markdown <https://wakatime.com/leaders/markdown>`_ (177 h), `LaTeX <https://wakatime.com/leaders/latex>`_ (160 h), `Python <https://wakatime.com/leaders/python>`_ (151 h) and `reStructuredText <demo.html>`_ (85 h, and `I was usually the first user of reStructuredText in WakaTime's LeaderBoard <https://wakatime.com/leaders/restructuredtext>`_ !); while other languages have less than 5h/year (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `Octave/Matlab <https://wakatime.com/leaders/matlab>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc).
- For more details, `see the screenshots in this folder (2015) <./_images/WakaTime_a_look_back_at_2015/>`_.


`Overview of my coding time in 2017 <https://wakatime.com/a-look-back-at-2017>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Like in 2015, about 600 hours in 2017 entirely (611h), average for WakaTime users was 249h (and max 3468h !).
- Daily average about 2 hours 17 minutes in 2017, average for WakaTime users was 41 min (but the max was 9 h 30 min, this programmer is most surely a crazy dude!).
- I coded entirely under GNU/Linux (I am a big fan of XUbuntu, as always), and about 303h with `Sublime Text <sublimetext.en.html>`_, 282h with `Visual Studio Code <visualstudiocode.en.html>`_ and 45h with PyCharm. GNU Nano, Firefox and Jupyter are not counted (but `uLogMe <https://github.com/Naereen/uLogMe/>`_ tells me I don't spend much time in them anyway).
- Project wise, I coded `266h for this project for my PhD (AlgoBandits) <https://smpybandits.github.io/>`_, `48h pour cet article <https://hal.inria.fr/hal-01629733>`_, `41h for generic stuff about my PhD <https://perso.crans.org/besson/phd/>`_, `38h for my slideshows <https://github.com/Naereen/slides>`_, `20h for this website (and about the same time in GNU Nano) <https://bitbucket.org/lbesson/web-sphinx/>`_, `17h for my scripts and Bash configuration <https://bitbucket.org/lbesson/bin/>`_, `10h for my French cooking blog <https://perso.crans.org/besson/cuisine/>`_, `9h for my notebooks (but it doesn't count the time spent in Jupyter) <https://github.com/Naereen/notebooks>`_, and less than 8h for `all the other <https://bitbucket.org/lbesson/>`_ `projects <https://github.com/Naereen/>`_.
- As for languages, I mainly used `Python <https://wakatime.com/leaders/python>`_ (277 h), `Markdown <https://wakatime.com/leaders/markdown>`_ (107 h), `LaTeX <https://wakatime.com/leaders/latex>`_ (135 h), and `reStructuredText <demo.html>`_ (28 h); while other languages have less than 5h/year (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `Octave/Matlab <https://wakatime.com/leaders/matlab>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc).
- For more details, `see the screenshots in this folder (2017) <./_images/WakaTime_a_look_back_at_2015/>`_.


`Overview of my coding time in 2018 <https://wakatime.com/a-look-back-at-2018>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- A little less than in 2017 I coded about 600 hours in total in 2018 (587h), while the average number for WakaTime users was 320h (it has increased since the first years!).
- A very stable daily average, at 2 hours 18 minutes in 2018, while the average for WakaTime users was 52 minutes (also increased!).
- My most intense day was October 10, 2018, with 10h 50 minutes. I think it was to finish these two articles, `HAL-02049824 <https://hal.inria.fr/hal-02049824>`_ and `HAL-02006825 <https://hal.inria.fr/hal-02006825>`_!
- I coded 100% under GNU/Linux (I'm a XUbuntu fan as always), and 100% with `Visual Studio Code <visualstudiocode.html>`_. GNU Nano, Firefox and Jupyter are not counted (but `uLogMe <https://github.com/Naereen/uLogMe/>`_ tells me that I spend less time there anyway, although I used Jupyter much more in 2018, with these two projects `ParcourSup.py <https://github.com/Naereen/ParcourSup.py/>`_ and `notebooks <https://github.com/Naereen/notebooks/>`_).
- Projects by projects, I coded `171h for this project for my thesis (SMPyBandits) <https://smpybandits.github.io/>`_, `76h for the LaTeX code of this long article <https://hal.inria.fr/hal-01736357>`_, `21h for my slides <https://github.com/Naereen/slides>`_, `10h for this website <https://bitbucket.org/lbesson/web-sphinx/>`_, `15h for my scripts and configuration Bash <https://bitbucket.org/lbesson/bin/>`_, `10h for my cooking blog <https://perso.crans.org/besson/cuisine/>`_.
- Some projects have also kept me very busy: `fontify <https://github.com/Naereen/fontify/>`_ with 21h in March 2018, `ParcourSup.py <https://github.com/Naereen/ParcourSup.py/>`_ with 28h in June and July 2018 (not counting the time in Jupyter), `the treasure hunt for my 25 years <https://github.com/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans/>`_ with 6h in February 2018, etc
- I also write about `16h for my "zero waste" blog <https://github.com/Naereen/Objectif-Zero-Dechet-2018>`_ and `17h for my cooking blog <https://github.com/Naereen/cuisine>`_, about `16h for my CV <https://bitbucket.org/lbesson/cv/>`_ (updated and translated in November 2018) and less than 15h for all `other' projects <https://bitbucket.org/lbesson/>`_ `projects <https://github.com/Naereen/>`_.
- And for the choice of languages, I mainly used `Python <https://wakatime.com/leaders/python>`_ (217 h), `Markdown <https://wakatime.com/leaders/markdown>`_ (115 h), `LaTeX <https://wakatime.com/leaders/latex>`_ (175 h), and `reStructuredText <demo.html>`_ (13 h), Bash (11h), CSS (8h); and all other languages are less than 5h/year away (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `Octave/Matlab <https://wakatime.com/leaders/matlab>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc).


`Overview of my coding time in 2019 <https://wakatime.com/a-look-back-at-2019>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- A lot less than in 2018 I coded about 500 hours in total in 2019 (508h), while the average number for WakaTime users was 289h.
- A very stable daily average, at 2 hours 15 minutes in 2019, while the average for WakaTime users was 47 minutes.
- My most intense day was January 28, 2019, with 8h 58 minutes. I think it was to finish this article, `HAL-02006471 <https://hal.inria.fr/hal-02006471>`_!
- I coded 100% under GNU/Linux (I'm a XUbuntu fan as always), and 100% with `Visual Studio Code <visualstudiocode.html>`_. GNU Nano, Firefox and Jupyter are not counted (but `uLogMe <https://github.com/Naereen/uLogMe/>`_ tells me that I spend less time there anyway, although I used Jupyter much more in 2019, with these two projects `ALGO1-Info1-2019 <https://github.com/Naereen/ALGO1-Info1-2019/>`_ and `notebooks <https://github.com/Naereen/notebooks/>`_).
- Projects by projects, I coded `226h for my PhD thesis <https://github.com/Naereen/phd-thesis/>`_, `63h for this project for my thesis (SMPyBandits) <https://smpybandits.github.io/>`_, `58h for my slides <https://github.com/Naereen/slides>`_.
- And for the choice of languages, I mainly used `LaTeX <https://wakatime.com/leaders/latex>`_ (363 h), `Python <https://wakatime.com/leaders/python>`_ (77 h), `Markdown <https://wakatime.com/leaders/markdown>`_ (29 h); and all other languages are less than 5h/year away (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `Octave/Matlab <https://wakatime.com/leaders/matlab>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc).


`Overview of my coding time in 2020 <https://wakatime.com/a-look-back-at-2020>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Way less than in 2019, I coded about 128 hours in 2020, when the average of all WakaTime users was 313h (increasing).
- I can explain this drop of coding time by a few reasons a) I almost did not write any research articles this year, and I did not have to write my PhD thesis (i spent so much time on it in 2019!) b) I am no longer in active development of any personal programming project (as I was in the last two years with `SMPyBandits <https://smpybandits.github.io/>`_, c) I almost did not have to write any `slides <https://github.com/Naereen/slides>`_ or `notebooks <https://github.com/Naereen/notebooks>`_, d) most of my teaching material was already finished or almost ready, e) I still code, but often I just use GNU Nano in a terminal for quick and small edits, or Python in a Jupyter notebook (and this isn't accounted for by WakaTime), f) for one course (INF1, introduction to programming using Java, at L1 level at University Rennes 1), I had to use Eclipse and didn't think about installing the WakaTime plug-in.
- A daily average significantly reduced since 2019, with 1 hours and 2 minutes in 2020, in comparison to the average of 51 minutes a day for all WakaTime users (oh so I still code more than the average? interesting!).
- My most active day was November 4th 2020, with 5h 30 minutes (and its much less than in the previous years). I am not sure what I was doing exactly that day, but probably for these two projects: `Discord-bot-to-add-spoiler-to-any-code-snippet <https://github.com/Naereen/Discord-bot-to-add-spoiler-to-any-code-snippet/>`_, `Generateur-attestation-de-sortie-automatique-COVID-19-confinement-en-France <https://github.com/Naereen/Generateur-attestation-de-sortie-automatique-COVID-19-confinement-en-France>`_.
- As always, I entirely worked under GNU/Linux (I love XUbuntu as always, even if I installed GNOME 3 on my latest laptop), and 100% with `Visual Studio Code <visualstudiocode.fr.html>`_... as far as WakaTime is aware! But I use GNU Nano, Firefox and Jupyter and they are not accounted for.
- Regarding projects, I used 26h of LaTeX and Java for a course I taught in Autumn 2020 (INF1 at L1 level at University Rennes 1), to write and update practical sessions sheets, project instructions and exam papers. I also worked about 20h for `this map <https://perso.crans.org/besson/ReR-carte/carte.html>`_ (mainly experimenting things), and less than 10 hours in every other projects.
- Regarding the choice of languages, this year I mainly used `Markdown <https://wakatime.com/leaders/markdown>`_ (53 h) even though I'm not sure for what projects, `LaTeX <https://wakatime.com/leaders/latex>`_ (30 h) and both `Java <https://wakatime.com/leaders/java>`_ and `Python <https://wakatime.com/leaders/python>`_ are tight with 13h each (on VSCode, but by counting Eclipse and Jupyter notebooks I must have at least three time more !) ; and all the other languages are about 1-5 hours by year (`Bash <https://wakatime.com/leaders/bash>`_, `OCaml <https://wakatime.com/leaders/ocaml>`_, `JavaScript <https://wakatime.com/leaders/javascript>`_, `HTML <https://wakatime.com/leaders/html>`_ / `CSS <https://wakatime.com/leaders/css>`_ etc). But it's unfair, as I write a lot of one-liner bash script directly in a terminal, as I use GNU Nano for small bash files, Jupyter notebooks for Python and OCaml, etc.


Short overview of my total coding time since 2015
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Apparently, as of October 2018, I accumulated over 2529 hours of coding stats since 3 years and a half (January 2015).
That's a lot. In over 10+3*12=46 months, I lived about 33120 hours, and slept approximately 10000 hours. So 2500 hours of coding is about 7% of my life and about 11% of my awaken life.
I spent 11% of my life coding. That's a lot, I think (it does not count just office hours, but ALL MY LIFE since 3 years). Oh boy.

.. image::  .2529_hours_of_coding_stats_older_since_I_use_WakaTime.png
   :width:  50%
   :align:  center
   :alt:    You have 2,529 hours of coding stats older than the 2 week limit
   :target: https://wakatime.com/@lbesson


Small interlude (from `XKCD.com <https://xkcd.com/>`_)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. image::  .time_tracking_software.png
   :width:  50%
   :align:  center
   :alt:    Time-Tracking Software (https://xkcd.com/1690/)
   :target: https://xkcd.com/1690/

------------------------------------------------------------------------------

Let us finish on a bonus: read your `WakaTime`_ stats from the command line
---------------------------------------------------------------------------

It is easy to install the command line tool `WakaTimeCLI <https://github.com/JoshLankford/WakaTimeCLI/tree/master/src>`_,
with the command ``npm install wakatimecli``.

.. note:: `nodejs`_ and `npm`_ are needed.

    This requires to have already installed `nodejs <https://nodejs.org/>`_ on your machine, and its packet manager `npm <https://www.npmjs.com/>`_.


This tool is based on `the officiel WakaTime API <https://wakatime.com/developers/>`_, and should be easy to use.
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
   like `I did for ANSIColors a few years ago <https://bitbucket.org/lbesson/ansi-colors/src/master/ANSIColors.py?fileviewer=file-view-default#ANSIColors.py-286>`_)

   As `this message explains it <http://stackoverflow.com/a/6307894>`_, this is NOT the good practice to follow.
   (`I opened an issue about that on the GitHub repo for WakaTimeCLI <https://github.com/JoshLankford/WakaTimeCLI/issues/11>`_)

   But thanks to `this sed command <http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed>`_ (` | sed -r "s:\\x1B\\[[0-9;]*[mK]::g"`) I thought I would be able to include the output of a `wakatime` command in this page.


Then, in order to be able to use the tool, you will need to add `your API Key (available in the settings on WakaTime.com/settings) <https://wakatime.com/settings>`_ : ::

    wakatime -api yourApiKeyHere


For instance, the command `wakatime -w <https://github.com/JoshLankford/WakaTimeCLI/blob/master/src/lib/wakatime.js#L245>`_ gives the total time spent in your text editor(s) during the last 7 days.


.. runblock:: console

   $ wakatime -w | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g"

.. warning:: This tool seems broken, `cf this bug (25/01/2021) <https://github.com/JoshLankford/WakaTimeCLI/issues/17>`_.


Another tool to read its WakaTime statistics from the command line: official wakatime Python client
---------------------------------------------------------------------------------------------------

Using `pip install wakatime`, you can install the official CLI client, which is `this project on Pypi <https://pypi.org/project/wakatime/>`_.

.. runblock:: console

   wakatime --today

It does not allow any other visualisation except this `--today`, it's quite disappointing.

.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

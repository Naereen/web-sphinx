.. meta::
   :description lang=en: Self-quantified: a numerical experiment on myself
   :description lang=fr: Le moi quantifié : une expérience numérique sur moi-même

##################################################
 Self-quantified: numerical experiments on myself
##################################################
What does *self-quantified* mean?
---------------------------------
 `This Wikipedia page <https://en.wikipedia.org/wiki/Quantified_Self>`_ explains this better than I could do.


What will I try in this experiment?
-----------------------------------
Ideally, I would try to work on the "self quantified" concept, and follow these steps.

1. Complete list of digital data about myself
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
I will start by making a complete and exhaustive list of digital data about myself.

1.1 Digital data you can have your hands on
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
It should include:

- the data collected by any *websites*, *web services* or online services I have used or still use. It includes sent and received emails (to who? how long are they? do I send more than I receive?), Facebook (messages, posts and notifications), online shops (history of purchase, delay before reception), agenda events (like Google Calendar), gaming history on Steam (what did I play and when, how much did every hour played costed me?), history of videos seen on YouTube, etc. The list is probably too long to be done exhaustively...
- the data collected by my *laptops* (browsing habits, resource usage, printers history, history of active windows and keys frequency, music played, command line and text editors history, git commits, etc),
- and my *phone*: text messages, calls, time spent in each applications, time of first and last activation every day, etc),
- but also my *digital camera* when traveling (how many pictures were taken everyday, when and where?), my 3DS *gaming console* (how long and what did I play everyday?).


1.2 Data collected by tiers
~~~~~~~~~~~~~~~~~~~~~~~~~~~
But also digital data on which you have a less direct access:

- data collected by my *banks*, by the French *health-care*, etc,
- data collected by the *shops* that have client cards (in France),
- flights, train, car pulling *trips history*,
- data collected by my *employee*, my *landlord* etc,
- data collected at home: my daily *electricity* and *water consumption*, the time I spent at home or at the office, etc.

.. warning::

   *That's the scary part*: realize how many companies, apps and services have data about *you*.
    And freak out about the fact that almost none of them don't allow you to download raw versions or delete your data -- and that most of them don't even allow you *see* your data!


1.3 Self-logging outside of the digital world
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
And there is all other kind of data you could collect on yourself, either by self logging (with an app or a notebook) or a dedicated device (eg, health-monitoring bracelet):

- *food and beverages consumption* (time and content of your meals, water and coffee consumption, number, alcohol/non-alcohol consumption, frequency of meals taken at the office / at home / in a restaurant, number of time I go to a bar, daily weight, etc),
- *sleep* (continuous night or not? dreams or not? mood when waking up, etc), sports (duration, number of calories, etc) and health habits (medicine taken, global health and mood of the day, etc) and biking (distance and time biked every day),
- but also *social habits and statistics* (do you have any idea how many different people did you say "Hi!" to today? how many handshakes or kisses? how many new people you met last month?),
- *traveling habits* (how many time I took the bus, taxi, train, plane every day/week/month, and for how long / how far? how much money did I spend just for traveling? when hitch-hiking, number of cars and waiting time etc)
- *weather* of my city, *temperature* of my room or office, or other external factor that can influence my mood, health or productivity.


2. Download, access or visualize the data... **All the data!**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I should find easy or automatic ways to *download* and *extract* these numerous data.

If it is not possible, find a way to *access* them or *visualize* them, at least.
Most web-sites, for instance, only provide a web-page to see your data (or PDF document), but not an easy way to download them.
With the good authentication, a script can download the raw web-page or PDF and extract the data!

Some service provides API that should be very easy to use.


3. Convert the data to a unified format
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Write some scripts to *convert* the data into a common format, or an easily read format, in a local database (JSON ? SQLite ?).

This will most probably need to hand-write one script for every different origin (to parse a web-page or a PDF, to connect to an API, etc).
The scripts should try to be as simple as possible, in Python and GNU Bash.

Additionally, the scripts should *process* the data, and compute statistics about them.


4. User interface to browse the data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Then I should build a nice web-based interface to *visualize*, *interact* and *play* with all the different data in a unified tool.

It has to be web-based because 2016, but it could be ugly, I don't care.
Most of the tools I have used are quite nicely designed, but the important part is to deliver the data, not to be sexy.

It should also be a framework with which you can play, most probably with Python, to be able to easily ask more sophisticated questions and build more tools easily.

It should be easy to add the support of one more web-service (data collection side), and one more statistics or answers taken from the data: everything has to be modular!


5. Questions I would like to be able to answer...
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The goal should be to have daily statistics on all the data, answering some questions I have about my numerical self and myself:

- Who are the people I interact the more with (by email, Facebook, phone and SMS). Are they close friends or colleagues? Do I see them more than I reach them electronically? Is there a link between the geographic distance between a friend and the intensity of our electronic communications? Cluster my friends by origins, to see which groups do I interact the more with?
- How much time do I spend working and preparing for my teaching activities, *exactly* ? It would allow me to have a precise measure of my hour wage, averaged between the time actually spent in front of my class (when you are paid for it) and the time preparing, reading, printing etc for your class (when you are not paid for it).
- How many documents do I print every week? (cf. `my Munin plugin for this question <https://GitHub.com/Naereen/My-Munin-plugins/tree/master/nb_printed_documents.sh>`_) How long do I spend reading articles and other PDF documents? How much time do I *really* need to read a 6-page long scientific article?
- How much time do I spend browsing *useless* vs *work-related* vs *coding-related* websites?


The statistics should also allow me to answer some **questions on causality**:

- When do I sleep better and why? Which factor has the strongest influence on my health and my sleep: food and drinks, weather, sports, time spent on the computer?
- When am I the more productive at work? When I come early or late? During morning or afternoons? Is coffee helping to be productive? Do I actually gain time and productivity by taking small breaks on `fun <http://questionablecontent.net/>`_ and `useless <http://lesjoiesducode.fr/>`_ websites? (*note:* I first should define "productive" more formally than just number of keyboard hits or ratio of "work-related" computer activity)
- Am I *really* in a better health if I take and ride my bike everyday ? Same question for coffee, etc.
- What happens if I skip breakfast? Or if I stop coffee or if I completely stop eating outside meals?
- Am I more productive (and a better teacher or researcher) during the week if I don't work at all, or if I travel, during the week-end?


Some questions on **performance**:

- Do I type faster on this or that laptop (which one has the fastest keyboard)? Do I type faster in French or in English (or no difference)? Am I faster when writing prose than code (should be the case...).
- Which language am I using the more (i.e., scripts written in such language are used more) and which one do I edit/produce/use the more ? (cf. `my WakaTime profile <https://WakaTime.com/@lbesson>`_) Am I too slow when working on one language or tool?
- Does bad weather influences the time I have to ride my bike to go to work? My health, my mood or my productivity?
- And the most important of all: am I completely wasting my time when working on these questions of self quantified? ... I hope not, but I think so.


Some other questions include:

- How many people do I meet every year but that I never contact again? How many friends am I really still in touch with?
- Am I spending too much money on some aspect of my life, without knowing it?
- If I had tags to my music mp3 collections, and I log every song I listen to, could I use this to display and find out who are really my favorite artists, and sort the genres and kind of music by frequency of listening.


.. note:: And you, do you have any such question on your digital self and on yourself? `Tell me about it! <callme.en.html>`_


6. Summary goal
~~~~~~~~~~~~~~~

Ideally, I would like one unique application/script/program, running *locally* on my laptop, that I could run manually (every week or so).
It should download everything (maybe asking passwords or reading them from a secure database), extract all the data and convert it, and backup it to an external disk.
Then it should display a nice web-based UI, showing awesome charts, plots and statistics about **everything of my life**.


7. And... publish all this open-source!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

And of course, do all this with open-source tools, and when my tool(s) will be done, publish them (under `the MIT License <https://lbesson.mit-license.org/>`_).
Then, I should write a more detailed article blog about it (rST → HTML, like this page); and maybe a "research" article (LaTeX → PDF) ?


.. warning::

   Concretely, I still did not have the time to work on all these points...

------------------------------------------------------------------------------

So... what did I do so far?
---------------------------

I have been using some self-quantifying tools for quite some time, to collect and visualize some data on myself:

- `Munin <http://munin-monitoring.org/>`_ runs locally on my laptops since March 2013. It is a resource monitoring tool, to analyze resource trends (CPU, memory, uptime, etc), and display them nicely in a local web interface. I use it to have an idea of the frequency and intensity of daily use of my laptops. I recently started to write some plugins for Munin, to monitor some additional stats (eg, number of graphical windows or documents printed every day), see `"My-Munin-plugins" on GitHub <https://github.com/Naereen/My-Munin-plugins>`_.
- `Mind the Time <https://addons.mozilla.org/en-us/firefox/addon/mind-the-time/>`_ is a `Firefox extension <firefox-extensions.en.html>`_ which allows you to precisely monitor the time you spend on the web, each day, week and month, website by website. I have used it from the October 2014, and I check the data about once a week to have an idea of the websites I visited during the week (which one did I spend more time in?).
- (*not anymore*) I used a little `selfspy <https://github.com/gurgeh/selfspy>`_, it is a Python program that runs in the background (on Ubuntu). And I even wrote a simple HTML-based UI, generated with a Python script (cf. `selfspy-vis <http://github.com/Naereen/selfspy-vis>`_). I stopped using it because the data collection was too CPU consuming, and the visualization was very CPU intensive.
- `Super Backup <https://play.google.com/store/apps/details?id=com.idea.backup.smscontacts>`_ is a small (and free) `Android app <apk.en.html>`_ to regularly backup my text messages, phone call history etc. The data are XML files, should be easy to use in a script.
- Zeitgeist on Ubuntu is the complete history of open/edited/modified files (never erased), and it's browsable with `gnome-activity-journal <https://apps.ubuntu.com/cat/applications/gnome-activity-journal/>`_.
- `uLogMe <https://github.com/Naereen/uLogMe>`_ is an open-source tool that constantly collect the title of my active window and the frequency of my keyboard activity, and then displays the data nicely in a web-based UI. I have been contributing on `my fork <https://github.com/Naereen/uLogMe>`_ actively in October 2016, to improve it and adapt it to my preferences.


I wrote a few blog articles (on this website) about some data and statistics:

- `<wakatime.en.html>`_ analyzes the statistics of `WakaTime <https://wakatime.com/>`_, a tool to analyze my daily use of my text editor (`Sublime Text 3 <sublimetext.en.html>`_) and command line environment (terminal). `Here is my public WakaTime profile <https://wakatime.com/@lbesson>`_!
- `<stats-google-analytics.en.html>`_ analyzes the statistics coming from the visitors of my website(s), collected with `Google Analytics <https://analytics.google.com>`_, from February 2013.


I also wrote some small tools:

- A minimalist dashboard, generated every hour (with cron), with this bash script `GenerateStatsMarkdown.sh <https://bitbucket.org/lbesson/bin/src/master/GenerateStatsMarkdown.sh>`_, displays basic stats about my laptop, and links to other stats and dashboard sites. Minimalist UI: simple Markdown file, powered by `StrapDown.js <http://lbesson.bitbucket.io/md/>`_.
- See `my fork of uLogMe on GitHub <https://github.com/Naereen/uLogMe>`_.
- See `my own Munin plugins on GitHub <https://github.com/Naereen/My-Munin-plugins>`_.


------------------------------------------------------------------------------

References
----------
- Not yet.

.. seealso:: Article par `Stephen Wolfram <http://blog.stephenwolfram.com/>`_

   This `blog post by Stephen Wolfram <http://blog.stephenwolfram.com/2012/03/the-personal-analytics-of-my-life/>`_ (March 2012)
   was the original inspiration for this idea.

.. seealso:: Article par `Andrej Karpathy <https://karpathy.github.io/>`_

   This `blog post by Stephen Wolfram <https://karpathy.github.io/2014/08/03/quantifying-productivity/>`_ (September 2014)
   presents the summary of 3 months of use of `uLogMe <https://github.com/Naereen/uLogMe/>`_.

.. seealso:: `This git repository <https://bitbucket.org/lbesson/self-quantified>`_, almost empty (and private) for now.

.. todo:: Finish this article on self-quantified.

.. (c) Lilian Besson, 2016, https://bitbucket.org/lbesson/self-quantified/

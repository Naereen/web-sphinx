.. meta::
   :description lang=en: Short Data Analysis of 2 Years of SMS (2016 & 2017)
   :description lang=fr: Quelques analyses statistiques de 2 ans de SMS (2016 & 2017)

#####################################################
 Short Data Analysis of 2 Years of SMS (2016 & 2017)
#####################################################

In January 2018, I decided to `finally <self-quantified.en.html>`_ do some data analysis for my text messages.
Using `this (free) application on my Android phone <https://play.google.com/store/apps/details?id=com.idea.backup.smscontacts>`_, I backed up two years of SMS (2016 and 2017, exactly 666 days to be precise), as a single big ``.xml`` file (not so big, 4.3 MB).

I then used `Python <https://www.python.org/>`_ (with `this module to read XML <https://docs.python.org/3/library/xml.etree.elementtree.html>`_ and `the pandas library <https://pandas.pydata.org/>`_) to extract and perform some analysis on that data.
As I did my best in preserving the privacy of this data, so `you can read here the notebook <publis/notebooks/private/SMS.html>`_.

Here are some statistics and information…

Messages by month
~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/messages_by_month.png
    :width: 65%
    :align: center
    :alt: I text more in September, December and January
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    I text more in September, December and January.

Messages by hours
~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/messages_by_hour.png
    :width: 65%
    :align: center
    :alt: I text more around 7 PM and in the evening in general
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    I text more around 7 PM and in the evening in general.

Messages by weekday
~~~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/messages_by_weekday_2.png
    :width: 65%
    :align: center
    :alt: I text less in the beginning of the week and (way) more during the weekend
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    I text less in the beginning of the week and (way) more during the weekend.


------------------------------------------------------------------------------

Petit interlude (de `XKCD.com <https://xkcd.com/>`_)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. image::  https://imgs.xkcd.com/comics/who_sends_the_first_text.png
   :width:  50%
   :align:  center
   :alt:    Who Sends the First Text? (https://xkcd.com/2065/)
   :target: https://xkcd.com/2065/ https://xkcd.com/2065/

------------------------------------------------------------------------------

Sizes of messages
~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/size_of_sms_sent_vs_received.png
    :width: 65%
    :align: center
    :alt: I write (slightly) more than the people who reply or contact to me. Most the my messages fit in 2 SMS at most
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    I write (slightly) more than the people who reply or contact to me. Most the my messages fit in 2 SMS at most.

Messages during the week vs the weekend
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/week_vs_weekend.png
    :width: 65%
    :align: center
    :alt: Proportionally, I text more in 2 days of weekend than 5 days of the week !
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    Proportionally, I text more in 2 days of weekend than 5 days of the week !


.. (c) Lilian Besson, 2011-2020, https://bitbucket.org/lbesson/web-sphinx/

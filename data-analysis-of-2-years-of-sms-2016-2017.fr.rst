.. meta::
   :description lang=en: Short Data Analysis of 2 Years of SMS (2016 & 2017)
   :description lang=fr: Quelques analyses statistiques de 2 ans de SMS (2016 & 2017)

##############################################################
 Quelques analyses statistiques de 2 ans de SMS (2016 & 2017)
##############################################################

En janvier 2018, j'ai `enfin <self-quantified.fr.html>`_ pu faire quelques analyses statistiques sur mon historique de textos.
Avec `cette application (gratuite) sur mon téléphone Android <https://play.google.com/store/apps/details?id=com.idea.backup.smscontacts>`_, j'ai archivé deux ans de textos (SMS écrits et reçus en 2016 et 2017, exactement 666 jours de textos pour être précis), comme un seul gros fichier ``.xml`` (pas si gros, 4.3 Mo).

J'ai ensuite utilisé `Python <https://www.python.org/>`_ (avec `ce module pour lire le XML <https://docs.python.org/3/library/xml.etree.elementtree.html>`_ et `la bibliothèque pandas <https://pandas.pydata.org/>`_) pour extraire et analyser ces données.
Comme j'ai fait de mon mieux pour préserver la confidentialité de ces données durant l'analyse, `vous pouvez consulter le notebook ici <publis/notebooks/private/SMS.html>`_ (en anglais).

Voici un rapide résumé de ce que j'ai découvert…

Messages par mois
~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/messages_by_month.png
    :width: 50%
    :align: center
    :alt: J'envoie plus de textos en septembre, décembre et janvier.
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    J'envoie plus de textos en septembre, décembre et janvier.

Messages par heures
~~~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/messages_by_hour.png
    :width: 50%
    :align: center
    :alt: J'envoie plus de textos vers 19h et le soir en général.
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    J'envoie plus de textos vers 19h et le soir en général.

Messages par jour dans la semaine
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/messages_by_weekday_2.png
    :width: 50%
    :align: center
    :alt: J'envoie moins de textos en début de semaine et (beaucoup) plus pendant le week-end.
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    J'envoie moins de textos en début de semaine et (beaucoup) plus pendant le week-end.

Taille des messages
~~~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/size_of_sms_sent_vs_received.png
    :width: 50%
    :align: center
    :alt: J'écris (légèrement) plus que les personnes qui me répondent ou me contactent, la plupart de mes messages tiennt dans moins de 2 SMS.
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    J'écris (légèrement) plus que les personnes qui me répondent ou me contactent, la plupart de mes messages tiennt dans moins de 2 SMS.

Messages dans la semaine ou le weekend
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: _images/Data_Analysis_of_SMS_2016_2018/week_vs_weekend.png
    :width: 50%
    :align: center
    :alt: Proportionnellement, j'envoie plus de textos en 2 jours de week-end que 5 jours de la semaine.
    :target: _images/Data_Analysis_of_SMS_2016_2018/

    Proportionnellement, j'envoie plus de textos en 2 jours de week-end que 5 jours de la semaine.


.. (c) Lilian Besson, 2011-2018, https://bitbucket.org/lbesson/web-sphinx/

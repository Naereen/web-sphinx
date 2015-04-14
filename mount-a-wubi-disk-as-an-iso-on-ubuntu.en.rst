.. meta::
   :description lang=en: How to mount an Wubi .disk file as an ISO on Ubuntu?
   :description lang=fr: Comment monter un fichier Wubi .disk comme une image ISO sur Ubuntu ?

##################################
 How to mount an Wubi .disk file as an ISO on Ubuntu?
##################################
.. include:: .special.rst

.. note:: Wubi?

   Wubi is my favorite way to install (and use) Ubuntu on a Windows® machine.
   Please refer to these pages for more information:

    - my tutorial for Wubi, `here on that website <install-wubi.en.html>`_ (and `the slides are there <publis/wubi/>`_),
    - that official website,
    - that French page (`<http://doc.ubuntu-fr.org/wubi>`_), or that one in English.

------------------------------------------------------------------------------

How to mount a `.disk` file on Ubuntu?
--------------------------------------
.. warning:: These explanations require that you `have sudo right <help.ubuntu.com/community/RootSudo>`_ on your machine.


1. Create a directory to serve as the mount location: ::

    sudo mkdir /media/mydisk


2. Mount the ISO in the target directory (of your choice): ::

    sudo mount -o loop /host/ubuntu/mydisks/root.disk /media/mydisk


3. Unmount the ISO: ::

    sudo umount /media/mydisk


.. note:: The main reference seems to be  `this page on askubuntu.com <http://askubuntu.com/a/193632>`_.


If this fails, you can try to:

1. Install `FuriusIsoMount <https://launchpad.net/furiusisomount>`_ on your Ubuntu,
2. Read `that question on AskUbuntu.com (askubuntu.com/q/164227) <http://askubuntu.com/questions/164227/how-to-mount-an-iso-file>`_ for more details.

------------------------------------------------------------------------------

.. todo:: Conclude that page, translate it to French.
.. todo:: Write the tutorial I give a link to.

.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

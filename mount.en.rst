.. meta::
   :description lang=en: How to mount a Wubi .disk file as an ISO on Ubuntu?
   :description lang=fr: Comment monter un fichier Wubi .disk comme une image ISO sur Ubuntu ?

#####################################################
 How to mount a Wubi .disk file as an ISO on Ubuntu?
#####################################################
.. include:: .special.rst
.. note:: Wubi?

   Wubi was my favorite way to install (and use) `Ubuntu <http://www.ubuntu.com/>`_ on a Windows® machine.
   Please refer to these pages for more information:

    - that official website (dead, wubi is not supported *anymore*),
    - that French page (`<http://doc.ubuntu-fr.org/wubi>`_), or the one you are currently reading in English.

------------------------------------------------------------------------------

How to mount a ``.disk`` file on Ubuntu?
----------------------------------------
1. Create a **new** directory to serve as the mount location: ::

    sudo mkdir /media/mydisk
    # On Ubuntu from 12.04, /media/USER/mydisk with your username ($USER)


2. Mount the ``.disk`` file (which is like an ISO disk image)
   in the target directory (``/media/mydisk``, or the one of your choice, created in 1.): ::

    sudo mount -o loop /host/ubuntu/mydisks/root.disk /media/mydisk
    # Maybe adapt this path to the correct destination of the rook.disk file


3. When you are done working with the mounted disk, do not forget to unmount it
   (always unmount it!): ::

    sudo umount /media/mydisk


.. warning:: Sudo rights?

   These explanations require that you `have sudo right <http://help.ubuntu.com/community/RootSudo>`_ on your machine.
   The `pmount <https://help.ubuntu.com/community/Mount/USB#Using_pmount>`_ software can be installed to allow non-sudo users to still be able to mount a disk.


.. note:: The main reference seems to be `this page on the official Ubuntu documentation <https://help.ubuntu.com/community/Mount/USB>`_, or `this page on AskUbuntu.com <http://askubuntu.com/a/193632>`_.


If this fails, you can try to:

1. Always try to reboot/logout and try again (« `have you tried to turn it off and on again ? <https://www.youtube.com/watch?v=t2F1rFmyQmY>`_ »),
2. if it keeps failing, you can try to install and use `FuriusIsoMount <https://launchpad.net/furiusisomount>`_ on your Ubuntu,
3. or read `that question on AskUbuntu.com (askubuntu.com/q/164227) <http://askubuntu.com/questions/164227/how-to-mount-an-iso-file>`_ for more details.

------------------------------------------------------------------------------

How to mount an external Hard Drive (NTFS)
------------------------------------------
Something like this: ::

 sudo mount -t ntfs /dev/sdb1 /media/USER/FOLDER

The correct path ``/dev/sdb1`` to use (might be something else) will be given by: ::

 sudo fdisk -l

Finally check that the disk has been well mounted with: ::

 mount  # gives info about mounted disks
 df     # other info


.. note::

   This page is mainly here because I fail to remember these stupid commands...


.. (c) Lilian Besson, 2011-2015, https://bitbucket.org/lbesson/web-sphinx/

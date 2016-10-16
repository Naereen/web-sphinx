.. meta::
   :description lang=en: PGP public key
   :description lang=fr: Clé publique PGP

######################################
 Information on my **PGP** public key
######################################


What is this about?
-------------------
 I could not explain better than our dear *Wikipedia* friend:
 `GPG on Wikipedia <http://on.wikipedia.org/wiki/GPG>`_.
 Another good reference is this `wikibook on GPG <http://en.wikibooks.org/wiki/GPG>`_.

 I suggest you go read these, to learn more on GPG or to refresh your ideas on the subject, before reading more this page.


.. .. note:: I invite you to try this tool: `encrypt.to/0x01AACDB9C108F8A0 <https://encrypt.to/0x01AACDB9C108F8A0>`_ !

Where and when do I use it?
---------------------------
Sign to ensure the origin of a file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
I tried to take the habit of **signing** the important files (binaries, PDF etc) that can be downloaded on this website (and the other websites I use).

This allow any one to be sure that she/he downloaded the correct file:
my signing key is private, so I should (hopefully) be the only one able to produce these digital signatures.

Most of the addresses (``URLs``) of files I give on these web-pages can be appended with
a short ``.asc`` at the end of the address to download the signature:
for instance, `<cv.en.pdf>`_ and `<cv.en.pdf.asc>`_, or for this page:
`<pgp.en.html>`_ has its signature in this file `<pgp.en.html.asc>`_.

More examples
~~~~~~~~~~~~~
For instance, my Bash profile file, `.bashrc <bin/.bashrc>`_, has a signature `.bashrc.asc <bin/.bashrc.asc>`_.

With the `sphinx-doc <http://sphinx-doc.org/>`_ extension ``sphinx.ext.runblock``, it is possible to
include here in this web-page the command that was used to generate this digital signature (and its output):

 .. runblock:: console

    $ LANG=en gpg --detach-sign --armor --quiet -o - /home/lilian/.bashrc


How to use these **.asc** files?
--------------------------------
It is possible to **check** these signatures, with my public key.
And that's the main purpose of the **.asc** files!

First, you have to *import* my public key in your list of trusted keys (trust-ring).

.. image::  .gpgpublickey_80_15.png
   :scale:  120 %
   :align:  right
   :alt:    R4096/C1108F8A0
   :target: Lilian_Besson.asc

In this case, my public key is in this file `<Lilian_Besson.asc>`_, and you need:

 #. **to download it**, as explained in the next paragraph;
 #. and then **check** its *MD5* and *SHA256* checksums, to be sure you downloaded the good file!
    Simply compare the output of the ``md5sum`` and ``sha256sum`` commands to the one bellow.

    From my trust ring:

    .. runblock:: console

       $ LANG=en GPGKEY=`gpg.sh` gpg --export --armor $GPGKEY | md5sum
       $ LANG=en GPGKEY=`gpg.sh` gpg --export --armor $GPGKEY | sha256sum


    And from the file you downloaded `<Lilian_Besson.asc>`_ :

    .. runblock:: console

       $ # Use ./Lilian_Besson.asc to check the file in the current directory
       $ md5sum ~/Lilian_Besson.asc
       $ sha256sum ~/Lilian_Besson.asc


   This step is simply here to check that you downloaded the good public key (the .asc file is its armor-art, *ie.* an ASCII representation of its content).


 #. Then you have to **import it in your trust ring** (locally on your machine) : ::

      gpg --import Lilian_Besson.asc


And now, you can check the signature *file.asc* of any file *file*,
with this simple command: ::

    gpg --verify file.asc file


Example (2)
~~~~~~~~~~~
And so for the `.bashrc`_ file, if you downloaded it and its signature, you just have to do: ::

    gpg --verify .bashrc.asc .bashrc


Then, :blue:`hopefully`, if you downloaded the files, and have imported my public key,
it should give you a message like this one:

.. runblock:: console

   $ LANG=en gpg --verify ~/.bashrc.asc ~/.bashrc


It should work just fine!

..     gpg: Signature made Fri Jul 05 19:46:31 2013 BST using RSA key ID C108F8A0
..     gpg: GOOD signature from "Lilian Besson <lilian.besson[@]crans[.]org>"


My public key
-------------
The **public footprint** of my key is **C108F8A0**.

.. image::  .gpgmypublickey_80_15.png
   :scale:  120 %
   :align:  right
   :alt:    R4096/C1108F8A0
   :target: Lilian_Besson.asc

One simpler way of importing my key is to simply **look for it** directly!
From one of these two servers::

 * ``keyserver.ubuntu.com``;
 * ``pgp.mit.edu``.


A quick look-up on these PGP key server gives:

 * `0x01aacdb9c108f8a0 on keyserver.ubuntu.com <http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x01AACDB9C108F8A0>`_;
 * `0x01aacdb9c108f8a0 on pgp.mit.edu <https://pgp.mit.edu/pks/lookup?search=0x01AACDB9C108F8A0&op=index>`_.


.. (c) Lilian Besson, 2011-2016, https://bitbucket.org/lbesson/web-sphinx/

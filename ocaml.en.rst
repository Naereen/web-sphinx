######################################################################
 An ``OCaml`` toplevel (terminal) embedded online (Simple version)
######################################################################

.. include:: .javascript.en.rst

------------------------------------------------------------------------------

.. seealso:: I recommend the following, more modern and comprehensive tools!

  - `BetterOCaml.ml <https://betterocaml.ml/editor/>`_ is a good little OCaml editor (with the code on the left, the output of its execution on the right), developed by `a CPGE MP* student <https://github.com/jbdo99/>`_ in 2020) ;
  - `TryOCaml.OCamlPro.com <https://try.ocamlpro.com/>`_ is another good environment to use the basic OCaml system online, without installing anything!It's done by OCamlPro and the "official" solution ;
  - `Learn-OCaml <https://ocaml-sf.org/learn-ocaml-public/index.html>`_ is a heavier and more complete environment. Not sure if it works entirely offline.

.. seealso:: Locally use an OCaml editor and interpreter? It is possible on this site! Without having to install anything!

   `BetterOCaml <https://BetterOCaml.ml/>`_ is a simple OCaml console and editor, but one that works online without the need for a server that computes your code behind: everything is interpreted in javascript in your browser!I host a local copy here: `BetterOCaml <publis/BetterOCaml/>`_. It is also on `ocaml.besson.link <http://ocaml.besson.link>`_.

The terminal
------------

.. raw:: html

   <h4>Toplevel OCaml 4.00.1</h4>
   <style type="text/css" media="screen">#toplevel {
        font-family: monospace;
        font-size: 18px;
        position: relative;
        height: 450px;
        width: 90%;
        margin-left: 40px;}</style>
   <script type="text/javascript" src="_static/toplevel.js"></script>
   <div align="center"><div id="toplevel" align="left"></div></div>
   </br><script type="text/javascript">
    window.alert("~~~ The OCaml terminal (4.00.1) is starting to be initialized… ~~~");
    $(document).ready(function() {
      window.alert("~~~ The OCaml terminal (4.00.1) seems to have been correctly initialized! ~~~");
    });
   </script></br></br>


+----------------------------------+
| .. image:: .ocaml-powered.png    |
|    :scale: 130 %                 |
|    :align: right                 |
|    :alt: OCaml powered :)        |
|    :target: http://Caml.Inria.fr |
+----------------------------------+

------------------------------------------------------------------------------

.. seealso::

   Try Ocaml
      The `<try-ocaml.en.html>`_ page embeds the **Try OCaml** toplevel,
      copied from `try.ocamlpro.com <http://try.ocamlpro.com>`_, which has the following advantages over the simple terminal embedded on this page:

       * a few interactive lessons;
       * supports of the "drag and drop" of files;
       * allow to download the historic of the input;
       * and the best of all: it supports the ``Graphics`` module !


An example of OCaml program
---------------------------
 The terminal above should start with the following lines in its textarea buffer :

.. code-block:: ocaml

   let x = 50+10;;
   let y = x * 3;;
   String.make x 'a';;
   sin 1.;;
   let rec fact n = if n = 0 then 1. else float n *. fact (n - 1);;
   fact 20;;
   "abc" < "def";;


About
-----
 Like for the `.special.rst <_sources/.special.txt>`_ file,
 I use the ``.. raw:: html`` Sphinx command to
 **include raw** ``HTML`` code in the web page produced by **Sphinx**.
 :blue:`It's simple, it's clean.`

Hosting
-------
 The **Javascript** scripts used on my web pages are now
 stored on this *git* repository : `lbesson/web-sphinx-scripts
 <https://bitbucket.org/lbesson/web-sphinx-scripts>`_, on **bitbucket.org**.

Copyrights
----------
 * **OCaml** is © and ® Inria;
 * **toplevel.js** is obtained thanks to the **js_of_ocaml** compiler.
     For more information, see `<http://www.ocsigen.org/js_of_ocaml/>`_.

Acknowledgements
----------------
 * Thanks to the authors of **js_of_ocaml** (see `<http://ocsigen.org/js_of_ocaml>`_).

 * Thanks to the authors of **OCaml** (see `<http://OCaml.org/>`_).


.. (c) Lilian Besson, 2011-2021, https://bitbucket.org/lbesson/web-sphinx/

.. meta::
   :description lang=en: Testing the Sphinx-Tabs Sphinx extension
   :description lang=fr: Essai de l'extension Sphinx Sphinx-Tabs

############################################
 Testing the *Sphinx-Tabs* Sphinx extension
############################################

.. include:: .javascript.en.rst

This page tests a `Sphinx extension <https://github.com/djungelorm/sphinx-tabs>`_,
``sphinx-tabs``, to include tabs in a web-page
generated with `Sphinx <http://sphinx-doc.org/>`_.

Details
=======

What are tabs?
See the examples below, and the ones on `the Semantic UI project <https://semantic-ui.com/modules/tab.html#/examples>`_ and its documentation.

How to `install it <https://github.com/djungelorm/sphinx-tabs#installation>`_?
Use `pip <http://pip.pypa.io/>`_ it's easy: ::

    $ pip install sphinx-tabs


How to `use it and configure it <https://github.com/djungelorm/sphinx-tabs#tabs>`_?
To configure it, add this line to your ``conf.py`` file
(see `here for an example my conf.py file <https://bitbucket.org/lbesson/web-sphinx/src/master/conf.py#conf.py-83>`_, as changed in :bbchangeset:`0740414aa24c`):

.. code-block:: python

   extensions.append('sphinx_tabs.tabs')


Then, in a reStructuredText file, include something like this:

.. code-block:: rst

   .. tabs::

      .. tab:: Apples

         Apples are green, or sometimes red.

      .. tab:: Pears

         Pears are green.

      .. tab:: Oranges

         Oranges are orange.


------------------------------------------------------------------------------

Fruits
======

.. tabs::

   .. tab:: Apples

      Apples are green, or sometimes red.

   .. tab:: Pears

      Pears are green.

   .. tab:: Oranges

      Oranges are orange.


Luminaries
==========

.. tabs::

   .. tab:: Sun

      The sun is a star.

   .. tab:: Moon

      The moon is not a star.


Code Tabs
=========

.. tabs::

   .. code-tab:: c

         C Main Function

   .. code-tab:: c++

         C++ Main Function

   .. code-tab:: py

         Python Main Function

   .. code-tab:: java

         Java Main Function

   .. code-tab:: julia

         Julia Main Function

   .. code-tab:: ocaml

         OCaml Main Function

   .. code-tab:: fortran

         Fortran Main Function

.. tabs::

   .. code-tab:: c

         int main(const int argc, const char **argv) {
           return 0;
         }

   .. code-tab:: c++

         int main(const int argc, const char **argv) {
           return 0;
         }

   .. code-tab:: py

         def main():
             return

   .. code-tab:: java

         class Main {
             public static void main(String[] args) {
             }
         }

   .. code-tab:: julia

         function main()
         end

   .. code-tab:: ocaml

         let main () =
            ()
         ;;

   .. code-tab:: fortran

         PROGRAM main
         END PROGRAM main


Group Tabs
==========

.. tabs::

   .. group-tab:: Linux

      Linux Line 1

   .. group-tab:: Mac OSX

      Mac OSX Line 1

   .. group-tab:: Windows

      Windows Line 1

.. tabs::

   .. group-tab:: Linux

      Linux Line 2

   .. group-tab:: Mac OSX

      Mac OSX Line 2

   .. group-tab:: Windows

      Windows Line 2


.. (c) Lilian Besson, 2011-2018, https://bitbucket.org/lbesson/web-sphinx/

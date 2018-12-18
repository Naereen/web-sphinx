.. meta::
   :description lang=fr: Essai de l'extension Sphinx Sphinx-Tabs
   :description lang=en: Testing the Sphinx-Tabs Sphinx extension

###########################################
 Essai de l'extension Sphinx *Sphinx-Tabs*
###########################################

.. include:: .javascript.fr.rst

Cette page montre un exemple de l'utilisation de l'`extension Sphinx <https://github.com/djungelorm/sphinx-tabs>`_,
``sphinx-tabs``, conçue pour inclure facilement des mini onglets dans une page web
générée avec `Sphinx <http://sphinx-doc.org/>`_.

Détails
=======

Des mini onglets ? C'est quoi ?
Regardez les exemples ci-dessous, ainsi que ceux du `projet Semantic UI <https://semantic-ui.com/modules/tab.html#/examples>`_ et sa documentation.

Comme `l'installer <https://github.com/djungelorm/sphinx-tabs#installation>`_?
Avec `pip <http://pip.pypa.io/>`_ c'est facile : ::

    $ pip install sphinx-tabs


Comment s'en servir et `et le configurer <https://github.com/djungelorm/sphinx-tabs#tabs>`_ ?
Pour le configurer, il suffit d'ajouter une ligne à votre fichier de configuration de Sphinx, ``conf.py``
(voir `ici un exemple pour mon fichier conf.py <https://bitbucket.org/lbesson/web-sphinx/src/master/conf.py#conf.py-83>`_, changé par :bbchangeset:`0740414aa24c`) :

.. code-block:: python

   extensions.append('sphinx_tabs.tabs')


Ensuite, dans un fichier reStructuredText, ajoutez quelque chose comme ça :

.. code-block:: rst

   .. tabs::

      .. tab:: Pommes

         Les pommes sont vertes, des fois rouges.

      .. tab:: Poires

         Les poires sont vertes.

      .. tab:: Oranges

         Les oranges sont oranges.


------------------------------------------------------------------------------

Fruits
======

.. tabs::

   .. tab:: Pommes

      Les pommes sont vertes, des fois rouges.

   .. tab:: Poires

      Les poires sont vertes.

   .. tab:: Oranges

      Les oranges sont oranges.    


Lumières
========

.. tabs::

   .. tab:: Soleil

      Le soleil est une étoile.

   .. tab:: Lune

      La Lune n'est pas une étoile.


Onglets de code
===============

.. tabs::

   .. code-tab:: c

         Function "Main" C

   .. code-tab:: c++

         Function "Main" C++

   .. code-tab:: py

         Function "Main" Python

   .. code-tab:: java

         Function "Main" Java

   .. code-tab:: julia

         Function "Main" Julia

   .. code-tab:: ocaml

         Function "Main" OCaml

   .. code-tab:: fortran

         Function "Main" Fortran

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


Onglets groupés
===============

.. tabs::

   .. group-tab:: Linux

      Linux, Ligne 1

   .. group-tab:: Mac OSX

      Mac OSX, Ligne 1

   .. group-tab:: Windows

      Windows, Ligne 1

.. tabs::

   .. group-tab:: Linux

      Linux, Ligne 2

   .. group-tab:: Mac OSX

      Mac OSX, Ligne 2

   .. group-tab:: Windows

      Windows, Ligne 2


.. (c) Lilian Besson, 2011-2018, https://bitbucket.org/lbesson/web-sphinx/

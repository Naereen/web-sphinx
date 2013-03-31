#####################################
 Un **toplevel** ``Octave`` embarqué
#####################################
.. include:: .special.rst

.. warning:: Vrai interface web à Octave

   Malheuresement, le projet WebOctave nécessite de mettre en place
   une base MySQL et utilise du PHP.
   Soit deux points surlesquels je n'ai encore aucune connaissance.
   
   En attendant d'en savoir plus, je suis incapable de finir ça.

------------------------------------------------------------------------------

Le toplevel (1)
---------------
.. raw:: html

   <form method="post" action="http://www.ms.uky.edu/~statweb/cgi-bin/goOctave.cgi" >
   <textarea name="INPUT" rows="6" cols="80">
   gsplot rand(20, 3)
   </textarea><br><input type="SUBMIT" value="Submit to Octave" >
   </form>


Le toplevel (2)
---------------
.. raw:: html

   <form method="post" action="http://www.ms.uky.edu/~statweb/cgi-bin/gomatlab.cgi" >
   <textarea name="INPUT" rows="6" cols="80">
   rand(2)
   </textarea><br><input type="SUBMIT" value="Submit to Octave/Matlab" >
   </form>


------------------------------------------------------------------------------

Copyrights
----------
 * **Octave** est © et ® de la fondation ``GNU``.
 * l'interface web 1 est © et ® uky.edu

.. (c) Lilian Besson, 2011-2013, https://bitbucket.org/lbesson/web-sphinx/
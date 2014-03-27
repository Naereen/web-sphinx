##########################################
 Un genre de tutoriel pour "faire du web"
##########################################

Quelques conseils, et pointeurs pour commencer à faire des pages webs.

Pour HTML & CSS
---------------
 * références absolues pour toutes les normes utilisées sur le web : http://www.w3schools.com/
   avec notamment des références sur CSS (http://www.w3schools.com/cssref/default.asp) et HTML (http://www.w3schools.com/tags/default.asp).

 * validateurs CSS (http://jigsaw.w3.org/css-validator/validator?uri=http%3A%2F%2Fwww.dptinfo.ens-cachan.fr%2F~lbesson%2Fmath.html). Tu pourra utiliser http://jigsaw.w3.org/css-validator/validator?uri=TON_URL pour vérifier si besoin les CSS des pages écrites/produites (en remplaçant TON_URL par ton url).
 * et HTML (http://validator.w3.org/check?uri=http%3a%2f%2fperso.crans.org%2fbesson%2fmath.html - cette page montre des erreurs non encore réglées dans mes pages, par exemple), idem http://validator.w3.org/check?uri=TON_URL.

Pour générer des pages moches à partir d'autres langages
--------------------------------------------------------
HeVeA
^^^^^
 A partir de LaTeX, écrit en OCaml, et par un gars de l'INRIA : http://hevea.inria.fr/
 Un exemple, http://www.dptinfo.ens-cachan.fr/~bdadoun/supply_chains/

 Peut-être une bonne idée, mais ne permet pas d'avoir quelque chose de très jolis.

Markdown
^^^^^^^^
 Petit langage genre Wiki, http://daringfireball.net/projects/markdown/syntax
 Permet ensuite de faire fichier.md -> fichier.html
 Avec : `markdown fichier.md > fichier.html` en Bash.
 Exemple : http://perso.crans.org/~besson/publis/kaggle/

 Assez limité, mais pratique pour faire une page simple rapidement.

 D'autres dans le même genre : moinmoin (wiki), tags (http://txt2tags.org/features.html).

Pour faire un blog
------------------
 * Tumblr,
 * Wordpess,
 * il y en a sûrement d'autres, mais je connais pas.

Pour générer des pages un peu moins moches
------------------------------------------
Moi j'utilise Sphinx (http://sphinx-doc.org) et le langage associé est rST (référence: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html).
rST en tant que tel est un bon langage à balise, mieux que Markdown ou autre.

 - Exemple de source : http://www.dptinfo.ens-cachan.fr/~lbesson/_sources/slides.txt
 - Exemple de rendu simple avec rst2html (même commande que Markdown : rst2html file.txt > file.html) : http://www.dptinfo.ens-cachan.fr/~lbesson/slides.simple.html
 - Exemple de rendu avec Sphinx : http://www.dptinfo.ens-cachan.fr/~lbesson/slides.html

----

Ensuite, quelques autres pointeurs ou conseils,

Apache
------
 Si le serveur web que tu utilisera est sous Apache, tu pourra configurer "facilement" des choses
 comme le type des fichiers (par exemple forcer le type UTF-8 pour des fichiers particulier, genre http://www.dptinfo.ens-cachan.fr/~lbesson/bin/pdflatex qui peut s'afficher mal car le défaut est ISO-8859-1),
 ou l'accès à un sous-dossier par mot de passe (exemple http://www.dptinfo.ens-cachan.fr/~lbesson/cours1m1 ou http://lbesson.qc.to/dl/).
 Référence: http://www.htaccesstools.com/

robots.txt
----------
 Tu peux configurer comment les moteurs de recherches voient ton site via des fichiers "robots.txt" mis aux bons endroits.
 Référence: http://www.robotstxt.org/robotstxt.html

----

Autre outils intéressants :

Google Analytics
----------------
 Permet de faire de l'analyse précise des visites sur ton site, demande par contre de rajouter un peu de code (5 lignes de JavaScript à chaque page).
 Peu éthique, mais très pratique. Moi je m'en sert, et j'utilise les templates de Sphinx pour l'ajouter à chaque page :
 https://bitbucket.org/lbesson/web-sphinx/src/052edcac5f1c4952c88186668c53f7c209d0485c/.templates/layout.html?at=master
 ligne 51 à 95.
 Plus de détails sur GA: http://www.google.com/analytics/

Outils google pour webmasters
-----------------------------
 Gratuit et facile d'utilisation, permet de te prévenir par mail ou texto dès qu'un "soucis" arrive sur une de tes pages.
 En pratique, demande juste de mettre une petite page genre http://www.dptinfo.ens-cachan.fr/~lbesson/googlecdd70f86364dadde.html
 et ensuite il en déduit que tu as accès au domaine/sous domaine/sous pages (en ce qui concerne cet exemple, à tout http://www.dptinfo.ens-cachan.fr/~lbesson/tout_ce_que/tu_veux/y_mettre).
 Référence: https://www.google.com/webmasters/tools/home?hl=fr

scp, ftp, ssh, rsync
--------------------
 Une fois que tu saura sur quel serveur mettre tes pages (probablement eleves.ens.fr),
 tu dois pouvoir t'y connecter :

  - ssh: permet de faire de la maintenance, de supprimer des trucs facilement etc

  - ftp,sftp,et autres: permet de monter le serveur comme une clé usb, pratique si tu veux utiliser un "drag 'n drop" pour copier tes fichiers,

  - scp: comme `cp` en console,

  - rsync: bien mieux, moi j'utilise l'alias CP='/usr/bin/rsync --verbose --times --perms --compress --human-readable --progress --archive', et une variable Sdpt='lbesson@ssh.dptinfo.ens-cachan.fr:~/public_html/' (remplace par exemple par Seleve='theozim@ssh.eleve.ens.fr:~/dossierAdequat/')
    ça permet de faire : CP page*.html dossier/ ${Seleve} : tu n'aura pas plus concis ou plus pratique.
    Et en plus, affiche la durée restante, autorise la reprise sur erreur, compresse, n'envoie que ce qui a changé et plein d'autres trucs cools.

JavaScript ou PHP
-----------------
 Les deux sont très différents. Je ne fais pas de PHP donc je ne peux pas juger.
 Le JS est assez utile, permet de faire des trucs drôles facilement.

 - Exemple, http://questionablecontent.net utilise un petit script pour permettre de passer à la page suivante avec la flèche droite → et page précédente avec ←.
 - Ou http://lbesson.bitbucket.org utilise un script d'une ligne pour pointer vers une autre page.
 - Ou http://www.palaiszelda.com/ utilise un script pour faire une petite fée qui suit ta souris.
 - Et bien sûr, GoogleAnalytics demande de mettre un peu de js dans chaque page.

Quelques derniers conseils
--------------------------
 * éviter de mettre des caractères non ascii dans les noms de fichiers/dossiers.
 * prendre conscience des problèmes d'encodages de caractères tôt (exemple de référence: http://www.siteduzero.com/informatique/tutoriels/dynamisez-vos-sites-web-avec-javascript/resoudre-les-problemes-d-encodage).
 * éviter les majuscules dans les noms de fichiers/dossiers.
 * ne JAMAIS mettre son adresse mail ou son téléphone en clair dans n'importe quel fichier accessible en http,
   le plus simple est de mettre prenom.nom[AT]domain[DOT]fr ou un autre dans le genre,
   le mieux est de générer une image email.png qui montre ton adresse (comme http://www.text2image.com). Problème d'accessibilité pour les aveugles, pas top si tu veux avoir une page vraiment accessible. Et problème pour les gens qui naviguent en console, ou sans image.
 * ne jamais utiliser de contenu que tu n'as pas le droit d'utiliser, ou de distribuer des fichiers sur lesquels tu n'as aucun droit (personne ne respecte ça, et personne te dira rien même si tu utilise ta page perso pour distribuer des films piratés, mais quand même...).
 * être conscient que les moteurs de recherche enregistrent des captures de tes pages, au moins hebdomadairement. Donc une page pourrie que tu as supprimé pour toujours être trouvée dans les résultats de google, et vues par les utilisateurs.
   Morale de l'histoire: faire *vraiment* gaffe à ce que met et ce que tu écrit, une fois que c'est en ligne tu perd tout contrôle dessus.

----

Ce document est rédigé en espérant qu'il soit utile. Et n'est pas à jour.
Et ne le sera pas. En effet : il est **vraiment inutile** !

.. (c) Lilian Besson, 2011-2014, https://bitbucket.org/lbesson/web-sphinx/
/*
 * layout.noty.js: use of jquery.noty.js to enhance layout.html
 * :Copyrights: (C) 2014-2016 Lilian Besson
 * :Licence: GPLv3 (see https://bitbucket.org/lbesson/web-sphinx/)
 */
setTimeout(function(){ NProgress.done(); }, 10000);
// A little foreplay with cookies
  function createCookie(name, value, expires, path, domain) {
    var cookie = name + "=" + escape(value) + ";";

    if (expires) {
      // If it's a date
      if(expires instanceof Date) {
        // If it isn't a valid date
        if (isNaN(expires.getTime()))
         expires = new Date();
      }
      else {
        expires = new Date(new Date().getTime() + parseInt(expires) * 1000 * 60 * 60 * 24);
      };
      cookie += "expires=" + expires.toGMTString() + ";";
    };

    if (path) {
      cookie += "path=" + path + ";";
    };
    if (domain) {
      cookie += "domain=" + domain + ";";
    };

    document.cookie = cookie;
  };

  function setCookie(cname, cvalue, exdays){
    var d = new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
  };

  function getCookie(cname) {
    var regexp = new RegExp("(?:^" + cname + "|;\s*"+ cname + ")=(.*?)(?:;|$)", "g");
    var result = regexp.exec(document.cookie);
    return (result === null) ? "" : result[1];
  };

  function useCookieToChangeStyle(newstyle) {
    console.log("useCookieToChangeStyle(" + newstyle + ")");
    // Set a cookie to know which style to use
    if (getCookie("layoutstyle") == "") {
      createCookie("layoutstyle", "purple", 30);
      console.log("[layoutstyle] You know have a new cookie: " + getCookie("layoutstyle"));
    }
    else {
      var newcolor = ((newstyle != "") ? newstyle : getCookie("layoutstyle"));
      newcolor = (newcolor == "") ? "purple" : newcolor;
      console.log("[layoutstyle] Setting cookie to " + newcolor)
      setCookie("layoutstyle", newcolor, 30);
    }
    changeStyle(getCookie("layoutstyle"));
  };

  useCookieToChangeStyle("");

// $(window).load(function(){
$(document).ready(function(){
 setTimeout(function(){ NProgress.done(); }, 500);

 var isInEnglish = (e == '.en.html');

  // Define message in French, default value (so durty, I am sure there is many better solutions -- but I do not really care!)
  var messages = {
    notify_cookies: "Cette page utilise des <i>cookies</i>.\n<br>En navigant sur ce site, vous acceptez ses conditions d'utilisation.",
    btw_cookies: "<b>Super !</b>\n</br>Au fait, vous pouvez changer la couleur du site en <i>appuyant sur 's'</i> !",
    moreinfo_cookies: "<b>C'est dommage</b>. Peut-être voulez-vous en apprendre plus sur l'utilisation (innocente) que ce site fait des <i>cookies</i> ?\n</br>Vous pouvez consulter cette page <a title=\"Plus d'informations sur les cookies ?\" href=\"http://perso.crans.org/besson/cookies.fr.html\">cookies.html</a>.",
    agree: "D'accord :-)",
    disagree: "Pas d'accord !",
    likepage: "Cette page vous <b>plait-elle</b> ?",
    yesido: "Oui !",
    notreally: "Pas vraiment...",
    ofcourseyoudo: "<b>Cool, j'aime coder :-)</b>\n</br>N'hésitez pas à consulter d'autre pages !",
    changestylebeta: "Quel style voulez-vous utiliser ?\n</br></br>Cette fonctionnalité utilise un <i>cookie</i>. Actuellement : " + getCookie("layoutstyle") + ".\n</br>En apprendre plus sur les <a title=\"Plus d'informations sur les cookies ?\" href=\"http://perso.crans.org/besson/cookies.html\">cookies et leurs utilisation sur ce site</a> ?",
    oupsohsorry: "<b>Oups !</b> Peut-être pouvez vous prendre quelques instants pour signaler un bug ?\n</br>Via <a title=\"bitbucket.org\" href=\"https://bitbucket.org/lbesson/web-sphinx/issues/new\">bitbucket.org/lbesson/web-sphinx/issues/new</a>, <span style=\"color: cyan\">c'est facile et ouvert à tous !</span>",
    happynewyear: "Bonne année à tous !",
    success_happynewyear: "Ho Ho Ho !"
  };
  if (isInEnglish) {
    // Change message in English, default value
    messages = {
      notify_cookies: "This page is using <i>cookies</i>.\n<br> By browsing this site, you are accepting its general conditions of use.",
      btw_cookies: "<b>Great!</b>\n</br>By the way, you can change the color style <i>with the 's' key on your keyboard</i>!",
      moreinfo_cookies: "<b>Oh, I'm sorry</b>. Maybe you would like to learn more about how this website is <i>using cookies</i>?\n</br>You can go read <a title=\"More information about cookies?\" href=\"http://perso.crans.org/besson/cookies.en.html\">cookies.html</a>.",
      agree: "Alright :-)",
      disagree: "What?? No!",
      likepage: "Do you <b>like that page</b>?",
      yesido: "Yes I do!",
      notreally: "Not really...",
      ofcourseyoudo: "<b>Normal, I love coding :-)</b>\n</br>Please, go read more of my pages!",
      changestylebeta: "Which style do you want to use?\n</br></br>This feature uses a <i>cookie</i>. Currently: " + getCookie("layoutstyle") + ".\n</br>Want to learn more about <a title=\"More information about cookies?\" href=\"http://perso.crans.org/besson/cookies.html\">cookies and their use on this website</a>?",
      oupsohsorry: "<b>Oups!!</b> If it's a bug, could you take the time to report it?\n</br>Thanks to <a title=\"bitbucket.org\" href=\"https://bitbucket.org/lbesson/web-sphinx/issues/new\">bitbucket.org/lbesson/web-sphinx/issues/new</a>, <span style=\"color: cyan\">it's easy and open to anyone!</span>",
      happynewyear: "Happy New Year to all!",
      success_happynewyear: "Ho Ho Ho !"
    }
  };

 if (screen.width > 680) {
   // setTimeout(function(){ noty({
   //  text: messages.notify_cookies,
   //  closeWith: ['click'], timeout: 5000,
   //  buttons: [ // this = button element, $noty = $noty element
   //    {addClass: 'btn btn-primary', text: messages.agree, onClick: function($noty) {
   //        $noty.close();
   //        noty({text: messages.btw_cookies,
   //          type: 'success', timeout: 5000});
   //      }},
   //    {addClass: 'btn btn-danger', text: messages.disagree, onClick: function($noty) {
   //        $noty.close();
   //        noty({text: messages.moreinfo_cookies,
   //          type: 'error', layout: 'center', timeout: 20000});
   //      }}]
   //  }) }, 5000);
   // Happy New Year button, just during the holidays
   setTimeout(function(){ noty({
    text: messages.happynewyear,
    closeWith: ['click'], timeout: 5000,
    buttons: [ // this = button element, $noty = $noty element
      {addClass: 'btn btn-primary', text: messages.agree, onClick: function($noty) {
          $noty.close();
          noty({text: messages.success_happynewyear,
            type: 'success', timeout: 5000});
        }},
      {addClass: 'btn btn-danger', text: messages.disagree, onClick: function($noty) {
          $noty.close();
          noty({text: messages.success_happynewyear,
            type: 'success', layout: 'center', timeout: 20000});
        }}]
    }) }, 8000);
   setTimeout(function(){ noty({
    text: messages.likepage, timeout: 5000, closeWith: ['click'],
    buttons: [ // this = button element, $noty = $noty element
      {addClass: 'btn btn-primary', text: messages.yesido, onClick: function($noty) {
          $noty.close();
          noty({text: messages.ofcourseyoudo,
            type: 'success', timeout: 5000});
        }},
      {addClass: 'btn btn-danger', text: messages.notreally, onClick: function($noty) {
          $noty.close();
          noty({text: messages.oupsohsorry,
           type: 'error', layout: 'center', timeout: 20000});
        }}]
    }) }, 120000);
   // Add the "s" command
   Mousetrap.bind(["s", "S"], function() { noty({
    text: messages.changestylebeta,
    timeout: false, closeWith: ['click'], layout: 'center', type: 'info',
    buttons: [ // this = button element, $noty = $noty element // DONE translate these lines
      {addClass: 'btn btn-error btn-sm', text: isInEnglish ?  "<i>Close</i>" : "<i>Fermer</i>", onClick: function($noty) {
          $noty.close();
        }},
      {addClass: 'btn btn-primary btn-sm', text: isInEnglish ?  "<b>Blue!</b>" : "<b>Bleu !</b>", onClick: function($noty) {
          useCookieToChangeStyle("purple");
          $noty.close();
        }},
      {addClass: 'btn btn-success btn-sm', text: isInEnglish ?  "<b>Green!</b>" : "<b>Vert !</b>", onClick: function($noty) {
          useCookieToChangeStyle("green");
          $noty.close();
        }},
      {addClass: 'btn btn-warning btn-sm', text: isInEnglish ?  "<b>Orange!</b>" : "<b>Orange !</b>", onClick: function($noty) {
          useCookieToChangeStyle("orange");
          $noty.close();
        }}
    ]
    }) });
  };
});

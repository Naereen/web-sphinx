/*
 * layout.noty.js: use of jquery.noty.js to enhance layout.html
 * :Copyrights: (C) 2014 Lilian Besson
 * :Licence: GPLv3 (see https://bitbucket.org/lbesson/web-sphinx/)
 */
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

 if (screen.width > 680) {
 // BETA responsive
   setTimeout(function(){ noty({
    text: 'Cette page vous paraît-elle <b>bien</b> écrite ?', timeout: 5000, closeWith: ['click'],
    buttons: [ // this = button element, $noty = $noty element
      {addClass: 'btn btn-primary', text: 'Oui !', onClick: function($noty) {
          $noty.close();
          noty({text: "<b>Normal, je code bien :)</b>"
           + "\n</br>N'hésitez pas à consulter d'autre pages !", type: 'success'});
        }}, 
      {addClass: 'btn btn-danger', text: 'Pas vraiment...', onClick: function($noty) {
          $noty.close();
          noty({text: "<b>Oups !!</b> Peut-être pouvez vous prendre quelques instants pour signaler un bug ? " +
           "\n</br>Via <a title=\"bitbucket.org\" href=\"https://bitbucket.org/lbesson/web-sphinx/issues/new\">bitbucket.org/lbesson/web-sphinx/issues/new</a>, <span style=\"color: blue\">c'est facile !</span>", 
           type: 'error', layout: 'center', timeout: false});
        }}]
    }) }, 3000);
   // Add the "s" command
   Mousetrap.bind(["s", "S"], function() { noty({
    text: ('Quel style voulez-vous utiliser <i>désormais</i> ?</br>'
      + '</br><small>Cette fonctionnalité est toujours en bêta, et utilise un <i>cookie</i>.'
      + ' Actuellement: ' + getCookie("layoutstyle") + '</small>'
    ),
    timeout: 5000, closeWith: ['click'], layout: 'center', type: 'info',
    buttons: [ // this = button element, $noty = $noty element
      {addClass: 'btn btn-warning btn-sm', text: "Fermer", onClick: function($noty) {
          $noty.close();
        }}, 
      {addClass: 'btn btn-primary btn-sm', text: "Violet", onClick: function($noty) {
          useCookieToChangeStyle("purple");
          $noty.close();
        }}, 
      {addClass: 'btn btn-success btn-sm', text: 'Vert !', onClick: function($noty) {
          useCookieToChangeStyle("green");
          $noty.close();
          // $.vein.inject(["div.related"], {"background-color" : "darkgreen"}); // Un peu brutal
        }}, 
      {addClass: 'btn btn-warning btn-sm', text: 'Orange !', onClick: function($noty) {
          useCookieToChangeStyle("orange");
          $noty.close();
          // $.vein.inject(["div.related"], {"background-color" : "orange"}); // Un peu brutal
        }}
    ]
    }) });
  };
});
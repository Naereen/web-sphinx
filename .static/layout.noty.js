/*
 * layout.noty.js: use of jquery.noty.js to enhance layout.html
 * :Copyrights: (C) 2014 Lilian Besson
 * :Licence: GPLv3 (see https://bitbucket.org/lbesson/web-sphinx/)
 */
// $(window).load(function(){
$(document).ready(function(){
 setTimeout(function(){ NProgress.done(); }, 1000);

 if (screen.width > 680) { // BETA responsive
   setTimeout(function(){ noty({
    text: 'Cette page vous paraît-elle <b>bien</b> écrite ?', timeout: false,
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
  };

 // A little foreplay with cookies
  function setCookie(cname, cvalue, exdays){
    var d = new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
  };

  function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++)
    {
    var c = ca[i].trim();
    if (c.indexOf(name)==0) return c.substring(name.length,c.length);
    }
    return "";
  };

  function useCookieToChangeStyle(newstyle) {
    console.log("useCookieToChangeStyle(" + newstyle + ")");
    // Set a cookie to know which style to use
    var newcolor = ((newstyle != "") ? newstyle : ( (getCookie("layoutstyle")!="") ? getCookie("layoutstyle") : "purple"));
    console.log("[layoutstyle] Setting/Creating cookie to " + newcolor)
    setCookie("layoutstyle", newcolor, 30);
    // console.log("[layoutstyle] You know have a new cookie: " + getCookie("layoutstyle"));
    changeStyle(getCookie("layoutstyle"));
  };

  useCookieToChangeStyle("");
 
 // BETA experimentation to dynamically change the color stylesheet.
 if (screen.width > 680) { // BETA responsive
   // Add the "s" command
   Mousetrap.bind(["s", "S"], function() { noty({
    text: 'Quel style voulez-vous utiliser <i>désormais</i> ?</br></br>(Cette fonctionnalité est toujours en bêta, et utilise un <i>cookie</i>)', timeout: false,
    layout: 'center', type: 'info',
    buttons: [ // this = button element, $noty = $noty element
      {addClass: 'btn btn-info', text: "Violet (défaut)", onClick: function($noty) {
          $noty.close();
          useCookieToChangeStyle("purple");
        }}, 
      {addClass: 'btn btn-success', text: 'Vert !', onClick: function($noty) {
          $noty.close();
          useCookieToChangeStyle("green");
          // $.vein.inject(["div.related"], {"background-color" : "darkgreen"}); // Un peu brutal
        }}, 
      {addClass: 'btn btn-warning', text: 'Orange !', onClick: function($noty) {
          $noty.close();
          useCookieToChangeStyle("orange");
          // $.vein.inject(["div.related"], {"background-color" : "orange"}); // Un peu brutal
        }}
    ]
    }) });
  };
});
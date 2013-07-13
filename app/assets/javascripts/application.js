// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jqueryui
//= require_tree .

// Loads all Bootstrap javascripts
//= require bootstrap-transition
//= require bootstrap-carousel


$(document).ready(function() {
  search_wrapper = $('.header-search');
  autocompletar = $('.ui-autocomplete');

  autocompletar.appendTo(search_wrapper);

  // Submenu stuff
  function removeborder() { $('.main-menu').css('border-bottom', '0'); }
  function addborder() { $('.main-menu').css("border-bottom", "10px solid #FF8800"); }

  $('.arbol-productos a').delay(1200).queue(function(next){
    next();
    $(this).hover(removeborder, addborder);
  });
});

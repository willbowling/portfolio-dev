//= require "lib/jquery-1.7.2"
//= require "lib/stylesheetToggle"

$( function() {

  $.stylesheetInit();

  $( '#theme_switcher' ).change( function() {
    var theme = $( this ).find("option:selected").val();
    $.stylesheetSwitch( theme );
  });

});
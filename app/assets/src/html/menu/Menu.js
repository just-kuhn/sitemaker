var main = function() {
  $('#menuToggle').on('click', function(){
        //$('#menuToggle').toggleClass('active');
        //$('body').toggleClass('body-push-toleft');
        $('#theMenu').toggleClass('menu-open');
      });

  $('#downbut').click( function(){ 
    $('html, body').animate({
      scrollTop: $('#welcome').position().top}, 650);
  });
}



$(document).ready(main);
$(document).ready(function () {
  /*
   * Navigation effects
   */
    $( window ).scroll(function() {
      if(window.scrollY > $('section').height()){
        $('nav').addClass('nav_bg');
        $('.centrado').fadeIn(200);
      }
      if(window.scrollY < $('section').height()){
        $('.centrado').hide();
        $('nav').removeClass('nav_bg');
      }
    });
})
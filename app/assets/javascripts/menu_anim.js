$(document).ready(function () {
  /*
   * Navigation effects
   */
    $( window ).scroll(function() {
      if(window.scrollY > $('section').height()){
        $('.nav-home').addClass('nav_bg');
        $('.centrado').fadeIn(200);
      }
      if(window.scrollY < $('section').height()){
        $('.centrado').hide();
        $('.nav-home').removeClass('nav_bg');
      }
    });
})
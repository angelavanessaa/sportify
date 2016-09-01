$(document).ready(function(){
  $(".hamburger-icon-wrapper").click(function() {
    console.log("hit");
    if ($(this).hasClass("isActiveIcon")) {
      $(".slide-in-bar").removeClass("isActiveBar");
      $(this).removeClass("isActiveIcon");
    } else {
      $(this).addClass("isActiveIcon");
      $(".slide-in-bar").addClass("isActiveBar");
    }
  });

});
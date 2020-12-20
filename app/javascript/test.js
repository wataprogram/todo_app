$(function() {
    console.log("test");
});

$(function(){
   $(".menu_btn").click(function(){
      $(".menu").toggle(150, "linear");
   });
});
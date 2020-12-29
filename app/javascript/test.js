$(function() {
    console.log("test");
});

$(function(){
   $(".menu_btn").click(function(){
      $(this).next().toggle(150, "linear");
   });
});
function pageload(){


    
    $(document).ready(function () {
        $('.navbar-light .dmenu').hover(function () {
                $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
            }, function () {
                $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
            });
        });

/////////////////////////////////////

    var slideIndex = 1;       
         
    showDivs(slideIndex);
    
    function plusDivs(n) {
      showDivs(slideIndex += n);
    }
    
    function showDivs(n) {
      var i;
      var x = document.getElementsByClassName("catgroup");
      if (n > x.length) {slideIndex = 1}
      if (n < 1) {slideIndex = x.length}
      for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";  
      }
      x[slideIndex-1].style.display = "block";  
      
    }          
    // Wrap every letter in a span
$('.ml12').each(function(){
$(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
});

anime.timeline({loop: true})
.add({
targets: '.ml12 .letter',
translateX: [40,0],
translateZ: 0,
opacity: [0,1],
easing: "easeOutExpo",
duration: 1200,
delay: function(el, i) {
return 500 + 30 * i;
}
}).add({
targets: '.ml12 .letter',
translateX: [0,-30],
opacity: [1,0],
easing: "easeInExpo",
duration: 1100,
delay: function(el, i) {
return 100 + 30 * i;
}
});

}

window.onload = pageload;
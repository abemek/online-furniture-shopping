function pageload(){

    $(document).ready(function () {
        // document.getElementById("minicart-quantity").innerHTML="${sessionScope.count}";
        $('.navbar-light .dmenu').hover(function () {
            $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
        }, function () {
            $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
        });
    });

    // $('.ml12').each(function(){
    //     $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
    // });

    // anime.timeline({loop: true})
    //     .add({
    //         targets: '.ml12 .letter',
    //         translateX: [40,0],
    //         translateZ: 0,
    //         opacity: [0,1],
    //         easing: "easeOutExpo",
    //         duration: 1200,
    //         delay: function(el, i) {
    //             return 500 + 30 * i;
    //         }
    //     }).add({
    //     targets: '.ml12 .letter',
    //     translateX: [0,-30],
    //     opacity: [1,0],
    //     easing: "easeInExpo",
    //     duration: 1100,
    //     delay: function(el, i) {
    //         return 100 + 30 * i;
    //     }
    // });

}

window.onload = pageload;


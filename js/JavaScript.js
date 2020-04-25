$(document).ready(function() {

    //function pictureLoop() {

    //    setTimeout(function () {
    //        $("#topBanner img:nth-child(4)").delay(3000).fadeOut(2000);
    //    }, 0);

    //    setTimeout(function () {
    //        $("#topBanner img:nth-child(3)").delay(3000).fadeOut(2000);
    //    }, 5000);

    //    setTimeout(function () {
    //        $("#topBanner img:nth-child(2)").delay(3000).fadeOut(2000);
    //    }, 10000);

    //    setTimeout(function () {
    //        $("#topBanner img:nth-child(1)").delay(3000).fadeOut(2000);
    //    }, 15000);

    //}

    //pictureLoop();
    //setInterval(pictureLoop, 20000);

    var iInterval;

    function fadeInImage() {
        var Imgs = $("#topBanner img:first");
        Imgs.remove();
        Imgs.hide();
        $("#topBanner").append(Imgs);
        Imgs.fadeIn(2000)
    };

    iInterval = setInterval(function () {
        fadeInImage();
    }, 12000);
    
});
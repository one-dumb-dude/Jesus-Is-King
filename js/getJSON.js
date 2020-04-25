$(document).ready(function () {

    var bookNameSp = $("#bookName");
    var bookChapterSp = $("#bookChapter");
    var bookVerseSp = $("#bookVerse");
    var bookTextSp = $("#bookText");

    var $loading = $('#loading_gif').hide();
    $(document)
      .ajaxStart(function () {
          $loading.show();
      })
      .ajaxStop(function () {
          $loading.hide();
      });

    $.ajax({
        url: "http://labs.bible.org/api/?passage=votd&type=json&callback=?",
        dataType: 'jsonp',
        success: function (data, textStatus, xhr) {
            console.log(data);

            var bookName = JSON.stringify(data[0].bookname).replace(/\"/g, "");
            var bookChapter = JSON.stringify(data[0].chapter).replace(/\"/g, "");
            var bookVerse = JSON.stringify(data[0].verse).replace(/\"/g, "");
            var bookText = JSON.stringify(data[0].text).replace(/<.+>/g, "");
            
            bookNameSp.text(bookName);
            bookChapterSp.text("Chapter : " + bookChapter);
            bookVerseSp.text("Verse : " + bookVerse);
            bookTextSp.html(bookText);
            console.log(bookText);
        },
        error: function (xhr, textStatus, errorThrown) {
            console.log('Error in Operation');
        }
    });

});
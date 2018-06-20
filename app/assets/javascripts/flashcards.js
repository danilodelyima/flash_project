// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("turbolinks:load", function() {
  $(".flashcard").flip({
    axis: "y",
    trigger: "click"
  });

  $(".flashcard .continue").click(function(){
    $(this).closest('.flashcard').flip('toggle');
  })

  $(".caroussel").slick({
    arrows: false
  });
});

ultimo = false;
function ifCorrect(correct, id) {
  $.ajax({
    type: "POST",
    url: `/flashcards/${id}`,
    data: { _method:'PUT',
             id: id,
             correct: correct
    },
    dataType: 'json',
    success: function(msg) {

      $('.caroussel').on('afterChange', function(e, slick, cur) {
        if (cur === slick.$slides.length - 1) {
          ultimo = true;
        }
      });
      if(ultimo) {
        window.location.href = '/'
      }
      $(".caroussel").slick("slickNext");
    }
  });
}
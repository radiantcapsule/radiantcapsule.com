$(function() {
  $('#contact').click(function(e) {
    $('#info').slideToggle(200);
    e.preventDefault();
    e.stopPropagation();
  });
});

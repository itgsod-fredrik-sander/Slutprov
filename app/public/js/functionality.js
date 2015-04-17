$(document).ready(function() {
    $('#must-list').DataTable();
});

$('#review-toggler').click(function() {
  toggleVisibility($('#new-review'));
  toggleText($(this), 'Hide', 'Write a review!');
});

function toggleVisibility(element) {
  var display = element.css('display');
  var new_state = display == 'block' ? 'none' : 'block';

  element.css('display', new_state);
}

function toggleText(element, original, toggled) {
  var currentText = element.text();
  var new_text = currentText == original ? toggled : original

  element.text(new_text);
}
$(document).ready(function() {
    $('#must-list').DataTable();
});

$('#review-toggler').click(function() {
  toggleVisibility($('#new-review'));
  toggleText($(this), 'Hide', 'Write a review!');
});

// Public: toggleVisibility of element
//
// element - the element to be toggled
//
// Examples
//
//   toggleVisibility($('#map'));
//
// Toggles the visibility of the element

function toggleVisibility(element) {
  var display = element.css('display');
  var new_state = display == 'block' ? 'none' : 'block';

  element.css('display', new_state);
}

// Public: toggleText from element
//
// element - the element that will have it's text toglged
// original - the original text
// toglged - the text to be shown when toggled
//
// Examples
//
//   toggleText($(#input), 'View reviews!', 'Hide reviews');
//
// Toggles the elements text

function toggleText(element, original, toggled) {
  var currentText = element.text();
  var new_text = currentText == original ? toggled : original

  element.text(new_text);
}
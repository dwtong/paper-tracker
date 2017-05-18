function removeSource (element) {
  element.parent().parent().remove();
};

function addSource (element, pageId) {
  $(element).parent().prepend($('#new-paper-source-' + pageId).html());
};

$(document).on('turbolinks:load', function () {

});

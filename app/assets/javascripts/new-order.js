function calculateLeftToAllocate () {
  $('.js-left-to-allocate').each(function () {
    var pageQuantity = parseInt($(this).data('page-quantity'));
    var notebookQuantity = parseInt($('.js-notebook-quantity').val());
    var displayedQuantity = $(this).children('.js-quantity');

    var allocatedQuantities = $(this).siblings('.js-paper-sources').find('.js-allocated-quantity');
    var allocatedQuantity = 0;

    allocatedQuantities.each(function (index) {
      allocatedQuantity += parseInt($(this).val());

      if (index == allocatedQuantities.length - 1) {
        if (!Number.isInteger(allocatedQuantity)) {
          allocatedQuantity = 0;
        }
        var totalQuantity = (notebookQuantity * pageQuantity) - allocatedQuantity;
        if (Number.isInteger(totalQuantity)) {
          displayedQuantity.html(totalQuantity);
        } else {
          displayedQuantity.html('-');
        }
      }
    });
  });
};

function removeSource (element) {
  element.parent().parent().remove();
  calculateLeftToAllocate();
};

function addSource (element, pageId) {
  $(element).parent().prepend($('#new-paper-source-' + pageId).html());
};

$(document).on('turbolinks:load', function () {
  $('.js-choose-customer').on('change', function () {
    window.location = '/customers/' + $(this).val() + '/collections/new';
  });
});

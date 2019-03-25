$(document).ready(function () {
  $('.form-group').on('submit',function (e) {
    e.preventDefault();
    $.ajax({
      url: $(this).attr('action'),
      type: "POST",
      data: $(this).serialize(),
      dataType: "json",
      success: function (data) {
        window.location.replace(data['id']);
      },
      error: function (data) {
        $.each(data.responseJSON['errors'],function(k,v) {
          $(`[name*='${k}']`).addClass('is-invalid').siblings('.invalid-feedback').html(`${k} ${v[0]}`)
        })
      }
    });
    return false;
  })
});
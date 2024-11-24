$(document).ready(function () {
  $(".remove_button").on("click", function () {
    $(this).parent(".custom_remove").remove();
  });
});

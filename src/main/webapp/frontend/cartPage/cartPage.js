$(document).ready(function () {
  $(".remove_button").on("click", function () {
    $(this).closest(".custom_remove").remove();
  });
});

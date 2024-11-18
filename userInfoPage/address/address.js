$(document).ready(function () {
  $(".custom_delete_address").on("click", function () {
    $(this).closest(".address__info").remove();
  });
  $(".custom_default").on("click", function () {
    $(".address__info").css("border", "2px solid white");
    $(this).closest(".address__info").css("border", "2px solid black");
  });
});


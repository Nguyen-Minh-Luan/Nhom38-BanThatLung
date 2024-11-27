$(document).ready(function () {
  $("#menuButton").on("click", function () {
    $("#dimmer").toggleClass("active");
    $("#overlay").toggleClass("active");
  });

  $(document).on("click", function (event) {
    if (!$(event.target).closest("#overlay, #menuButton").length) {
      $("#overlay").removeClass("active");
      $("#dimmer").removeClass("active");
    }
  });
  $("#closeButton").click(function () {
    $("#overlay").removeClass("active");
    $("#dimmer").removeClass("active");
  });
  $(".custom_favorite_click").on("click", function (event) {
    console.log(1)
    let currentFill = $(this).attr("fill");
    let newFill = currentFill === "#000000" ? "#FF0000" : "#000000";
    $(this).attr("fill", newFill);
  });
});

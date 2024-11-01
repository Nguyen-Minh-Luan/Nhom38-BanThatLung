$(document).ready(function () {
  $("#menuButton").on("click", function () {
    $("#overlay").toggleClass("active");
    $("#dimmer").toggleClass("active");
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
});

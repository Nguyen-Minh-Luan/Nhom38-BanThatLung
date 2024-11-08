$(document).ready(function () {
  $("#menuButton").on("click", function () {
    $("#dimmer").toggleClass("active");
    $("#overlay").toggleClass("active");
    console.log("Dimmer class after toggle:", $("#dimmer").attr("class"));
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

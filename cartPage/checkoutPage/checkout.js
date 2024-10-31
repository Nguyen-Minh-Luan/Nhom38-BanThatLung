$(document).ready(function () {
  $(".cart__container--coupon").click(function () {
    $(this).next(".cart__container_coupon--submit").slideToggle();
  });
  $("#openFormButton").click(function () {
    $("#popupForm").fadeIn(); // Show the popup
  });

  $("#closeFormButton").click(function () {
    $("#popupForm").fadeOut(); // Hide the popup
  });

  $("#submitButton").click(function () {
    const newText = $("#newText").val();
    if (newText) {
      $("#displayText").text(newText); // Update the text
      $("#popupForm").fadeOut(); // Hide the popup
      $("#newText").val(""); // Clear input field
    } else {
      alert("Please enter some text"); // Alert if input is empty
    }
  });

  // Close the popup if the user clicks outside of it
  $(window).click(function (event) {
    if ($(event.target).is("#popupForm")) {
      $("#popupForm").fadeOut();
    }
  });
});

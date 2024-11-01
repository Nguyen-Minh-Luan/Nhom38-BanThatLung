$(document).ready(function () {
  const popUpUpdateInfo = () =>
    function () {
      const name__field1 = $(this)
        .closest(".popup--content--userInfo--action")
        .find(".name__field1")
        .text();
      const address__field1 = $(this)
        .closest(".popup--content--userInfo--action")
        .find(".address__field1")
        .text();
      const city__field1 = $(this)
        .closest(".popup--content--userInfo--action")
        .find(".city__field1")
        .text();
      const number__field1 = $(this)
        .closest(".popup--content--userInfo--action")
        .find(".number__field1")
        .text();

      console.log(name__field1, address__field1, city__field1, number__field1);

      if (name__field1 && address__field1 && city__field1 && number__field1) {
        $(".userInfo__name").text(name__field1);
        $(".userInfo__number").text(number__field1);
        $(".userInfo__address").text(city__field1 + ", " + address__field1);

        $("#popupForm").fadeOut();
      } else {
        alert("Please complete all fields.");
      }
    };
  const showApplyCoupon = () =>
    function () {
      $(this).next(".cart__container_coupon--submit").slideToggle();
    };
  const showPopUp = () =>
    function () {
      $("#popupForm").fadeIn();
    };
  const showPopUpPay = () =>
    function () {
      $("#popUpPayment").fadeIn();
    };
  const closePopUp = () =>
    function () {
      $("#popupForm").fadeOut();
    };
  const closePopUpPay = () => {
    $("#popUpPayment").fadeOut();
  };

  const handleChoosePayment = () => {
    return function () {
      const paymentMethod = $(this)
        .closest(".popup--content--userInfo--action")
        .find(".paymentMethod")
        .text();
      if (paymentMethod == "Google Pay") {
        $("#popUpPayment").fadeOut();
      } else if (paymentMethod == "Bank") {
        $(".img__paymentMethod").attr(
          "src",
          "../../assets/icons/footer_trustbadge 1.svg"
        );
        $(".btn-dark").text("Pay with Bank");
        $("#popUpPayment").fadeOut();
      }
    };
  };
  const handlePayment = () =>
    function () {
      if ($(".btn-dark").text() == "Pay with Bank") {
        $("#popUpPaymentQR").fadeIn();
        handleCountDown();
      }
    };
  const handleCountDown = () => {
    let timeLeft = 300;

    function formatTime(seconds) {
      const minutes = Math.floor(seconds / 60);
      const secondsLeft = seconds % 60;
      return (
        (minutes < 10 ? "0" : "") +
        minutes +
        ":" +
        (secondsLeft < 10 ? "0" : "") +
        secondsLeft
      );
    }

    const countdownTimer = setInterval(function () {
      timeLeft--;

      $("#countdown").text(formatTime(timeLeft));

      if (timeLeft <= 0) {
        clearInterval(countdownTimer);
        $("#countdown").text("Time's up!");
        $("#popUpPaymentQR").fadeOut();
      }
    }, 1000);
  };

  const closePopUpPayment = () => {
    $("#popUpPaymentQR").fadeOut();
  };

  const groupPopup = ["popupForm", "popUpPayment", "popUpPaymentQR"];
  $(".popup--content--submit").click(popUpUpdateInfo());
  $(".cart__container--coupon").click(showApplyCoupon());
  $("#openFormButton").click(showPopUp());
  $("#closeFormButton").click(closePopUp());
  $(".openFormButtonPay").click(showPopUpPay());
  $("#closeFormButtonPay").click(closePopUpPay);
  $(".popup--content--submitPayment").click(handleChoosePayment());
  $(".btn-dark").click(handlePayment());
  $("#closeFormButtonPayment").click(closePopUpPayment);
  $(window).click(function (event) {
    groupPopup.forEach((popup) => {
      if (event.target.id == popup) {
        $("#" + popup).fadeOut();
      }
    });
  });
});ss

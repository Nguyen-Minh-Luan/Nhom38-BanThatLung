$(document).ready(function () {
  $(".cart__container--coupon").click(function () {
    $(this).next(".cart__container_coupon--submit").toggleClass("active");
  });
});

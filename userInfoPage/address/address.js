$(document).ready(function () {
  $(".custom_popup").on("click", function () {
    $(this).closest(".address__info").find("#popUpPayment").fadeIn();
  });
  $(".custom_delete_address").on("click", function () {
    $(this).closest(".address__info").remove();
  });
  $("#closeFormButtonPay").on("click", function () {
    $(this).closest(".address__info").find("#popUpPayment").fadeOut();
    $(this)
      .closest(".userInfo--address--display")
      .find("#popUpPayment")
      .fadeOut();
  });
  $(".custom_save").on("click", function () {
    const addressDetail = $(".address_detail").val();
    const province = $("#province").val();
    const phoneNumber = $(".phoneNumber").val();

    const addressOut = $(this)
      .closest(".address__info")
      .find(".custom_address_detail_display")
      .text(addressDetail);
    const provinceOut = $(this)
      .closest(".address__info")
      .find(".custom_address")
      .text(province);
    const phoneOut = $(this)
      .closest(".address__info")
      .find(".custom_phoneNumber_display")
      .text(phoneNumber);
    $(this).closest(".address__info").find("#popUpPayment").fadeOut();
  });

  $(".custom_default").on("click", function () {
    $(".address__info").css("border", "2px solid white");
    $(this).closest(".address__info").css("border", "2px solid black");
  });
  $(".custom_add_address").on("click", function () {
    $(this)
      .closest(".userInfo--address--display")
      .find("#popUpPayment")
      .fadeIn();
  });
});

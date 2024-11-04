$(document).ready(function () {
  $(".cart__container--coupon").click(function () {
    $(this).next(".cart__container_coupon--submit").slideToggle();
  });
  $(document).on("click", function (event) {
    if (!$(event.target).closest("#overlay2, .editItem").length) {
      $("#overlay2").removeClass("active");
      $("#dimmer2").removeClass("active");
    }
  });

  $(".editItem").on("click", function () {
    const title = $(this).closest(".custom_item").find(".title").text();
    const tag1 = $(this).closest(".custom_item").find(".tag1").text();
    const tag2 = $(this).closest(".custom_item").find(".tag2").text();
    const img = $(this)
      .closest(".custom_item")
      .find(".custom_image_container")
      .attr("src");
    const quantity = $(this)
      .closest(".custom_item")
      .find(".custom_quanity")
      .val();
    const price = $(this)
      .closest(".custom_item")
      .find(".custom_price_container")
      .text();

    $("#overlay2").find(".custom_title_container_display").text(title);
    $("#overlay2").find(".custom_image_container_display").attr("src", img);
    $("#overlay2")
      .find(".custom_tag_container_display")
      .find(".tag1")
      .text(tag1);
    $("#overlay2")
      .find(".custom_tag_container_display")
      .find(".tag2")
      .text(tag2);
    $("#overlay2").find(".custom_quantity_container_display").val(quantity);
    $("#overlay2").find(".custom_price_container_display").text(price);
    $("#overlay2").toggleClass("active");
    $(".dimmer").toggleClass("active");
  });
  $(".custom_update").on("click", function () {
    const tag1 = $("#overlay2").find(".custom_select_color").val();
    const tag2 = $("#overlay2").find(".custom_select_size").val();
    console.log(tag1, tag2);
    $("#overlay2").removeClass("active");
    $("#dimmer2").removeClass("active");
    const result1 = $(".custom_item").find(".tag1").text(tag1);
    const result2 = $(".custom_item").find(".tag2").text(tag2);
  });
});

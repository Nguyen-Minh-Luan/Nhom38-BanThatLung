$(document).ready(function () {
  const options = $.map(
    Array.from({ length: 30 }, (_, i) => i + 1),
    function (num) {
      return `<option value="${num}">${num}</option>`;
    }
  );

  $(".number-select").append(options);
  $(".cart__container--coupon").click(function () {
    $(this).next(".cart__container_coupon--submit").animate(
      {
        opacity: "toggle",
        height: "toggle",
      },
      400
    );
  });

  $(document).on("click", function (event) {
    if (!$(event.target).closest(".overlay2, .editItem").length) {
      $(".overlay2").removeClass("active");
      $("#dimmer2").removeClass("active");
    }
  });

  $(".editItem").on("click", function () {
    const $item = $(this).closest(".custom_item");

    const title = $item.find(".title").text();
    const tag1 = $item.find(".tag1").text();
    const tag2 = $item.find(".tag2").text();
    const img = $item.find(".custom_image_container").attr("src");
    const quantity = $item.find(".custom_quanity").val();
    const price = $item.find(".custom_price_container").text();

    const $overlay = $item.find(".overlay2");
    $overlay.find(".custom_title_container_display").text(title);
    $overlay.find(".custom_image_container_display").attr("src", img);
    $overlay.find(".custom_tag_container_display .tag1").text(tag1);
    $overlay.find(".custom_tag_container_display .tag2").text(tag2);
    $overlay.find(".custom_quantity_container_display").val(quantity);
    $overlay.find(".custom_price_container_display").text(price);

    $overlay.toggleClass("active");
    $("#dimmer2").toggleClass("active");
  });

  
  $(".custom_update").on("click", function () {
    const $overlay = $(this).closest(".overlay2");
    const tag1 = $overlay.find(".custom_select_color").val();
    const tag2 = $overlay.find(".custom_select_size").val();

    console.log(tag1, tag2);

    const $item = $overlay.closest(".custom_item");
    $item.find(".tag1").text(tag1);
    $item.find(".tag2").text(tag2);

    $overlay.toggleClass("active");
    $("#dimmer2").removeClass("active");
  });

  $(".custom_delete").on("click", function () {
    const $item = $(this).closest(".custom_item");
    $item.remove();
  });
  const toastTrigger = document.getElementById("liveToastBtn");
  const toastLiveExample = document.getElementById("liveToast");
  if (toastTrigger) {
    toastTrigger.addEventListener("click", () => {
      const toast = new bootstrap.Toast(toastLiveExample);

      toast.show();
    });
  }
});

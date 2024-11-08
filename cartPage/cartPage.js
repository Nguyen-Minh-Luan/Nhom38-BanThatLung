$(document).ready(function () {
  // Toggle coupon input visibility
  $(".cart__container--coupon").click(function () {
    $(this).next(".cart__container_coupon--submit").slideToggle();
  });

  // Close the overlay when clicking outside of it
  $(document).on("click", function (event) {
    if (!$(event.target).closest(".overlay2, .editItem").length) {
      $(".overlay2").removeClass("active");
      $(".dimmer").removeClass("active");
    }
  });

  // Open the edit overlay for each item
  $(".editItem").on("click", function () {
    const $item = $(this).closest(".custom_item"); // Get the closest cart item

    // Get values from the current item
    const title = $item.find(".title").text();
    const tag1 = $item.find(".tag1").text();
    const tag2 = $item.find(".tag2").text();
    const img = $item.find(".custom_image_container").attr("src");
    const quantity = $item.find(".custom_quanity").val();
    const price = $item.find(".custom_price_container").text();

    // Set values in the overlay for this specific item
    const $overlay = $item.find(".overlay2");
    $overlay.find(".custom_title_container_display").text(title);
    $overlay.find(".custom_image_container_display").attr("src", img);
    $overlay.find(".custom_tag_container_display .tag1").text(tag1);
    $overlay.find(".custom_tag_container_display .tag2").text(tag2);
    $overlay.find(".custom_quantity_container_display").val(quantity);
    $overlay.find(".custom_price_container_display").text(price);

    // Show the overlay and dimmer
    $overlay.addClass("active");
    $(".dimmer").addClass("active");
  });

  // Update the cart item when 'Cập nhập' is clicked
  $(".custom_update").on("click", function () {
    const $overlay = $(this).closest(".overlay2");
    const tag1 = $overlay.find(".custom_select_color").val();
    const tag2 = $overlay.find(".custom_select_size").val();

    console.log(tag1, tag2); // Log selected values

    // Update the cart item tags with the selected values
    const $item = $overlay.closest(".custom_item");
    $item.find(".tag1").text(tag1);
    $item.find(".tag2").text(tag2);

    // Close the overlay and remove dimmer
    $overlay.removeClass("active");
    $(".dimmer").removeClass("active");
  });

  $(".custom_delete").on("click", function () {
    const $item = $(this).closest(".custom_item");
    $item.remove();
  });
});
const toastTrigger = document.getElementById('liveToastBtn')
const toastLiveExample = document.getElementById('liveToast')
if (toastTrigger) {
  toastTrigger.addEventListener('click', () => {
    const toast = new bootstrap.Toast(toastLiveExample)

    toast.show()
  })
}

$(document).ready(function () {

    $(".custom_input--btn-group__btn").on("click", function () {
        const couponCode = $(".couponValue").val();
        if (couponCode === "") {
            $(".custom_insert").append("<p class='text-danger'>Chưa nhập coupon</p>")
        } else {
            $.ajax({
                url: `/coupon?code=${couponCode}`,
                type: "GET",
                data: {
                    couponCode: couponCode,
                    message: `getCoupon`,
                },
                success(responseData) {
                    const data = responseData;
                    const totalCost = $(".totalCostDisplay").text().replace("VNĐ", "").trim();
                    console.log(totalCost);
                    $(".totalCostDisplay").text(totalCost - (totalCost * data.discountPercent / 100));
                },
                error(responseData) {
                    $(".custom_input_group").append("<h3 class='text-danger'>Coupon không tồn tại</h3>")

                }
            })
        }
    })
    $(".remove_button").on("click", function () {
        const $this = $(this);
        const beltId = $(this).closest(".custom_remove").find(".beltId").val();
        $.ajax({
            url: `/Cart`,
            method: "POST",
            data: {
                message: `remove`,
                beltId: beltId,
            },
            success(responseData) {
                const data = responseData;
                $this.closest(".custom_remove").fadeOut(300, function () {
                    $(this).remove();
                });
                $(".totalOrdersCountDisplay").text(`Tổng [${data.totalOrders / 15000} đơn hàng]`)
                $(".totalOrdersDisplayBelts").text(`${data.totalOrders / 15000} sản phẩm`)
                $(".totalPriceDisplay").text(data.totalPrice.toString() + " VNĐ");
                $(".totalOrdersDisplay").text(data.totalOrders * $("#quantitySelect").val().toString() + " VNĐ")
                $(".totalCostDisplay").text(data.totalCost.toString() + " VNĐ")
                const cartCount = parseInt($("#cart_received").text(), 10) - 1
                $("#cart_received").text(cartCount)
            },
            error(responseData) {
                console.log(responseData);
            }
        })
    })
    $("#quantitySelect").on("change", function () {
        const selectedQuantity = $(this).val();

        const beltId = $(this).closest(".custom_remove").find(".beltId").val();
        $.ajax({
            url: '/Cart',
            type: 'POST',
            data: {
                message: "update",
                beltId: beltId,
                quantity: selectedQuantity,
            },
            success: function (response) {
                console.log("Quantity updated successfully!");
                const data = response;
                $(".totalOrdersCountDisplay").text(`Tổng [${data.totalOrders / 15000} đơn hàng]`)
                $(".totalOrdersDisplayBelts").text(`${data.totalOrders / 15000} sản phẩm`)
                $(".totalPriceDisplay").text(data.totalPrice.toString() + " VNĐ");
                $(".totalOrdersDisplay").text(data.totalOrders * $("#quantitySelect").val().toString() + " VNĐ")
                $(".totalCostDisplay").text(data.totalCost.toString() + " VNĐ")
            },
            error: function (xhr, status, error) {
                console.error("Error while updating quantity:", error);
            }
        });
    });

});

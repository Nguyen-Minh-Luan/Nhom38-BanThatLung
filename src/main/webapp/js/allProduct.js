$(document).ready(function () {
    $(".filter__title").on("click", function () {
        $("#dimmer3").toggleClass("active");
        $("#overlay3").toggleClass("active");

    });

    $(document).ready(function () {
        $(".apply__button").on("click", function () {
            $("#dimmer3").toggleClass("active");
            $("#overlay3").toggleClass("active");

        });
    })


    $(document).on("click", function (event) {
        if (!$(event.target).closest("#overlay, #menuButton").length) {
            $("#overlay").removeClass("active");
            $("#dimmer").removeClass("active");
        }
    });
    $("#closeButton").click(function () {
        console.log(1);
        $("#overlay3").removeClass("active");
        $("#dimmer3").removeClass("active");
    });
})


// $.ajax({
//   type: "GET",
//   url: '/Nhom38_BanThatLung_war/allProduct',
//   success(res) {
//     if($("#is_reloaded").length === 0) {
//       document.location.reload();
//     }
//   }
// });
//


// if (!sessionStorage.getItem("is_reloaded")) {
//     // Kiểm tra nếu sessionStorage chưa có flag "is_reloaded"
//     $.ajax({
//         type: "GET",
//         url: '/Nhom38_BanThatLung_war/allProduct',
//         success(res) {
//             sessionStorage.setItem("is_reloaded", 'true'); // Đặt flag
//             document.location.reload(); // Reload trang sau khi hoàn thành AJAX
//         },
//         error(err) {
//             console.error("Lỗi khi gửi yêu cầu AJAX:", err);
//         }
//     });
// }




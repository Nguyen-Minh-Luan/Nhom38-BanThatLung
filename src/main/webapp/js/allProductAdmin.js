$(document).ready(function () {
    $(".fa-pen-to-square").on("click", function () {
        const productId = $(this).closest("tr").find(".productId").text();

        // Đổi tiêu đề và nút cho hành động sửa sản phẩm
        $("#createUpdateModal__header").text("Sửa sản phẩm");
        $(".productAction").val("update")
        $(".productBtnAction").text("Cập nhập");

        // Thêm tiêu đề sản phẩm và input ẩn
        $("#productForm").append(`
            <input type="hidden" name="productId" value="${productId}">,
            <h5>Sản phẩm # ${productId}</h5>
        `);

    });
    $("#createButton").on("click", function () {
        $("#createUpdateModal__header").text("Tạo sản phẩm mới");
        $(".productAction").val("create")
        $(".productBtnAction").text("Tạo");
        $("#productForm")[0].reset();
    })
});


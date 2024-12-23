$(document).ready(function () {
    var currentPage = 1;
    var reviewsPerPage = 5;

    window.loadReviews = function (page) {
        var beltId = $("#beltIdReviews").val();
        $.ajax({
            url: '/getReviews',
            type: 'GET',
            data: {
                beltId: beltId,
                page: page,
                size: reviewsPerPage
            },
            success: function (response) {
                $('#reviewsContainer').html(response.reviewsHTML);

                updatePagination(response.totalPages, page);
            },
            error: function () {
                alert('Error loading reviews.');
            }
        });
        let isCartUpdated = false;
        $(".addToCart__button").on("click", function () {
            const beltName = $(".product_detail--name").text();
            const quantity = $(".quantity_belt").val();
            const fullText = $(".belts-price").clone().children().remove().end().text().trim();
            const beltId = $("#beltIdReviews").val();
            const price = fullText.replace('vnđ', '').trim();
            $.ajax({
                url: `/Cart?message=add&beltName=${beltName}`,
                type: 'POST',
                data: {
                    message: "add",
                    beltId: beltId,
                    beltName: beltName,
                    quantity: quantity,
                    price: price,
                },
                success: function (response) {
                    console.log("OK");
                    if (!isCartUpdated) {
                        let cartCount = parseInt($("#cart_received").text(), 10) + 1;
                        $("#cart_received").text(cartCount)
                        isCartUpdated = true;
                    }
                }
            })

        })
    };

    function updatePagination(totalPages, currentPage) {
        var paginationHtml = '';

        for (var i = 1; i <= totalPages; i++) {
            paginationHtml += '<li class="page-item ' + (i === currentPage ? 'active' : '') + '">';
            paginationHtml += '<a class="page-link text-dark" onclick="loadReviews(' + i + ')">' + i + '</a>';
            paginationHtml += '</li>';
        }

        paginationHtml = ` 
            <li class="page-item ${currentPage === 1 ? 'disabled' : ''}">
                <a class="page-link text-dark"  onclick="loadReviews(${currentPage - 1})">&laquo;</a>
            </li>
            ${paginationHtml}
            <li class="page-item ${currentPage === totalPages ? 'disabled' : ''}">
                <a class="page-link text-dark" onclick="loadReviews(${currentPage + 1})">&raquo;</a>
            </li>
        `;

        $('#pagination__bar .pagination').html(paginationHtml);
    }

    loadReviews(currentPage)

    document.querySelector("#increment").addEventListener("click", () => {
        const stockQuantity = $(".quantity_belt").val();
        let quantity = document.querySelector("#quantity");
        if (quantity < stockQuantity) {
            quantity.value = parseInt(quantity.value) + 1;
        }
    });

    document.querySelector("#decrement").addEventListener("click", () => {
        let quantity = document.querySelector("#quantity");
        if (parseInt(quantity.value) > 1) {
            quantity.value = parseInt(quantity.value) - 1;
        }
    });
});

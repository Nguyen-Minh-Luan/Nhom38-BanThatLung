$(document).ready(function () {
    document.querySelectorAll('.favorite-button').forEach(button => {
        button.addEventListener('click', function () {
            this.classList.toggle('active');
        });
    });
    let isFavoriteUpdated = false;
    $(".favorite-button").on('click', function () {
        const beltId = $(this).closest(".card").find(".beltId").val();
        const userId = $(this).closest(".card").find(".userId").val();
        console.log(beltId);
        console.log(userId);
        $.ajax({
            url: `/favorite`,
            type: "POST",
            data: {
                userId: userId,
                beltId: beltId,
                message: "addFavorite"
            },
            success: function () {
                console.log("Favorite added successfully.");
                if (!isFavoriteUpdated && !$(this).hasClass("active")) {
                    const favoriteCount = parseInt($("#favorite_receive").text(), 10) + 1
                    $("#favorite_receive").text(favoriteCount)
                    isFavoriteUpdated = true;
                }
            },
            error: function (xhr) {
                $button.toggleClass("active");
            }
        })
    })
    $(".favorite_button").on('click', function () {
        const beltId = $(this).closest(".beltProp").find(".beltId").val();
        const userId = $(this).closest(".beltProp").find(".userId").val();
        console.log(beltId);
        console.log(userId);
        $.ajax({
            url: `/favorite`,
            type: "POST",
            data: {
                userId: userId,
                beltId: beltId,
                message: "addFavorite"
            },
            success: function () {
                console.log("Favorite added successfully.");
                if (!isFavoriteUpdated && !$(this).hasClass("active")) {
                    const favoriteCount = parseInt($("#favorite_receive").text(), 10) + 1
                    $("#favorite_receive").text(favoriteCount)
                    isFavoriteUpdated = true;
                }
            },
            error: function (xhr) {
                $button.toggleClass("active");
            }
        })
    })
})
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Product Detail</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/icons/favicon.svg" type="image/png"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/fontawesome-free-6.6.0-web/fontawesome-free-6.6.0-web/css/all.css"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
    <script src="${pageContext.request.contextPath}/js/productDetail.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/general.css"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/productDetail.css"/>
</head>

<body>
<jsp:include page="/frontend/header_footer/header.jsp"/>

<div class="breadcumb__container">
    <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="${pageContext.request.contextPath}/index.jsp">Trang chủ</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Sản phẩm</li>
        </ol>
    </nav>
</div>

<div class="container my-5 bg-white rounded p-5 mb-0">
    <div class="d-flex">
        <div class="col-md-8 d-flex">
            <div class="col-2 product-thumbnails d-flex flex-column align-item-start justify-content-between mt-0">
                <img src="${pageContext.request.contextPath}/assets/images/product/product detail/victor/victor1 (1).webp" class="mb-2 border rounded"
                     alt="Thumbnail 1" data-bs-target="#productCarousel" data-bs-slide-to="0"/>
                <img src="${pageContext.request.contextPath}/assets/images/product/product detail/victor/victor1 (2).webp" class="mb-2 border rounded"
                     alt="Thumbnail 1" data-bs-target="#productCarousel" data-bs-slide-to="1"/>
                <img src="${pageContext.request.contextPath}/assets/images/product/product detail/victor/victor1 (3).webp" class="mb-2 border rounded"
                     alt="Thumbnail 1" data-bs-target="#productCarousel" data-bs-slide-to="2"/>
                <img src="${pageContext.request.contextPath}/assets/images/product/product detail/victor/victor1 (4).webp" class="border rounded"
                     alt="Thumbnail 1" data-bs-target="#productCarousel" data-bs-slide-to="3"/>
            </div>
            <div id="productCarousel" class="carousel slide border rounded col-2 product w-75">
                <div class="carousel-inner h-100">
                    <div class="carousel-item active">
                        <img src="${pageContext.request.contextPath}/assets/images/product/product detail/victor/victor1 (1).webp"
                             class="img-fluid border rounded" alt="Product Image 1"/>
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/assets/images/product/product detail/victor/victor1 (2).webp"
                             class="img-fluid border rounded" alt="Product Image 2"/>
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/assets/images/product/product detail/victor/victor1 (3).webp"
                             class="img-fluid border rounded" alt="Product Image 3"/>
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/assets/images/product/product detail/victor/victor1 (4).webp"
                             class="img-fluid border rounded" alt="Product Image 3"/>
                    </div>
                </div>
                <button class="carousel-control-prev custom_shadow" type="button" data-bs-target="#productCarousel"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#productCarousel"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <div class="col-md-6">
            <h2>Dây Nịt Da</h2>
            <p class="product-price text-danger">
                480.000 VND
                <span class="product-old-price text-muted text-decoration-line-through">560.000 VND</span>
            </p>
            <div class="mb-3">
                <strong>Màu:</strong> Đen
                <div class="mt-1">
            <span class="badge bg-dark" style="
                  width: 20px;
                  height: 20px;
                  border-radius: 50%;
                  display: inline-block;
                "></span>
                </div>
            </div>
            <div class="size-options mt-4">
                <h5>Chọn độ dài thắt lưng (cm):</h5>
                <div class="choose_size mt-3">
                    <span>80</span><span>90</span><span>100</span><span>110</span><span>120</span>
                </div>
            </div>
            <div class="mb-3 mt-3">
                <label for="quantity" class="form-label"><strong>Số Lượng:</strong></label>
                <div class="quantity__control input-group quantity-controls">
                    <button class="btn btn-outline-secondary" type="button" id="decrement">-</button>
                    <input type="text" class="form-control" id="quantity" value="1">
                    <button class="btn btn-outline-secondary" type="button" id="increment">+</button>
                </div>
            </div>

            <div class="mb-3 d-flex flex-column align-item-center">
                <button class="buyNow__button btn btn-dark w-100 mb-4">
                    Mua Ngay
                </button>
                <button class="addToCart__button btn-white me-2 w-100 mb-3">
                    Thêm vào giỏ hàng
                </button>
                <button class="favorite_button btn me-2 w-100 mb-3 rounded">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                         fill="#000000">
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                    </svg>
                    Thêm vào yêu thích
                </button>
            </div>

            <div class="accordion" id="productAccordion">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingDescription">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseDescription" aria-expanded="true"
                                aria-controls="collapseDescription">
                            Mô tả sản phẩm
                        </button>
                    </h2>
                    <div id="collapseDescription" class="accordion-collapse collapse show"
                         aria-labelledby="headingDescription"
                         data-bs-parent="#productAccordion">
                        <div class="accordion-body">
                            <ul>
                                <li>
                                    Thắt lưng nam cao cấp tại hà nội với mặt khóa được làm từ
                                    chất liệu ngũ kim sáng bóng
                                </li>
                                <li>Thiết kế khóa trượt thời trang, tiện dụng</li>
                                <li>Đường chỉ may tinh tế, chắc chắn</li>
                                <li>
                                    Kích thước (độ rộng dây x độ dài dây): 3,5 cm x 110cm ~
                                    120 cm
                                </li>
                                <li>Màu sắc: Đen da trơn</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingCareLabel">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseCareLabel" aria-expanded="false"
                                aria-controls="collapseCareLabel">
                            Cách thức bảo quản
                        </button>
                    </h2>
                    <div id="collapseCareLabel" class="accordion-collapse collapse" aria-labelledby="headingCareLabel"
                         data-bs-parent="#productAccordion">
                        <div class="accordion-body">
                            <ul>
                                <li>
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                    Quasi reiciendis laborum quis quae recusandae, placeat
                                    quibusdam excepturi cumque non totam obcaecati,
                                    praesentium cupiditate iusto voluptatibus, similique
                                    eveniet aut incidunt tempora?
                                </li>
                                <li>
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                    Quasi reiciendis laborum quis quae recusandae, placeat
                                    quibusdam excepturi cumque non totam obcaecati,
                                    praesentium cupiditate iusto voluptatibus, similique
                                    eveniet aut incidunt tempora?
                                </li>
                                <li>
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                    Quasi reiciendis laborum quis quae recusandae, placeat
                                    quibusdam excepturi cumque non totam obcaecati,
                                    praesentium cupiditate iusto voluptatibus, similique
                                    eveniet aut incidunt tempora?
                                </li>
                                <li>
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                    Quasi reiciendis laborum quis quae recusandae, placeat
                                    quibusdam excepturi cumque non totam obcaecati,
                                    praesentium cupiditate iusto voluptatibus, similique
                                    eveniet aut incidunt tempora?
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingSpecial">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseSpecial" aria-expanded="false" aria-controls="collapseSpecial">
                            Đặc Biệt
                        </button>
                    </h2>
                    <div id="collapseSpecial" class="accordion-collapse collapse" aria-labelledby="headingSpecial"
                         data-bs-parent="#productAccordion">
                        <div class="accordion-body">
                            <ul>
                                <li>
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                    Quasi reiciendis laborum quis quae recusandae, placeat
                                    quibusdam excepturi cumque non totam obcaecati,
                                    praesentium cupiditate iusto voluptatibus, similique
                                    eveniet aut incidunt tempora?
                                </li>
                                <li>
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                    Quasi reiciendis laborum quis quae recusandae, placeat
                                    quibusdam excepturi cumque non totam obcaecati,
                                    praesentium cupiditate iusto voluptatibus, similique
                                    eveniet aut incidunt tempora?
                                </li>
                                <li>
                                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                    Quasi reiciendis laborum quis quae recusandae, placeat
                                    quibusdam excepturi cumque non totam obcaecati,
                                    praesentium cupiditate iusto voluptatibus, similique
                                    eveniet aut incidunt tempora?
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container p-5">
    <div class="col-7">
        <p class="fs-4">3,734 đánh giá</p>
        <div class="d-flex border-bottom mb-3">
            <p class="mb-0">Đánh giá cho sản phẩm này</p>
            <span class="ps-3 pe-3 pb-1 pt-1 ms-2 bg-light rounded-pill mb-2">448</span>
        </div>
        <div class="d-flex flex-column">
            <div class="star">
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
            </div>
            <div class="content_review mt-2">
                <p class="mb-1">
                    Chính xác như mô tả! Chất lượng rất cao và được đóng gói đẹp mắt!
                    Cảm ơn bạn 😊
                </p>
            </div>
            <div class="d-flex author_review mt-0 border-bottom">
                <p class="fw-light fs-6 text-decoration-underline">
                    Huynh Minh Thang
                </p>
                <p class="fw-light fs-6 ms-2">Ngày 11 tháng 99 năm 2044</p>
            </div>
        </div>
        <div class="d-flex flex-column">
            <div class="star">
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
            </div>
            <div class="content_review mt-2">
                <p class="mb-1">
                    Chính xác như mô tả! Chất lượng rất cao và được đóng gói đẹp mắt!
                    Cảm ơn bạn 😊
                </p>
            </div>
            <div class="d-flex author_review mt-0 border-bottom">
                <p class="fw-light fs-6 text-decoration-underline">
                    Huynh Minh Thang
                </p>
                <p class="fw-light fs-6 ms-2">Ngày 11 tháng 99 năm 2044</p>
            </div>
        </div>
        <div class="d-flex flex-column">
            <div class="star">
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                     fill="#000000">
                    <path
                            d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                </svg>
            </div>
            <div class="content_review mt-2">
                <p class="mb-1">
                    Chính xác như mô tả! Chất lượng rất cao và được đóng gói đẹp mắt!
                    Cảm ơn bạn 😊
                </p>
            </div>
            <div class="d-flex author_review mt-0 border-bottom">
                <p class="fw-light fs-6 text-decoration-underline">
                    Huynh Minh Thang
                </p>
                <p class="fw-light fs-6 ms-2">Ngày 11 tháng 99 năm 2044</p>
            </div>
        </div>
    </div>
    <section class="mt-3">
        <nav aria-label="Page__navigation__example" id="pagination__bar">
            <div class="container paginationWrapper ps-0">
                <ul class="pagination pagination__Ul">
                    <li class="page-item custom_trans">
                        <a class="page-link text-dark" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link text-dark" href="#">1</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link text-dark" href="#">2</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link text-dark" href="#">3</a>
                    </li>
                    <li class="page-item custom_trans">
                        <a class="page-link text-dark" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </section>
    <div class="d-flex flex-column mt-5 custom_bg p-4" style="width: 60%">
        <h2>Viết đánh giá</h2>

        <div class="row mt-2">
            <div class="d-flex align-item-center">
                <img src="../assets/images/victor_sample1.png" class="" alt="..." width="200px"/>
                <div class="ms-4">
                    <h5 class="card-title text-start fs-6">
                        Thắt Lưng Hai Mặt LV Heritage 35MM
                    </h5>
                    <div class="star">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                             fill="#000000">
                            <path
                                    d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                             fill="#000000">
                            <path
                                    d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                             fill="#000000">
                            <path
                                    d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                             fill="#000000">
                            <path
                                    d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                             fill="#000000">
                            <path
                                    d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/>
                        </svg>
                    </div>
                    <textarea class="pt-4 ps-1 mt-4" cols="50" rows="3" style="resize: none"
                              placeholder="Viết đánh giá vào đây">
              </textarea>
                </div>
            </div>
        </div>

        <div class="d-flex">
            <img src="../assets/images/sampleProfile1.jpg" alt="choose_file" class="mt-3" width="50px" height="50px"
                 style="border-radius: 50%"/>
            <p class="mt-4 ms-3">Đánh giá bởi</p>
        </div>
        <div class="d-flex justify-content-end">
            <button class="btn btn-dark me-4 p-2 px-3 mt-3">Gửi đánh giá</button>
            <button class="btn btn-dark mt-3 px-3">Hủy</button>
        </div>
    </div>
</div>
<div class="viewed__component container rounded ps-5 pt-3 mt-5 youmightlike__component mb-5 pe-0 pb-5">
    <p class="viewed__title ms-0 fs-2">Bạn có thể thích</p>
    <div class="d-flex justify-content-between">
        <div class="card-wrapper cardWrapper">
            <div class="card" style="position: relative">
                <div style="position: absolute; top: 10px; right: 10px; z-index: 10">
                    <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                         viewBox="0 -960 960 960"
                         width="24px" fill="#000000">
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                    </svg>
                </div>
                <img src="../assets/images/victor_sample1.png" class="card-img-top" alt="..."/>
                <a href="../productDetail/productDetail.html">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>
            <div class="card" style="position: relative">
                <div style="position: absolute; top: 10px; right: 10px; z-index: 10">
                    <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                         viewBox="0 -960 960 960"
                         width="24px" fill="#000000">
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                    </svg>
                </div>
                <img src="../assets/images/victor_sample1.png" class="card-img-top" alt="..."/>
                <a href="../productDetail/productDetail.html">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>

            <div class="card" style="position: relative">
                <div style="position: absolute; top: 10px; right: 10px; z-index: 10">
                    <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                         viewBox="0 -960 960 960"
                         width="24px" fill="#000000">
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                    </svg>
                </div>
                <img src="../assets/images/victor_sample1.png" class="card-img-top" alt="..."/>
                <a href="../productDetail/productDetail.html">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>
            <div class="card" style="position: relative">
                <div style="position: absolute; top: 10px; right: 10px; z-index: 10">
                    <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                         viewBox="0 -960 960 960"
                         width="24px" fill="#000000">
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                    </svg>
                </div>
                <img src="../assets/images/victor_sample1.png" class="card-img-top" alt="..."/>
                <a href="../productDetail/productDetail.html">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<div class="viewed__component container rounded ps-5 pt-3 mt-5 youmightlike__component mb-5 pe-0 pb-5">
    <p class="viewed__title ms-0 fs-2">Sản phẩm đã xem</p>
    <div class="d-flex justify-content-between">
        <div class="card-wrapper cardWrapper">
            <div class="card" style="position: relative">
                <div style="position: absolute; top: 10px; right: 10px; z-index: 10">
                    <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                         viewBox="0 -960 960 960"
                         width="24px" fill="#000000">
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                    </svg>
                </div>
                <img src="../assets/images/victor_sample1.png" class="card-img-top" alt="..."/>
                <a href="../productDetail/productDetail.html">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>
            <div class="card" style="position: relative">
                <div style="position: absolute; top: 10px; right: 10px; z-index: 10">
                    <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                         viewBox="0 -960 960 960"
                         width="24px" fill="#000000">
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                    </svg>
                </div>
                <img src="../assets/images/victor_sample1.png" class="card-img-top" alt="..."/>
                <a href="../productDetail/productDetail.html">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>

            <div class="card" style="position: relative">
                <div style="position: absolute; top: 10px; right: 10px; z-index: 10">
                    <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                         viewBox="0 -960 960 960"
                         width="24px" fill="#000000">
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                    </svg>
                </div>
                <img src="../assets/images/victor_sample1.png" class="card-img-top" alt="..."/>
                <a href="../productDetail/productDetail.html">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>
            <div class="card" style="position: relative">
                <div style="position: absolute; top: 10px; right: 10px; z-index: 10">
                    <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                         viewBox="0 -960 960 960"
                         width="24px" fill="#000000">
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                    </svg>
                </div>
                <img src="../assets/images/victor_sample1.png" class="card-img-top" alt="..."/>
                <a href="../productDetail/productDetail.html">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<jsp:include page = "/frontend/header_footer/footer.jsp" />

</body>

</html>
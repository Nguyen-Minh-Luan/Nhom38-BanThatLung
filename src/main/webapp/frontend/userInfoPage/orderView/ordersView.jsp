<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>THOMAS - Xem đơn hàng</title>
    <link
            rel="icon"
            href="${pageContext.request.contextPath}/assets/icons/favicon.svg"
            type="image/x-icon"
    />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
    />
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"
    ></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../../header footer/header__footer.js"></script>
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/fontawesome-free-6.6.0-web/fontawesome-free-6.6.0-web/css/all.css"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/general.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ordersView.css"/>
</head>
<body>
<jsp:include page="/frontend/header_footer/header.jsp"/>
<div class="breadcumb__container">
    <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="${pageContext.request.contextPath}/index.jsp">Trang chủ</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Đơn hàng</li>
        </ol>
    </nav>
</div>
<!-- Modal -->
<div
        class="modal fade"
        id="exampleModal"
        tabindex="-1"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xác nhận</h5>
                <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                ></button>
            </div>
            <div class="modal-body">
                <h4>Bạn có chắc muốn hủy đơn hàng này</h4>
            </div>
            <div class="modal-footer">
                <button
                        type="button"
                        class="btn btn-secondary"
                        data-bs-dismiss="modal"
                >
                    Đóng
                </button>
                <button type="button" class="btn btn-dark">Đồng ý</button>
            </div>
        </div>
    </div>
</div>
<div class="container-lg mt-3 mb-5">
    <div
            class="d-flex justify-content-between"
            style="white-space: nowrap; margin-top: 150px"
    >
        <div class="d-inline-block fw-bold mb-4" style="padding: 12px">
            <a
                    class="text-dark text-decoration-none custom_size--19"
                    href="${pageContext.request.contextPath}/frontend/userInfoPage/account/userinfo.jsp"
            >Tài khoản</a
            >
        </div>
        <div class="d-inline-block fw-bold" style="padding: 12px">
            <a
                    class="text-dark text-decoration-none custom_size--19"
                    href="${pageContext.request.contextPath}/frontend/userInfoPage/profile/profile.jsp"
            >Hồ sơ</a
            >
        </div>
        <div class="d-inline-block fw-bold" style="padding: 12px">
            <a
                    class="text-dark text-decoration-none custom_size--19"
                    href="${pageContext.request.contextPath}/frontend/userInfoPage/address/address.jsp"
            >Địa chỉ</a
            >
        </div>
        <div class="d-inline-block fw-bold" style="padding: 12px">
            <a
                    class="text-dark text-decoration-none custom_size--19"
                    href="${pageContext.request.contextPath}/frontend/userInfoPage/privacy/privacy.jsp"
            >Riêng tư</a
            >
        </div>
        <div class="d-inline-block fw-bold custom_active" style="padding: 12px">
            <a
                    class="text-dark text-decoration-none custom_size--19"
                    href="${pageContext.request.contextPath}/frontend/userInfoPage/orderView/ordersView.jsp"
            >Đơn hàng</a
            >
        </div>
    </div>
    <div class="container">
        <div class="userInfo__content--middle mb-5">
            <h2 class="mt-4 mb-4 fw-light">Các đơn hàng mà bạn đã đặt</h2>
            <div class="border rounded p-3 container-sm">
                <h2 class="ms-1 fw-light custom_size--19">Order#1</h2>
                <h2 class="ms-1 fw-light custom_size--16">
                    Tổng tiền: 14.000.000vnđ
                </h2>
                <div class="container ps-sm-0 border rounded mb-3" id="item1">
                    <div class="row-sm">
                        <div class="col-sm col-md-6 col-lg-12">
                            <div class="ps-0 row-sm d-lg-flex container-fluid pr-sm-0">
                                <div
                                        class="col-sm col-md-2 col-lg-2 ps-sm-0 d-flex justify-content-center"
                                >
                                    <img
                                            class="w-50 img-fluid"
                                            src="${pageContext.request.contextPath}/assets/images/belt_cart_1.png"
                                            alt="black belt"
                                            height="200px"
                                    />
                                </div>
                                <div
                                        class="col-sm col-md-6 col-lg-10 border-dark ps-sm-0 pr-sm-0 mt-sm-4"
                                >
                                    <div
                                            class="d-flex justify-content-between custom_title_container"
                                    >
                                        <h4 class="custom_size--19 fw-light d-lg-none title">
                                            Thắt lưng da hai mặt màu đen với khóa xoay
                                        </h4>
                                        <h4 class="custom_size--19 fw-light d-none d-lg-block">
                                            Thắt lưng da hai mặt màu đen với khóa xoay
                                        </h4>
                                        <h4
                                                class="d-sm-none d-md-none d-lg-block custom_size--19 fw-light custom_price_container"
                                        >
                                            9,063,726₫
                                        </h4>
                                    </div>

                                    <div class="row mt-sm-2 custom_tag_container">
                        <span
                                class="col-sm-1 ms-sm-2 badge bg-light text-dark me-2 tag1"
                        >Đen</span
                        >
                                        <span
                                                class="col-sm-1 badge bg-light text-dark me-2 tag2"
                                        >Lón(L)</span
                                        >
                                    </div>
                                    <div class="col-sm col-md-6 col-lg-12 pr-sm-0">
                                        <div
                                                class="mt-sm-2 mt-lg-3 ms-sm-0 row w-100 custom_quantity_container"
                                        ></div>
                                        <div class="row w-100">
                                            <p
                                                    class="ms-sm-2 mt-sm-4 mb-sm-4 ps-sm-1 fs-2 d-sm-block d-md-block d-lg-none"
                                            >
                                                9,063,726₫
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-6 col-lg-12"></div>
                    </div>
                </div>
                <div class="container ps-sm-0 border rounded" id="item2">
                    <div class="row-sm ps-0">
                        <div class="col-sm col-md-6 col-lg-12">
                            <div class="row-sm d-lg-flex container-fluid pe-sm-0">
                                <div
                                        class="col-sm col-md-2 col-lg-2 ps-sm-0 d-flex justify-content-center"
                                >
                                    <img
                                            class="w-50 img-fluid"
                                            src="${pageContext.request.contextPath}/assets/images/belt_cart_1.png"
                                            alt="black belt"
                                            height="200px"
                                    />
                                </div>
                                <div
                                        class="col-sm col-md-6 col-lg-10 border-dark ps-sm-0 pr-sm-0 mt-sm-4"
                                >
                                    <div
                                            class="d-flex justify-content-between custom_title_container"
                                    >
                                        <h4 class="custom_size--19 fw-light d-lg-none title">
                                            Thắt lưng da hai mặt màu đen với khóa xoay
                                        </h4>
                                        <h4 class="custom_size--19 fw-light d-none d-lg-block">
                                            Thắt lưng da hai mặt màu đen với khóa xoay
                                        </h4>
                                        <h4
                                                class="d-sm-none d-md-none d-lg-block custom_size--19 fw-light custom_price_container"
                                        >
                                            9,063,726₫
                                        </h4>
                                    </div>

                                    <div class="row mt-sm-2 custom_tag_container">
                        <span
                                class="col-sm-1 ms-sm-2 badge bg-light text-dark me-2 tag1"
                        >Đen</span
                        >
                                        <span
                                                class="col-sm-1 badge bg-light text-dark me-2 tag2"
                                        >Lón(L)</span
                                        >
                                    </div>
                                    <div class="col-sm col-md-6 col-lg-12 pr-sm-0">
                                        <div
                                                class="mt-sm-2 mt-lg-3 ms-sm-0 row w-100 custom_quantity_container"
                                        ></div>
                                        <div class="row w-100">
                                            <p
                                                    class="ms-sm-2 mt-sm-4 mb-sm-4 ps-sm-1 fs-2 d-sm-block d-md-block d-lg-none"
                                            >
                                                9,063,726₫
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-6 col-lg-12"></div>
                    </div>
                </div>
                <div class="py-2 w-100 d-flex justify-content-between mt-3">
                    <p
                            class="col-sm-10 ms-sm-2 mt-sm-2 mb-sm-2 ps-sm-0 ms-4 ms-2 d-md-none d-lg-none"
                            style="margin-left: 37px"
                    >
                        <strong>Vận chuyển</strong>: 424.132đ (Nhận hàng từ 5 - 25 tháng
                        11)
                    </p>
                    <p
                            class="d-sm-none d-md-none d-lg-block col-lg-6 mt-lg-2 fs-6 ps-sm-0 my-1"
                    >
                        <strong>Vận chuyển</strong>: 424.132đ (Nhận hàng từ 5 - 25 tháng
                        11)
                    </p>
                    <button
                            class="btn btn-dark fs-6 custom__btn"
                            data-bs-toggle="modal"
                            data-bs-target="#exampleModal"
                    >
                        Gửi yêu cầu hủy đơn hàng
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/frontend/header_footer/footer.jsp"/>

</body>
</html>
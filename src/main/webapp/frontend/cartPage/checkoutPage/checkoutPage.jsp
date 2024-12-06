<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Xác nhận đơn hàng</title>
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
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/fontawesome-free-6.6.0-web/fontawesome-free-6.6.0-web/css/all.css"
    />
    <script src="${pageContext.request.contextPath}/js/checkout.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/general.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/checkoutPage.css"/>
</head>

<body>
<jsp:include page="/frontend/header_footer/header.jsp"/>

<div class="container-sm ps-0 mb-5" style="margin-top: 208px">
    <h2 class="fw-light">Vui lòng xác nhận và gửi đơn đặt hàng của bạn</h2>
    <h4 class="mb-1 mt-5 ms-0 ps-0 fw-light">Vận chuyển và thanh toán</h4>
    <div class="row mt-2 mb-5 px-0 py-0 h-50" style="min-height: 550.9px">
        <div class="col d-flex custom-width custom__boxshadow p-0 m-0">
            <div class="col-sm pr-0 mt-4">
                <h4 class="ms-4">Thông tin thanh toán</h4>
                <p class="ms-4">huỳnh minh thắng</p>
                <p class="ms-4">ktx khu b</p>
                <p class="ms-4">THÀNH PHỐ HỒ CHÍ MINH</p>
                <p class="ms-4">Hồ Chí Minh 700000</p>
                <p class="ms-4">+84 35-617-6054</p>
                <button
                        class="p-2 border-dark rounded custom_hover ms-4 mt-2 fw-bold"
                        id="openFormButton"
                >
                    Thay đổi
                </button>
            </div>
            <div class="col-sm">
                <h4 class="mt-4">Phương thức thanh toán</h4>
                <div class="w-5 h-5">
                    <img
                            class="w-5 h-5"
                            src="${pageContext.request.contextPath}/assets/icons/gPay.svg"
                            alt="googlePay"
                            style="max-width: 50px"
                    />
                </div>
                <button
                        class="openFormButtonPay p-2 border-dark rounded custom_hover mt-2 fw-bold"
                >
                    Thay đổi
                </button>
            </div>
        </div>

        <div id="popupForm" class="popup">
            <div class="popup-content">
                <div class="popup-content--title">
                    <p>Chọn địa chỉ giao hàng</p>
                </div>

                <div class="popup-content--desc">
                    <div class="popup--content--userInfo--action">
                        <div class="popup--content--userdesc">
                            <span>Mặc định</span>
                            <p class="name__field1">huynhminhthang</p>
                            <p class="address__field1">ktx khu b</p>
                            <p class="city__field1">THÀNH PHỐ HỒ CHÍ MINH</p>
                            <p class="number__field1">+84356176054</p>
                        </div>
                        <div class="popup--content--right">
                            <div class="popup--content--button">
                                <button
                                        class="popup--content--submit custom__btn"
                                        id="submit1"
                                >
                                    Giao đến đây
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="popup-content--desc">
                    <div class="popup--content--userInfo--action">
                        <div class="popup--content--userdesc">
                            <span>Mặc định</span>
                            <p class="name__field1">huynhminhthang</p>
                            <p class="address__field1">ktx khu b</p>
                            <p class="city__field1">THÀNH PHỐ HỒ CHÍ MINH</p>
                            <p class="number__field1">+84356176054</p>
                        </div>
                        <div class="popup--content--right">
                            <div class="popup--content--button">
                                <button
                                        class="popup--content--submit custom__btn"
                                        id="submit2"
                                >
                                    Giao đến đây
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="popUpPayment" class="popup">
            <div class="popup-content">
                <div class="popup-content--desc">
                    <div class="popup--content--userInfo--action">
                        <div class="popup--content--userdesc">
                            <span class="paymentMethod">Google Pay</span>
                            <img src="${pageContext.request.contextPath}/assets/icons/gPay.svg" alt="googlepay"/>
                        </div>
                        <div class="popup--content--right">
                            <div class="popup--content--button">
                                <button class="popup--content--submitPayment" id="submit2">
                                    Sử dụng
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="popup-content--desc">
                    <div class="popup--content--userInfo--action">
                        <div class="popup--content--userdesc">
                            <span class="paymentMethod">Bank</span>
                            <img
                                    src="${pageContext.request.contextPath}/assets/icons/footer_trustbadge 1.svg"
                                    alt="googlepay"
                                    style="margin-top: 6px"
                            />
                        </div>
                        <div class="popup--content--right">
                            <div class="popup--content--button">
                                <button class="popup--content--submitPayment" id="submit2">
                                    Sử dụng
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="popup-content--desc">
                    <div class="popup--content--userInfo--action">
                        <div
                                class="popup--content--userdesc d-flex justify-content-center align-items-center"
                        >
                            <span class="paymentMethod">Thanh toán khi nhận hàng</span>
                        </div>
                        <div class="popup--content--right">
                            <div class="popup--content--button">
                                <button class="popup--content--submitPayment" id="submit2">
                                    Sử dụng
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-6 ms-5 ps-0">
            <div class="border-bottom pb-2 mb-3">
                <h5 class="fw-bold">Tóm tắt đơn hàng</h5>
            </div>
            <div class="d-flex justify-content-between mb-2">
                <p class="mb-0">2 sản phẩm</p>
                <p class="mb-0">1,360,000₫</p>
            </div>
            <div class="d-flex justify-content-between mb-2">
                <p class="mb-0">Vận chuyển</p>
                <p class="mb-0">70,000₫</p>
            </div>
            <div class="border-top pt-2">
                <div class="d-flex justify-content-between fw-bold mb-2">
                    <p class="mb-0">Tổng cộng</p>
                    <p class="mb-0">1,430,000₫</p>
                </div>
                <p class="text-muted small mb-0">(bao gồm cả thuế)</p>
            </div>
            <a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-dark mt-4 fs-4 custom__btn w-100"
               id="openFormButtonPayment">
                Thanh toán với Google
            </a>
            <div class="input-group custom_input_group custom_input--btn mt-4">
                <input
                        type="text"
                        class="form-control custom_input--btn-group__input rounded-pill-start fs-5"
                        placeholder="Nhập coupon"
                />
                <button
                        class="btn btn-dark input-group-text custom_button_design custom_input--btn-group__btn rounded-pill-end"
                >
                    Áp dụng
                </button>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/frontend/header_footer/footer.jsp"/>

</body>
</html>

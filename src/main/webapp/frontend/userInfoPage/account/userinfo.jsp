<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>THOMAS - Tài khoản</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/general.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userInfo.css"/>
</head>
<body>
<jsp:include page="/frontend/header_footer/header.jsp"/>
<div class="breadcumb__container">
    <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="${pageContext.request.contextPath}/index.jsp">Trang chủ</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Người dùng</li>
        </ol>
    </nav>
</div>
<div class="container-lg mt-3">
    <div
            class="d-flex justify-content-between"
            style="white-space: nowrap; margin-top: 150px"
    >
        <div
                class="d-inline-block fw-bold custom_active mb-4"
                style="padding: 12px"
        >
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
        <div class="d-inline-block fw-bold" style="padding: 12px">
            <a
                    class="text-dark text-decoration-none custom_size--19"
                    href="${pageContext.request.contextPath}/frontend/orderView/ordersView.jsp"
            >Đơn hàng</a
            >
        </div>
    </div>
    <div class="container container-sm border custom_rounded bg-white">
        <div class="d-flex flex-column mt-4 mb-2 ms-2">
            <h3 class="font-weight-bold custom_size--19">Chào Thang</h3>
            <h5 class="custom_size--16">Họ tên</h5>
            <p class="custom_size--16">Huynh Minh Thang</p>
            <h5 class="font-weight-bold custom_size--19">Gia nhập từ</h5>
            <p class="custom_size--16">24 Tháng 11,2024</p>
        </div>
    </div>
    <div class="container container-sm border custom_rounded mt-4">
        <div class="d-flex flex-column mt-4 mb-2 ms-2 border-bottom ms-2">
            <h3 class="font-weight-bold custom_size--19">Email</h3>
            <h6 class="custom_size--16">Email hiện tại</h6>
            <p class="custom_size--16">huynhminhthang246@gmail.com</p>
        </div>
        <div class="d-flex flex-column m-2" style="width: 90%">
            <p class="font-weight-bold mb-1 fs-4 ps-0 mt-4 custom_size--19">
                Thay đổi email
            </p>
            <p class="mb-1 mt-2 custom_size--16">Email của bạn</p>
            <input
                    type="email"
                    class="form-control form-control-md custom__border custom-lg-input custom_size--16 custom_design"
                    placeholder="Nhập email mới"
            />
        </div>
        <div class="d-flex flex-column m-2" style="width: 90%">
            <p class="mb-1 mt-2 custom_size--16">Mật khẩu</p>
            <input
                    type="password"
                    class="form-control form-control-md custom__border custom custom-lg-input custom_size--16 custom_design"
                    placeholder="Nhập mật khẩu"
            />
        </div>
        <div class="d-flex flex-column m-2" style="width: 90%">
            <p class="mb-1 mt-2 custom_size--16">Nhập lại mật khẩu</p>
            <input
                    type="password"
                    class="form-control form-control-md custom__border custom-lg-input custom_size--16 custom_design"
            />
        </div>
        <div class="d-flex mt-3 mb-5 ms-2">
            <button class="btn btn-dark px-3 py-2 custom__btn custom_size--13">
                Thay đổi email
            </button>
        </div>
    </div>
    <div class="container container-sm border custom_rounded mt-4 mb-5">
        <div
                class="d-flex flex-column mt-4 mb-2 ml-2 border-bottom"
                style="width: 70%"
        >
            <h3 class="font-weight-bold ms-3 custom_size--19">Mật khẩu</h3>
            <h5 class="ms-3 custom_size--16">Thay đổi mật khẩu của bạn</h5>
        </div>
        <div class="d-flex flex-column m-2" style="width: 90%">
            <p class="mb-1 mt-2 ms-2 custom_size--16">Mật khẩu hiện tại</p>
            <input
                    type="password"
                    class="form-control form-control-md custom__border custom-lg-input ms-2 custom_design custom_size--16"
                    placeholder="Mật khẩu hiện tại"
            />
        </div>
        <div class="d-flex flex-column ms-2" style="width: 90%">
            <p class="mb-1 mt-2 ms-2 custom_size--16">Mật khẩu mới</p>
            <input
                    type="password"
                    class="form-control form-control-md custom__border custom-lg-input ms-2 custom_design custom_size--16"
                    placeholder="Nhập mật khẩu mới"
            />
        </div>
        <div class="d-flex flex-column ms-2" style="width: 90%">
            <p class="mb-1 mt-2 ms-2 custom_size--16">Nhập lại mật khẩu</p>
            <input
                    type="password"
                    class="form-control form-control-md custom__border custom-lg-input ms-2 custom_design custom_size--16"
                    placeholder=""
            />
        </div>
        <div class="d-flex mt-3 mb-5 ms-2">
            <button class="btn btn-dark px-3 py-2 custom__btn ms-2">
                Thay đổi mật khẩu
            </button>
        </div>
    </div>
</div>

<jsp:include page="/frontend/header_footer/footer.jsp"/>

</body>
</html>

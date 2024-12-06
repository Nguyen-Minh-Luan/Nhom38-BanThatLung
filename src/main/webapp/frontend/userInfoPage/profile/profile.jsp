<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Thomas - Cá nhân</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/profile.css" />
  </head>
  <body>
  <jsp:include page="/frontend/header_footer/header.jsp"/>
  <header id="header"></header>
    <div class="breadcumb__container">
      <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath}/index.jsp">Trang chủ</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Hồ sơ</li>
        </ol>
      </nav>
    </div>
    <div class="container-lg mt-3">
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
        <div class="d-inline-block fw-bold custom_active" style="padding: 12px">
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
            href="${pageContext.request.contextPath}/frontend/userInfoPage/orderView/ordersView.jsp"
            >Đơn hàng</a
          >
        </div>
      </div>
      <div class="container container-sm border rounded">
        <div class="d-flex mt-3">
          <p>Ảnh đại diện</p>
          <input type="file" class="ms-3" />
        </div>
        <div class="d-flex flex-column border-bottom">
          <img
            src="${pageContext.request.contextPath}/assets/images/sampleProfile1.jpg"
            alt="profile"
            class="rounded-circle"
            width="100"
            height="100"
          />
          <p>Phải là file .png .jpg hoặc .jpeg và 400x400</p>
        </div>
        <div class="d-flex mt-3">
          <p>Tên của bạn:</p>
          <p class="ms-4">Huynh Thang</p>
        </div>
        <div class="d-flex mt-3 border-bottom">
          <p class="font-weight-bold">Giới tính:</p>
          <div class="d-flex justify-content-center align-items-center ms-4">
            <input class="mb-3 ms-3" type="radio" name="gender" />
            <p class="mb-3 ms-2">Nam</p>
            <input class="mb-3 ms-2" type="radio" name="gender" />
            <p class="mb-3 ms-2">Nữ</p>
          </div>
        </div>
        <div class="d-flex mt-3">
          <p class="font-weight-bold mr-5">Ngày sinh:</p>
          <div class="d-flex justify-content-center align-items-center ml-3">
            <input
              class="mb-3 ms-4"
              type="month"
              name="month"
              placeholder="Month"
              min="1"
              max="12"
            />
            <input
              class="mb-3 ms-2"
              type="datetime"
              name="day"
              placeholder="Day"
              min="1"
              max="31"
            />
          </div>
        </div>
      </div>
      <div class="d-flex mt-3 mb-5 ml-2">
        <button class="btn btn-dark px-4 py-2 custom__btn">Lưu</button>
      </div>
    </div>

    <jsp:include page = "/frontend/header_footer/footer.jsp" />

  </body>
</html>
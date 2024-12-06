<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chỉnh sửa sản phẩm - Ảnh</title>
    <link
      rel="icon"
      href="${pageContext.request.contextPath}/assets/icons/favicon.svg"
      type="image/x-icon"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/fontawesome-free-6.6.0-web/fontawesome-free-6.6.0-web/css/all.css"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/general.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminGeneral.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ManageProductPage.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/editProductImagePage.css" />
  </head>
  <body>
    <div class="d-flex w-100">
      <jsp:include page="/frontend/AdminPage/AdminSidebar/adminSideBar.jsp"/>
      <div class="b-example-divider col-1"></div>
      <div class="col-11 bg-light">
        <div class="d-flex flex-column mt-5">
          <div class="ms-5 mt-5">
            <h1 class="fw-bold">Chỉnh sửa sản phẩm</h1>
            <h3 class="fs-4">Chỉnh sửa hoặc xóa sản phẩm có sẵn</h3>
            <div
              class="overflow-auto d-flex justify-content-left fs-3 mt-5 mb-5"
              style="white-space: nowrap"
            >
              <div class="d-inline-block p-3 pb-5">
                <a
                  class="text-dark text-decoration-none fs-4"
                  href="${pageContext.request.contextPath}/frontend/AdminPage/ManageProducts/allProductPage/editProductPage/editProductPage.jsp"
                  >Tổng quan</a
                >
              </div>
              <div class="d-inline-block p-3 ms-0 pb-5">
                <a
                  class="text-dark text-decoration-none fs-4 custom_active"
                  href="${pageContext.request.contextPath}/frontend/AdminPage/ManageProducts/allProductPage/editProductImagePage/editProductImagePage.jsp"
                  >Hình ảnh</a
                >
              </div>
              <div class="d-inline-block p-3 pb-5">
                <a
                  class="text-dark text-decoration-none fs-4"
                  href="${pageContext.request.contextPath}/frontend/AdminPage/ManageProducts/allProductPage/editProductQuantityPage/editProductQuanitityPage.jsp"
                  >Số lượng</a
                >
              </div>
            </div>
          </div>
          <div
            class="d-flex flex-column justify-content-left align-items-left pb-5"
          >
            <div class="d-flex flex-column align-items-left mt-5 w-50">
              <div class="d-flex mb-3">
                <p
                  class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5 me-4"
                >
                  Hình ảnh
                </p>
                <input
                  type="file"
                  class="col form-control form-control-lg custom_design custom__border"
                  placeholder="Nhập số lượng khách hàng có thể chọn"
                />
              </div>
              <div class="d-flex mb-3">
                <p
                  class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5 me-4"
                >
                  Hình ảnh
                </p>
                <input
                  type="file"
                  class="col form-control form-control-lg custom_design custom__border"
                  placeholder="Nhập số lượng khách hàng có thể chọn"
                />
              </div>
              <div class="d-flex mb-3">
                <p
                  class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5 me-4"
                >
                  Hình ảnh
                </p>
                <input
                  type="file"
                  class="col form-control form-control-lg custom_design custom__border"
                  placeholder="Nhập số lượng khách hàng có thể chọn"
                />
              </div>
              <div class="d-flex mb-3">
                <p
                  class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5 me-4"
                >
                  Hình ảnh
                </p>
                <input
                  type="file"
                  class="col form-control form-control-lg custom_design custom__border"
                  placeholder="Nhập số lượng khách hàng có thể chọn"
                />
              </div>
              <div class="d-flex mb-3">
                <p
                  class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5 me-4"
                >
                  Hình ảnh
                </p>
                <input
                  type="file"
                  class="col form-control form-control-lg custom_design custom__border"
                  placeholder="Nhập số lượng khách hàng có thể chọn"
                />
              </div>
              <div class="row d-flex justify-content-end me-1">
                <button class="btn btn-dark" style="width: 10%; height: 47px">
                  Lưu lại
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page = "/frontend/header_footer/footer.jsp" />

</html>

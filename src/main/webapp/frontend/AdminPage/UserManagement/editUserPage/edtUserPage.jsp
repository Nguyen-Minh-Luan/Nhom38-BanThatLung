<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chỉnh sửa người dùng</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminGeneral.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userManagementPage.css" />

  </head>
  <body>
    <div class="d-flex w-100">
      <jsp:include page="/frontend/AdminPage/AdminSidebar/adminSideBar.jsp"/>
      <div class="b-example-divider col-1"></div>
      <div class="col-11 bg-light">
        <div class="d-flex flex-column">
          <div class="ms-5 mt-5">
            <h1 class="fw-bold">Chỉnh sửa người dùng</h1>
            <h3 class="fs-4">Chỉnh sửa hoặc xóa người dùng</h3>
          </div>
        </div>
        <div class="d-flex flex-column">
          <div class="w-100">
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Hình ảnh
              </p>
              <div class="col">
                <img
                  class="rounded-pill"
                  src="../../../assets/images/sampleProfile1.jpg"
                />
              </div>
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Họ và tên
              </p>
              <input
                type="text"
                class="col form-control form-control-lg custom_design custom__border"
                style="max-width: 35%"
                disabled
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Ngày sinh
              </p>
              <input
                type="date"
                class="col form-control form-control-lg custom_design custom__border"
                style="max-width: 35%"
                placeholder="Nhập số lượng khách hàng có thể chọn"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Email
              </p>
              <input type="email" class="col form-control form-control-lg
              custom_design custom__border" style="max-width: 35%;"Nhập email
              mới" />
            </div>
            <div class="row d-flex justify-content-center mb-3 w-50 ms-5 ps-4">
              <button class="btn btn-dark" style="width: 20%; height: 47px">
                Lưu lại
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page = "/frontend/header_footer/footer.jsp" />

  </body>
</html>

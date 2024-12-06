<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tạo sản phẩm mới</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ManageProductPage.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/createNewProductPage.css" />

  </head>
  <body>
    <div class="d-flex w-100">
      <jsp:include page="/frontend/AdminPage/AdminSidebar/adminSideBar.jsp"/>
      <div class="b-example-divider col-1"></div>
      <div class="col-11 bg-light">
        <div class="d-flex flex-column mt-5">
          <div class="mt-5 ms-5">
            <h1 class="fw-bold">Tạo sản phẩm mới</h1>
          </div>
        </div>
        <div class="d-flex flex-column justify-content-left align-items-left">
          <div class="d-flex flex-column mt-5 w-50">
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Ảnh bìa
              </p>
              <input
                type="file"
                class="col form-control form-control-lg custom_design custom__border"
                placeholder="Nhập tên sản phẩm"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Ảnh 2
              </p>
              <input
                type="file"
                class="col form-control form-control-lg custom_design custom__border"
                placeholder="Nhập tên sản phẩm"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Ảnh 3
              </p>
              <input
                type="file"
                class="col form-control form-control-lg custom_design custom__border"
                placeholder="Nhập tên sản phẩm"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Ảnh 4
              </p>
              <input
                type="file"
                class="col form-control form-control-lg custom_design custom__border"
                placeholder="Nhập tên sản phẩm"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Ảnh 5
              </p>
              <input
                type="file"
                class="col form-control form-control-lg custom_design custom__border"
                placeholder="Nhập tên sản phẩm"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Tên
              </p>
              <input
                type="text"
                class="col form-control form-control-lg custom_design custom__border"
                placeholder="Nhập tên sản phẩm"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Kích thước
              </p>
              <select
                class="col form-control form-control-lg custom_design custom__border"
                name="size"
                id="size"
              >
                <option value="XS">XS</option>
                <option value="S">S</option>
                <option value="M">M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
                <option value="XXL">XXL</option>
              </select>
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Giá
              </p>
              <input
                type="text"
                class="col form-control form-control-lg custom_design custom__border"
                placeholder="Nhập giá sản phẩm"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Số lượng
              </p>
              <input
                type="text"
                class="col form-control form-control-lg custom_design custom__border"
                placeholder="Nhập số lượng khách hàng có thể chọn"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Tồn kho
              </p>
              <input
                type="text"
                class="col form-control form-control-lg custom_design custom__border"
                placeholder="Nhập tổng số lượng của sản phẩm"
              />
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-center fs-5"
              >
                Giới tính
              </p>
              <div class="col d-flex align-items-center">
                <div class="form-check me-4 d-flex align-items-center">
                  <input
                    class="form-check-input me-3 mb-1 custom_check--black"
                    type="radio"
                    name="exampleRadios"
                    id="exampleRadios1"
                    value="option1"
                    checked
                  />
                  <label class="form-check-label fs-5" for="exampleRadios1">
                    Nam
                  </label>
                </div>
                <div class="form-check me-4 d-flex align-items-center">
                  <input
                    class="form-check-input me-3 mb-1 custom_check--black"
                    type="radio"
                    name="exampleRadios"
                    id="exampleRadios2"
                    value="option2"
                  />
                  <label class="form-check-label fs-5" for="exampleRadios2">
                    Nữ
                  </label>
                </div>
              </div>
            </div>
            <div class="row mb-3">
              <p
                class="col-3 mb-0 d-flex justify-content-end align-items-top fs-5"
              >
                Mô tả
              </p>
              <textarea
                class="col no-resize form-control custom_design custom__border"
                style="resize: none"
                rows="10"
              >
              </textarea>
            </div>
            <div class="row d-flex justify-content-end mb-3">
              <button class="btn btn-dark" style="width: 15%; height: 47px">
                Tạo sản phẩm
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page = "/frontend/header_footer/footer.jsp" />

</html>

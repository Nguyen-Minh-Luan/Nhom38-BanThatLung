<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Sản phẩm hết hàng</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminGeneral.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ManageProductPage.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/outOfStockProductPage.css"/>
</head>
<body>
<div class="d-flex w-100">
    <jsp:include page="/frontend/AdminPage/AdminSidebar/adminSideBar.jsp"/>
    <div class="b-example-divider col-1"></div>
    <div class="col-11 bg-light">
        <div class="d-flex flex-column mt-5">
            <div class="ms-5 mt-5">
                <h1 class="fw-bold">Quản lý sản phẩm</h1>
                <h3 class="fs-4">Chỉnh sửa hoặc xóa sản phẩm</h3>
            </div>
        </div>
        <div class="d-flex flex-column justify-content-left align-items-left">
            <div class="d-flex align-items-center mt-5 ms-5">
                <p class="mb-0 me-5">Tìm kiếm sản phẩm</p>
                <a
                        class="btn btn-light border-2 border-dark"
                        href="../createNewProductPage/createNewProductPage.jsp"
                >
                    Tạo 1 sản phẩm mới
                </a>
            </div>
            <div class="px-5">
                <div class="d-flex flex-column mt-5 ms-3">
                    <p class="fw-bold">Filter</p>
                    <div
                            class="d-flex rounded custom_design custom_effect--hover"
                            style="width: 30%"
                    >
                        <img
                                class="ms-2 me-2 py-2"
                                src="${pageContext.request.contextPath}/assets/icons/search_filter.svg"
                        />
                        <input
                                class="w-100 border-0 custom_shadow py-2"
                                placeholder="Nhập vào tên sản phẩm"
                        />
                    </div>
                </div>
                <div class="d-flex justify-content-center mt-5 w-100">
                    <table class="table text-center">
                        <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Doanh số</th>
                            <th scope="col">Độ ưu tiên</th>
                            <th scope="col">Hành động</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-11 bg-light">
        <div class="d-flex flex-column mt-5">
            <div class="container mt-5">
                <h1 class="fw-bold">Quản lý sản phẩm</h1>
                <h3 class="fs-4">Chỉnh sửa hoặc xóa sản phẩm</h3>
                <div
                        class="overflow-auto d-flex justify-content-left fs-3 mt-5"
                        style="white-space: nowrap"
                >
                    <div class="d-inline-block p-3 ps-0">
                        <a
                                class="text-dark text-decoration-none fs-4"
                                href="../allProductPage/ManageProductPage.jsp"
                        >Tất cả các sản phẩm</a
                        >
                    </div>
                    <div class="d-inline-block p-3 ms-0">
                        <a
                                class="text-dark text-decoration-none fs-4"
                                href="../hotProductPage/hotProductPage.jsp"
                        >Sản phẩm bán chạy</a
                        >
                    </div>
                    <div class="d-inline-block p-3">
                        <a
                                class="text-dark text-decoration-none fs-4 custom_active"
                                href="./outOfStockProductPage.html"
                        >Sản phẩm hết hàng</a
                        >
                    </div>
                </div>
            </div>
        </div>
        <div
                class="d-flex flex-column justify-content-center align-items-center custom_background"
        >
            <div class="container d-flex align-items-center mt-4 mb-4">
                <p class="mb-0 me-5">Tìm kiếm sản phẩm</p>
                <a
                        class="btn btn-light border-2 border-dark"
                        href="../createNewProductPage/createNewProductPage.jsp"
                >
                    Tạo 1 sản phẩm mới
                </a>
            </div>
            <div class="container custom_background--white px-0">
                <div class="d-flex flex-column mt-5 ms-3">
                    <p class="fw-bold">Filter</p>
                    <div
                            class="d-flex rounded custom_design custom_effect--hover"
                            style="width: 40%"
                    >
                        <img
                                class="ms-2 me-2 py-2"
                                src="../../../assets/icons/search_filter.svg"
                        />
                        <input
                                class="w-100 border-0 custom_shadow py-2"
                                placeholder="Nhập vào tên sản phẩm"
                        />
                    </div>
                </div>
                <div class="d-flex justify-content-center mt-5 w-100 pe-5">
                    <table class="table text-center">
                        <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Doanh số</th>
                            <th scope="col">Độ ưu tiên</th>
                            <th scope="col">Hành động</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th class="p-4 fs-5" scope="row">1</th>
                            <td class="p-4 fs-5">Thắt lưng da</td>
                            <td class="p-4 fs-5">2342</td>
                            <td class="p-4 fs-5">123</td>
                            <td class="p-4 fs-5">
                                <a
                                        class="text-decoration-none"
                                        href="../allProductPage/editProductPage/editProductPage.jsp"
                                >
                                    <img
                                            class="me-3"
                                            src="../../../assets/icons/edit.svg"
                                            width="24px"
                                    />
                                </a>
                                <button
                                        class="custom_button custom_click"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                >
                                    <img
                                            src="../../../assets/icons/delete.svg"
                                            width="24px"
                                    />
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
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
                <h5 class="modal-title" id="exampleModalLabel">Xóa sản phẩm</h5>
                <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                ></button>
            </div>
            <div class="modal-body">
                <h4>Bạn có muốn xóa sản phẩm này</h4>
            </div>
            <div class="modal-footer">
                <button
                        type="button"
                        class="btn btn-secondary"
                        data-bs-dismiss="modal"
                >
                    Đóng
                </button>
                <button type="button" class="btn btn-dark">Xóa</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page = "/frontend/header_footer/footer.jsp" />

</body>
</html>

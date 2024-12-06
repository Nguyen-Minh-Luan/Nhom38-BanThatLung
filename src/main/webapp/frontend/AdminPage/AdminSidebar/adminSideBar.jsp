<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div
  class="col-2 p-3 bg-light d-flex flex-column justify-content-between"
  style="width: 280px; height: 1080px;"
>
  <div class="uppser_section" style="margin-bottom: auto">
    <a
      href="${pageContext.request.contextPath}/index.jsp"
      class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom"
    >
      <svg class="bi me-2" width="30" height="24">
        <use xlink:href="#bootstrap"></use>
      </svg>
      <span class="fs-5 fw-semibold">Thomas - Admin</span>
    </a>
    <ul class="list-unstyled ps-0">
      <li class="mb-1">
        <a
          href="${pageContext.request.contextPath}/frontend/AdminPage/ManageProducts/allProductPage/ManageProductPage.jsp"
          id="allProduct"
          class="btn btn-toggle align-items-center rounded collapsed"
          data-bs-toggle="collapse"
          data-bs-target="#dashboard-collapse"
          aria-expanded="false"
        >
          Sản phẩm
        </a>
        <div class="collapse" id="dashboard-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small p-2">
            <li>
              <a
                id="allProduct"
                href="${pageContext.request.contextPath}/frontend/AdminPage/ManageProducts/allProductPage/ManageProductPage.jsp"
                class="link-dark rounded p-2"
                >Tất cả sản phẩm</a
              >
            </li>
            <li>
              <a
                id="hotSelling"
                href="${pageContext.request.contextPath}/frontend/AdminPage/ManageProducts/hotProductPage/hotProductPage.jsp"
                class="link-dark rounded p-2"
                >Sản phẩm bán chạy</a
              >
            </li>
            <li>
              <a
                id="SoldProduct"
                href="${pageContext.request.contextPath}/frontend/AdminPage/ManageProducts/outOfStockProductPage/outOfStockProductPage.jsp"
                class="link-dark rounded"
                >Sản phẩm hết hàng</a
              >
            </li>
          </ul>
        </div>
      </li>
      <li class="border-top my-3"></li>
      <li class="mb-1">
        <a
          id="userPage"
          class="btn ms-3 align-items-center rounded custom_hover"
          href="${pageContext.request.contextPath}/frontend/AdminPage/UserManagement/userManagementPage.jsp"
        >
          Người dùng
        </a>
      </li>
      <li class="mb-1">
        <a
          id="ordersPage"
          class="btn ms-3 align-items-center rounded custom_hover"
          href="${pageContext.request.contextPath}/frontend/AdminPage/orderViewPage/orderView.jsp"
        >
          Orders
        </a>
      </li>
    </ul>
  </div>

  <div class="dropdown mb-3" style="margin-top: auto">
    <a
      href="#"
      class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle"
      id="dropdownUser2"
      data-bs-toggle="dropdown"
      aria-expanded="false"
    >
      <img
        src="https://github.com/mdo.png"
        alt=""
        width="32"
        height="32"
        class="rounded-circle me-2"
      />
      <strong>mdo</strong>
    </a>
    <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
      <li><a class="dropdown-item" href="#">Sign out</a></li>
    </ul>
  </div>
</div>

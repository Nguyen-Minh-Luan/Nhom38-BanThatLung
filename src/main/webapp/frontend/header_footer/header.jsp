<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div id="dimmer" class="dimmer"></div>
<nav class="navbar navbar-expand p-12 bg-white rounded" id="navbar">
  <div class="container-fluid-center"></div>
  <div
    class="col-sm-3 pl-sm-4 pr-sm-0 col-md-4 justify-content-sm-start d-lg-none d-xl-none col header__navbar header__navbar--center d-flex justify-content-center"
  >
    <button id="menuButton" class="btn btn-light h-sm-100 ms-2">
      <img src="${pageContext.request.contextPath}/assets/icons/menu.svg" />
    </button>
  </div>

  <div id="overlay" class="d-sm-flex overlay" style="width: 45%">
    <div class="overlay__content w-100">
      <div
        class="overlay__header d-flex w-100 justify-content-center align-items-center mt-2"
      >
        <h3 class="header__title mb-0">THOMAS</h3>
        <button id="closeButton" class="btn ms-5">
          <img src="${pageContext.request.contextPath}/assets/icons/close.svg" />
        </button>
      </div>
      <div
        class="overlay__body d-flex align-items-left justify-content-between"
        style="height: 500px"
      >
        <ul
          class="navbar-nav d-flex flex-column list-unstyled fs-3 w-100"
          style="font-size: 1.5rem"
        >
          <hr class="w-100 ms-2" />
          <li class="nav-item mx-3">
            <a href="${pageContext.request.contextPath}/index.jsp" class="nav-link text-dark"
              >Home</a
            >
          </li>
          <hr class="w-100 ms-2" />
          <li class="nav-item mx-3">
            <a href="${pageContext.request.contextPath}/frontend/collectionPage/collectionsPage.jsp" class="nav-link text-dark">Bộ sưu tập</a>
          </li>
          <hr class="w-100 ms-2" />
          <li class="nav-item mx-3">
            <a href="${pageContext.request.contextPath}/frontend/menPage/menPage.jsp" class="nav-link text-dark">Nam</a>
          </li>
          <hr class="w-100 ms-2" />
          <li class="nav-item mx-3">
            <a href="${pageContext.request.contextPath}/frontend/womenPage/womenPage.jsp" class="nav-link text-dark"
              >Nữ</a
            >
          </li>
          <hr class="w-100 ms-2" />
          <li class="nav-item mx-3">
            <a href="${pageContext.request.contextPath}/frontend/signInPage/signInPage.jsp" class="nav-link text-dark"
              >Đăng nhập / Đăng ký</a
            >
          </li>
          <hr class="w-100 ms-2" />
        </ul>
      </div>
    </div>
  </div>
  <a
    href=""
    class="navbar-brand col-3 d-sm-none d-md-none d-lg-block"
    id="logo"
  >
    THOMAS
  </a>

  <a
    href=""
    class="navbar-brand d-sm-block ms-sm-3 ms-5 mr-5 d-md-block d-lg-none"
    id="logo"
  >
    THOMAS
  </a>

  <ul class="navbar-nav col-6 navitem__group d-sm-none d-md-none d-lg-flex">
    <li class="nav-item">
      <a href="${pageContext.request.contextPath}/index.jsp" class="nav-link">Trang Chủ</a>
    </li>
    <li class="nav-item">
      <a href="${pageContext.request.contextPath}/frontend/collectionPage/collectionsPage.jsp" class="nav-link"
        >Bộ Sưu Tập</a
      >
    </li>
    <li class="nav-item dropdown">
      <a
        class="nav-link dropdown-toggle"
        href="#"
        role="button"
        data-bs-toggle="dropdown"
        aria-expanded="false"
      >
        Nam
      </a>
      <ul class="dropdown-menu">
        <li>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/frontend/menPage/menPage.jsp"
            >Tất cả thắt lưng nam</a
          >
        </li>
        <li>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/frontend/menPage/menLeather.jsp"
            >Thắt Lưng Da Nam</a
          >
        </li>
        <li>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/frontend/menPage/menCanvas.jsp"
            >Thắt Lưng Vải Canvas Nam</a
          >
        </li>
      </ul>
    </li>
    <li class="nav-item dropdown">
      <a
        class="nav-link dropdown-toggle"
        href="#"
        role="button"
        data-bs-toggle="dropdown"
        aria-expanded="false"
      >
        Nữ
      </a>
      <ul class="dropdown-menu">
        <li>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/frontend/womenPage/womenPage.jsp"
            >Tất cả thắt lưng nữ</a
          >
        </li>
        <li>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/frontend/womenPage/womenLeather.jsp"
            >Thắt Lưng Da Nữ
          </a>
        </li>
        <li>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/frontend/womenPage/womenCanvas.jsp"
            >Thắt Lưng Vải Canvas Nữ</a
          >
        </li>
      </ul>
    </li>
    <li class="nav-item">
      <a href="${pageContext.request.contextPath}/frontend/allProduct/allProduct1.jsp" class="nav-link">Sản Phẩm</a>
    </li>
  </ul>
  <div class="header__icon__group col-3">
    <div class="search-container">
      <input type="text" class="search-input" placeholder="Tìm kiếm..." />
      <button class="search-btn" onclick="toggleSearch()">
        <i class="fa-solid fa-magnifying-glass fa-l"></i>
      </button>
    </div>

    <a class="nav-item favorite" href="${pageContext.request.contextPath}/frontend/favoritePage/favoritePage.jsp">
      <img class="nav-icon" src="${pageContext.request.contextPath}/assets/icons/favorite.svg" alt="" />
      <span class="favorite__count">0</span>
    </a>
    <a class="nav-item user user__dropdown" href="#">
      <div class="dropdown text-end dropdown-hover">
        <a
          href="${pageContext.request.contextPath}/frontend/userInfoPage/account/userinfo.jsp"
          class="d-flex align-items-center text-decoration-none"
          id="dropdownUser"
        >
          <img
            src="${pageContext.request.contextPath}/assets/images/profile.jpg"
            alt="User Avatar"
            width="35"
            height="35"
            class="rounded-circle me-2"
          />
        </a>
        <ul
          class="dropdown-menu dropdown-menu-end text-small"
          aria-labelledby="dropdownUser"
        >
          <li>
            <a class="dropdown-item" href="${pageContext.request.contextPath}/frontend/signInPage/signInPage.jsp"
              >Đăng Nhập</a
            >
          </li>
          <li>
            <a class="dropdown-item" href="${pageContext.request.contextPath}/frontend/AdminPage/UserManagement/userManagementPage.jsp"
              >Admin</a
            >
          </li>
          <li>
            <a class="dropdown-item" href="${pageContext.request.contextPath}/frontend/signInPage/signUpPage/signUp.jsp"
              >Đăng ký</a
            >
          </li>
        </ul>
      </div>
    </a>

    <a class="nav-item cart" href="${pageContext.request.contextPath}/frontend/cartPage/cartPage.jsp">
      <img
        class="nav-icon"
        src="${pageContext.request.contextPath}/assets/icons/cart.svg"
        alt=""
        style="width: 26px; height: 26px"
      />
      <span class="nav-item favorite__count">0</span>
    </a>
  </div>
</nav>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/header.js"></script>
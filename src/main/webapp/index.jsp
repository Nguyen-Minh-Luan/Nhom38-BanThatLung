<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.List" %>
<%@ page import="com.thomas.dao.model.Belts" %>
<% List<Belts> beltsList = (List<Belts>) session.getAttribute("newArrivalsList");%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Trang Chủ</title>
    <link
            rel="shortcut icon"
            href="assets/icons/favicon.svg"
            type="image/png"
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
    <script src="js/HomePage.js"></script>
    <link rel="stylesheet" href="css/HomePage.css"/>
    <link
            rel="stylesheet"
            href="css/fontawesome-free-6.6.0-web/fontawesome-free-6.6.0-web/css/all.css"
    />
    <link rel="stylesheet" href="css/header.css"/>
    <link rel="stylesheet" href="css/footer.css"/>
    <script src="js/header.js"></script>
</head>
<body>
    <%@ include file="/frontend/header_footer/header.jsp" %>
<div
        class="position-fixed bottom-0 start-0 p-3 mb-3 ms-3 border custom_show"
        style="z-index: 11; background-color: white; border-radius: 10px"
>
    <div id="liveToast" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-header">
            <strong class="me-auto fs-2">THOMAS</strong>
        </div>
        <div class="toast-body fs-6">
            <p>Chúng tôi sử dụng cookie để cải thiện trải nghiệm của bạn.</p>
            <p>
                Bằng cách tiếp tục sử dụng trang web, bạn chấp nhận với chính sách
                cookie của chúng tôi.
            </p>
            <button class="btn btn-dark custom_toggle">Chấp Nhận</button>
            <button class="btn btn-white ms-3 border custom_toggle">
                Từ chối
            </button>
        </div>
    </div>
</div>
<section id="section_slider">
    <div class="carouselExample p-0">
        <div id="carouselExampleIndicators" class="carousel slide p-0">
            <div class="carousel-indicators">
                <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="0"
                        class="active"
                        aria-current="true"
                        aria-label="Slide 1"
                ></button>
                <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="1"
                        aria-label="Slide 2"
                ></button>
                <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="2"
                        aria-label="Slide 3"
                ></button>
                <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="3"
                        aria-label="Slide 4"
                ></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img
                            src="assets/images/homepage/z6088271163993_ca5603db38e0ae9d411375a3aeb3ef65.jpg"
                            class="d-block w-100"
                            alt="..."
                    />
                </div>
                <div class="carousel-item">
                    <img
                            src="assets/images/homepage/Beige Gray Aesthetic Photo Collage Shop New Collection Promotion Banner.png"
                            class="d-block w-100"
                            alt="..."
                    />
                </div>
                <div class="carousel-item">
                    <img
                            src="assets/images/emo.jpg"
                            class="d-block w-100"
                            alt="..."
                    />
                </div>
                <div class="carousel-item">
                    <img
                            src="assets/images/victor.jpg"
                            class="d-block w-100"
                            alt="..."
                    />
                </div>
            </div>

            <button
                    class="carousel-control-prev"
                    type="button"
                    data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev"
            >
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button
                    class="carousel-control-next"
                    type="button"
                    data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next"
            >
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
</section>
<div class="line"></div>
<section id="section_newarrival" style="margin-top: 2em">
    <div class="container-fluid newarrival__container">
        <div class="row">
            <div class="col-3">
                <div class="left__content" style="margin-top: 30%">
                    <div
                            class="title__NewArrival"
                            style="font-size: 34px; letter-spacing: 1px"
                    >
                        <span>Sản Phẩm Ưu Đãi</span>
                    </div>
                    <p>Chọn lựa những thiết kế hợp xu hướng nhất</p>
                    <a class="button__More" href="frontend/allProduct/onsale.jsp">
                        <span>XEM THÊM</span>
                    </a>
                </div>
            </div>
            <div class="col-9">
                <div id="carouselExampleControls2" class="carousel slide">
                    <div class="carousel-inner carouselInner">
                        <div class="carousel-item active">
                            <div class="card-wrapper cardWrapper">
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/46/1.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng nam da rắn màu nâu
                                            </h5>
                                            <p class="card-text">935.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div
                                            class="card"
                                            style="width: 14rem; height: 23.5rem; height: 23.5rem"
                                    >
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/58/formal-belt-in-brown-olive-qamila-blackberrys-clothing-2_1024x1024.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">Thắt lưng nam da hoạ tiết</h5>
                                            <p class="card-text">875.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/43/1.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da hoạ tiết - Urseth
                                            </h5>
                                            <p class="card-text">432.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/41/1.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da nâu trơn - Uberto
                                            </h5>
                                            <p class="card-text">983.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="card-wrapper cardWrapper">
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/40/1.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da hai mặt đen - Unstorm
                                            </h5>
                                            <p class="card-text">799.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/42/1.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da hai mặt nâu đậm - Uliva
                                            </h5>
                                            <p class="card-text">849.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/45/1.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da đen tuyền có họa tiết - Uratak
                                            </h5>
                                            <p class="card-text">550.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/44/1.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da nâu nhạt có họa tiết - Urseal
                                            </h5>
                                            <p class="card-text">532.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="card-wrapper cardWrapper">
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/47/1.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da hai mặt nâu đậm - Ulron
                                            </h5>
                                            <p class="card-text">405.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/48/Leather_Wine_Solid_Belt_Uratak-BT000567E1-image1_1024x1024.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da rượu vang có họa tiết - Uratak
                                            </h5>
                                            <p class="card-text">573.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/49/Leather_Brown_Solid_Belt_Urraco-BT000555C1-image1_1024x1024.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da nâu trơn - Urraco
                                            </h5>
                                            <p class="card-text">499.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                                <a href="frontend/productDetail/productDetail.jsp">
                                    <div class="card" style="width: 14rem; height: 23.5rem">
                                        <img
                                                src="${pageContext.request.contextPath}/assets/images/belts/Images/50/textured-leather-belt-in-black-new-grabirde-blackberrys-clothing-2_aed61a4c-e796-4446-bf5a-4396f427caf6_1024x1024.webp"
                                                class="card-img-top"
                                                alt="..."
                                                style="height: 14rem"
                                        />
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                Thắt lưng da đen họa tiết - New Grabirde
                                            </h5>
                                            <p class="card-text">660.000 VNĐ</p>
                                            <span style="color: rgb(168, 0, 0); font-size: 16px"
                                            >50%</span
                                            >
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <button
                            class="carousel-control-prev"
                            type="button"
                            data-bs-target="#carouselExampleControls2"
                            data-bs-slide="prev"
                            style="width: 5%"
                    >
                <span
                        class="carousel-control-prev-icon"
                        aria-hidden="true"
                ></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button
                            class="carousel-control-next"
                            type="button"
                            data-bs-target="#carouselExampleControls2"
                            data-bs-slide="next"
                            style="width: 5%"
                    >
                <span
                        class="carousel-control-next-icon"
                        aria-hidden="true"
                ></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="event__banner align-items-center">
    <a href="frontend/newArrivalPage/newArrivalPage.jsp">
        <img src="assets/images/Group 4.svg" alt=""/>
    </a>
</div>
<section>
    <div class="collection__component">
        <div class="collection__container">
            <p class="collection__title">Bộ Sưu Tập</p>
            <div class="row collection__row">
                <div class="col column__1">
                    <div class="box emo">
                        <a
                                href="frontend/collectionPage/collectionSection/collectionSection.jsp"
                        >
                            <div></div>
                        </a>
                        <span>EMO</span>
                        <img
                                src="assets/images/homepage/w747.webp"
                                alt="height: 45rem;"
                        />
                    </div>
                </div>
                <div class="col column__2">
                    <div class="box victor">
                        <a
                                href="frontend/collectionPage/collectionSection/collectionSection.jsp"
                        >
                            <div></div>
                        </a>
                        <span>VICTOR</span>
                        <img
                                src="assets/images/homepage/203127468-1-black.avif"
                                alt=""
                                style="height: 45rem"
                        />
                    </div>
                </div>
                <div class="col-12 column__3">
                    <div class="longbox quietman">
                        <a
                                href="frontend/collectionPage/collectionSection/collectionSection.jsp"
                        >
                            <div></div>
                        </a>
                        <span>THE QUIET MAN</span>
                        <img src="assets/images/men1.jpg" alt=""/>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tabEvent">
        <ul class="nav nav__Tab nav-fill nav-tabs" role="tablist">
            <li class="newarrival__tab nav-item" role="presentation">
                <a
                        class="newarrival__title nav__Link nav-link active"
                        id="fill-tab-0"
                        data-bs-toggle="tab"
                        href="#fill-tabpanel-0"
                        role="tab"
                        aria-controls="fill-tabpanel-0"
                        aria-selected="true"
                >
                    MỚI NHẤT
                </a>
            </li>
            <li class="mostpopular__tab nav-item" role="presentation">
                <a
                        class="mostpopular__title nav__Link nav-link"
                        id="fill-tab-1"
                        data-bs-toggle="tab"
                        href="#fill-tabpanel-1"
                        role="tab"
                        aria-controls="fill-tabpanel-1"
                        aria-selected="false"
                >
                    PHỔ BIẾN NHẤT
                </a>
            </li>
        </ul>
        <div class="tab-content pt-5" id="tab-content">
            <div
                    class="tab-pane tab__Pane1 active"
                    id="fill-tabpanel-0"
                    role="tabpanel"
                    aria-labelledby="fill-tab-0"
            >
                <div class="list__product container">
                    <div class="row" id="list__product__row">
                        <div class="list__product__element">
                            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">
                                <%if (beltsList != null) {%>
                                    <%for (Belts n: beltsList) {%>
                                <%--<jsp:useBean id="newArrivalsList" scope="request" type="java.util.List"/>
                                <c:if test="${newArrivalsList}">
                                <c:forEach var="n" items="${newArrivalsList}">--%>
                                        <div id="is_reloaded"></div>
                                        <div class="col product__col">
                                            <a href="frontend/productDetail/productDetail.jsp">
                                                <div
                                                        class="belts position-relative"
                                                        style="width: 19rem"
                                                >
                                      <span
                                              class="badge bg-danger position-absolute top-0 end-0 m-2"
                                      >NEW</span
                                      >

                                                    <div class="product__image">
                                                        <img
                                                                src="assets/images/belts/Images/51/Textured_Leather_Belt_In_Wine_Tarak-BTPM0508E1ZA23FA-image1_1024x1024.webp"
                                                                class="img-fluid"
                                                                alt="Leather Belt"
                                                                style="width: 19rem"
                                                        />
                                                    </div>
                                                    <div class="product__title">
                                                        <h5 class="title">
                                                            <%=n.getName()%>
                                                            <%--${n.name}--%>
                                                        </h5>
                                                        <p class="product__price"><%=n.getPrice()%> <%--${n.price}--%> VND</p>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    <%}%>
                                <%}%>
                                <%--</c:forEach>
                                </c:if>--%>
                                <%--<div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                  <span
                                          class="badge bg-danger position-absolute top-0 end-0 m-2"
                                  >NEW</span
                                  >

                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/51/Textured_Leather_Belt_In_Wine_Tarak-BTPM0508E1ZA23FA-image1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da vuông rượu vang có họa tiết - Tarak
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                  <span
                                          class="badge bg-danger position-absolute top-0 end-0 m-2"
                                  >NEW</span
                                  >

                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/52/Textured_Reversible_Belt_In_Black_Tan_Tetra-BTPM0520Z1ZA23FA-image1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da mặt tròn hai mặt màu đen - Tetra
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                  <span
                                          class="badge bg-danger position-absolute top-0 end-0 m-2"
                                  >NEW</span
                                  >

                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/53/Reversible_Belt_In_Tan_Navy_Tangle-BTPM0526N1ZA23FA-image1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da hai mặt màu nâu sáng - Tuna
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                  <span
                                          class="badge bg-danger position-absolute top-0 end-0 m-2"
                                  >NEW</span
                                  >

                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/54/techpro-textured-elastic-belt-in-grey-salyer-blackberrys-clothing-1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng cao su màu xanh có họa tiết - Salyer
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                  <span
                                          class="badge bg-danger position-absolute top-0 end-0 m-2"
                                  >NEW</span
                                  >

                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/56/leather-belt-in-black-son-blackberrys-clothing-1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da mặt vuông màu đen - Tiny
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                  <span
                                          class="badge bg-danger position-absolute top-0 end-0 m-2"
                                  >NEW</span
                                  >

                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/57/leather-belt-in-brown-son-blackberrys-clothing-1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da mặt vuông màu nâu đậm - Tiny
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                  <span
                                          class="badge bg-danger position-absolute top-0 end-0 m-2"
                                  >NEW</span
                                  >

                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/58/formal-belt-in-brown-olive-qamila-blackberrys-clothing-1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da cỡ lớn màu nâu đậm - Bigboi
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                  <span
                                          class="badge bg-danger position-absolute top-0 end-0 m-2"
                                  >NEW</span
                                  >

                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/59/Textured_Single_Side_Belt_In_Black_New-BTPM0369Z1ZA21FA-image1_68e65068-0c68-4810-9a12-6e9129b09017_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">Thắt lưng da mặt nhỏ - Tiny</h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>--%>
                                <form action="newArrival2" method="get">
                                    <button name="seeMore" class="btn seeMore">Xem Thêm</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div
                    class="tab-pane tab__Pane2"
                    id="fill-tabpanel-1"
                    role="tabpanel"
                    aria-labelledby="fill-tab-1"
            >
                <div class="list__product container">
                    <div class="row" id="list__product__row">
                        <div class="list__product__element">
                            <div
                                    class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4"
                            >
                                <!-- Sản phẩm -->
                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/51/Textured_Leather_Belt_In_Wine_Tarak-BTPM0508E1ZA23FA-image1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da vuông rượu vang có họa tiết - Tarak
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/52/Textured_Reversible_Belt_In_Black_Tan_Tetra-BTPM0520Z1ZA23FA-image1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da mặt tròn hai mặt màu đen - Tetra
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/53/Reversible_Belt_In_Tan_Navy_Tangle-BTPM0526N1ZA23FA-image1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da hai mặt màu nâu sáng - Tuna
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/54/techpro-textured-elastic-belt-in-grey-salyer-blackberrys-clothing-1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng cao su màu xanh có họa tiết - Salyer
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/52/Textured_Reversible_Belt_In_Black_Tan_Tetra-BTPM0520Z1ZA23FA-image1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da mặt tròn hai mặt màu đen - Tetra
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/53/Reversible_Belt_In_Tan_Navy_Tangle-BTPM0526N1ZA23FA-image1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da hai mặt màu nâu sáng - Tuna
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/51/Textured_Leather_Belt_In_Wine_Tarak-BTPM0508E1ZA23FA-image1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng da vuông rượu vang có họa tiết - Tarak
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col product__col">
                                    <a href="frontend/productDetail/productDetail.jsp">
                                        <div
                                                class="belts position-relative"
                                                style="width: 19rem"
                                        >
                                            <div class="product__image">
                                                <img
                                                        src="assets/images/belts/Images/54/techpro-textured-elastic-belt-in-grey-salyer-blackberrys-clothing-1_1024x1024.webp"
                                                        class="img-fluid"
                                                        alt="Leather Belt"
                                                        style="width: 19rem"
                                                />
                                            </div>
                                            <div class="product__title">
                                                <h5 class="title">
                                                    Thắt lưng cao su màu xanh có họa tiết - Salyer
                                                </h5>
                                                <p class="product__price">100.000VNĐ</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <form action="mostPopular" method="get">
                                <button name="seeMore" class="btn seeMore">Xem Thêm</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<section>
    <div class="spotlight__component">
        <p class="spotlight__title1">THOMAS Spotlight</p>
        <p class="spotlight__title2">Đồng hành cùng bạn</p>
        <div class="row spotlight__row">
            <div class="col spotlight__col">
                <div class="box">
                    <img
                            src="assets/images/homepage/465131741_18466090996040427_4498527421517500506_n 1.png"
                            alt=""
                    />
                </div>
            </div>
            <div class="col spotlight__col">
                <div class="box">
                    <img
                            src="assets/images/homepage/1aa7c0425353532126123f54fbaa2d16.png"
                            alt=""
                    />
                </div>
            </div>
            <div class="col spotlight__col">
                <div class="box">
                    <img
                            src="assets/images/homepage/minimalist-style-la-gi-3-jpg-1632887296-29092021104816.webp"
                            alt=""
                    />
                </div>
            </div>
            <div class="col spotlight__col">
                <div class="box">
                    <img
                            src="assets/images/homepage/Screenshot 2024-11-03 205020_upscayl_3x_realesrgan-x4plus 1.jpg"
                            alt=""
                    />
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page = "/frontend/header_footer/footer.jsp" />

</body>
</html>

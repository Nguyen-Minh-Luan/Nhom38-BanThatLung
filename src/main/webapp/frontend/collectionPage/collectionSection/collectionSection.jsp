<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Collection Detail</title>
    <link
            rel="icon"
            href="${pageContext.request.contextPath}/assets/icons/favicon.svg"
            type="image/x-icon"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="../../assets/fontawesome-free-6.6.0-web/fontawesome-free-6.6.0-web/css/all.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/collectionSection.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/general.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
</head>

<body>
<jsp:include page="/frontend/header_footer/header.jsp"/>
<div class="breadcumb__container">
    <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="#">Bộ Sưu Tập</a></li>
            <li class="breadcrumb-item active" aria-current="page">
                VICTOR
            </li>
        </ol>
    </nav>
</div>

<div class="collection__title container text-center" style="margin-top: 108px;">
    <h1>VICTOR</h1>
    <div class="container mt-5">
        <img src="${pageContext.request.contextPath}/assets/images/victor.jpg" alt="" style="width: 100%"/>
    </div>
    <p class="mt-4 fs-5">
        VICTOR không chỉ là một cái tên, mà là một tuyên ngôn thời trang, nơi
        những nét đẹp của quá khứ được tái hiện một cách tinh tế và hiện đại.
        Hãy tưởng tượng sự kết hợp hoàn hảo giữa những chiếc túi xách và giày
        dép được thiết kế theo phong cách của những năm 60, với những chi tiết
        phong cách và màu sắc đặc trưng của thập niên 90. THOMAS đã khéo léo pha
        trộn sự quyến rũ cổ điển với sự táo bạo hiện đại, tạo nên một bộ sưu tập
        vừa quen thuộc vừa mới lạ.
    </p>
</div>
<div class="two__image">
    <div class="container">
        <div class="row">
            <div class="col-6 image__Collumn">
                <img src="${pageContext.request.contextPath}/assets/images/belts/belts detail/image1 (1).jpg"
                     alt=""/>
            </div>
            <div class="col-6 image__Collumn">
                <img src="${pageContext.request.contextPath}/assets/images/belts/belts detail/image1 (1).jpg"
                     alt=""/>
            </div>
        </div>
    </div>
</div>

<div class="mostPopular__component">
    <div id="carouselExampleControls3" class="carousel slide container" data-bs-ride="carousel">
        <p class="fs-3 fw-light my-5">Các sản phẩm trong bộ sưu tập</p>
        <div class="carousel-inner pb-5">
            <div class="carousel-item active">
                <div class="cardWrapper">
                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="../../productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>
                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="../../productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>

                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="../../productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>
                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="../../productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="cardWrapper">
                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="${pageContext.request.contextPath}/frontend/productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>
                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="${pageContext.request.contextPath}/frontend/productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>

                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="${pageContext.request.contextPath}/frontend/productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>
                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="${pageContext.request.contextPath}/frontend/productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="cardWrapper">
                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="${pageContext.request.contextPath}/frontend/productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>
                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="${pageContext.request.contextPath}/frontend/productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>

                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="${pageContext.request.contextPath}/frontend/productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>
                    <div class="card" style="position: relative">
                        <div style="
                    position: absolute;
                    top: 10px;
                    right: 10px;
                    z-index: 10;
                  ">
                            <svg class="custom_favorite_click" xmlns="http://www.w3.org/2000/svg" height="24px"
                                 viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path
                                        d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
                            </svg>
                        </div>
                        <img src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                             class="card-img-top" alt="..."/>
                        <a href="${pageContext.request.contextPath}/frontend/productDetail/productDetail.jsp">
                            <div class="card-body text-start">
                                <h5 class="card-title text-start">
                                    Thắt Lưng Hai Mặt LV Heritage 35MM
                                </h5>
                                <p class="card-text text-start">100.000 VNĐ</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls3"
                data-bs-slide="prev" style="width: 5%">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls3"
                data-bs-slide="next" style="width: 5%">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<jsp:include page="/frontend/header_footer/footer.jsp"/>

</body>

</html>
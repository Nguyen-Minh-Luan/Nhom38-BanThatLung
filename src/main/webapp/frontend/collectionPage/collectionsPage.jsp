<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Bộ sưu tập</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/collectionsPage.css"/>
</head>
<body>
<jsp:include page="/frontend/header_footer/header.jsp"/>
<div class="breadcumb__container">
    <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="${pageContext.request.contextPath}/index.jsp">Trang chủ</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Bộ sưu tập</li>
        </ol>
    </nav>
</div>
<div class="container">
    <div class="belts-header">Bộ sưu tập</div>
</div>
<div class="container">
    <img src="${pageContext.request.contextPath}/assets/images/collection.png" alt="" style="width: 100%"/>
</div>
<div class="container d-flex">
    <div class="col-6 mt-5">
        <div class="row">
            <div class="cardWrapper">
                <div class="card" style="position: relative">
                    <div
                            style="position: absolute; top: 10px; right: 10px; z-index: 10"
                    >
                        <svg
                                class="custom_favorite_click"
                                xmlns="http://www.w3.org/2000/svg"
                                height="24px"
                                viewBox="0 -960 960 960"
                                width="24px"
                                fill="#000000"
                        >
                            <path
                                    d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"
                            />
                        </svg>
                    </div>
                    <img
                            src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                            class="card-img-top"
                            alt="..."
                    />
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
                    <div
                            style="position: absolute; top: 10px; right: 10px; z-index: 10"
                    >
                        <svg
                                class="custom_favorite_click"
                                xmlns="http://www.w3.org/2000/svg"
                                height="24px"
                                viewBox="0 -960 960 960"
                                width="24px"
                                fill="#000000"
                        >
                            <path
                                    d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"
                            />
                        </svg>
                    </div>
                    <img
                            src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                            class="card-img-top"
                            alt="..."
                    />
                    <a href="../productDetail/productDetail.jsp">
                        <div class="card-body text-start">
                            <h5 class="card-title text-start">
                                Thắt Lưng Hai Mặt LV Heritage 35MM
                            </h5>
                            <p class="card-text text-start">100.000 VNĐ</p>
                        </div>
                    </a>
                </div>

                <div class="card" style="position: relative">
                    <div
                            style="position: absolute; top: 10px; right: 10px; z-index: 10"
                    >
                        <svg
                                class="custom_favorite_click"
                                xmlns="http://www.w3.org/2000/svg"
                                height="24px"
                                viewBox="0 -960 960 960"
                                width="24px"
                                fill="#000000"
                        >
                            <path
                                    d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"
                            />
                        </svg>
                    </div>
                    <img
                            src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                            class="card-img-top"
                            alt="..."
                    />
                    <a href="../productDetail/productDetail.jsp">
                        <div class="card-body text-start">
                            <h5 class="card-title text-start">
                                Thắt Lưng Hai Mặt LV Heritage 35MM
                            </h5>
                            <p class="card-text text-start">100.000 VNĐ</p>
                        </div>
                    </a>
                </div>
                <div class="card" style="position: relative">
                    <div
                            style="position: absolute; top: 10px; right: 10px; z-index: 10"
                    >
                        <svg
                                class="custom_favorite_click"
                                xmlns="http://www.w3.org/2000/svg"
                                height="24px"
                                viewBox="0 -960 960 960"
                                width="24px"
                                fill="#000000"
                        >
                            <path
                                    d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"
                            />
                        </svg>
                    </div>
                    <img
                            src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                            class="card-img-top"
                            alt="..."
                    />
                    <a href="../productDetail/productDetail.jsp">
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
        <section class="container ps-0 mt-5 pe-4 mb-5">
            <div class="description-section">
                <h5>Victor Collection</h5>
                <p>𝐹/𝑊 24 𝐶𝑜𝑙𝑙𝑒𝑐𝑡𝑖𝑜𝑛</p>
                <p class="text-start fw-light">
                    Mở ra không gian một buổi dạ tiệc sang trọng, Charming Melody được
                    NEM cho ra mắt như một giai điệu đầy mê hoặc đưa phái đẹp tới thật
                    nhiều cung bậc cảm xúc. Tại đây, mỗi chiếc đầm tiệc sẽ là một nhịp
                    điệu độc đáo: lúc nồng cháy, mãnh liệt trong gam đỏ rực rỡ; thu
                    hút trong sắc đen huyền bí hay khi lại nhẹ nhàng và sâu lắng trong
                    tông be dịu ngọt. Tất cả đều góp phần tạo nên một bản hòa ca đầy
                    quyến rũ.
                </p>
                <p class="text-start fw-light">
                    Đến với Charming Melody, NEM không chỉ mang tới một bộ sưu tập
                    thời trang, mà còn mong muốn giúp bạn tìm ra âm hưởng riêng của
                    chính mình. Vì NEM tin rằng mỗi người phụ nữ đều có một giai điệu
                    độc đáo riêng biệt, và bộ sưu tập Thu-Đông 2024 này sẽ giúp bạn
                    thể hiện điều đó.
                </p>
            </div>
            <div class="text-center mt-4">
                <a
                        href="${pageContext.request.contextPath}/frontend/collectionPage/collectionSection/collectionSection.jsp"
                        class="btn btn-outline-dark see-more-btn w-100 fs-4"
                >
                    XEM THÊM
                </a>
            </div>
        </section>
    </div>
    <div class="col-6 mt-5">
        <img class="img-fluid" src="${pageContext.request.contextPath}/assets/images/collection2.png"/>
        <img
                class="img-fluid mt-5 w-100"
                style="height: 45%"
                src="${pageContext.request.contextPath}/assets/images/collection3.png"
        />
    </div>
</div>
<div class="container">
    <img src="${pageContext.request.contextPath}/assets/images/collection4.png" alt="" style="width: 100%"/>
</div>
<div class="container d-flex">
    <div class="col-6 mt-5">
        <div class="cardWrapper">
            <div class="card" style="position: relative">
                <div
                        style="position: absolute; top: 10px; right: 10px; z-index: 10"
                >
                    <svg
                            class="custom_favorite_click"
                            xmlns="http://www.w3.org/2000/svg"
                            height="24px"
                            viewBox="0 -960 960 960"
                            width="24px"
                            fill="#000000"
                    >
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"
                        />
                    </svg>
                </div>
                <img
                        src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                        class="card-img-top"
                        alt="..."
                />
                <a href="../productDetail/productDetail.jsp">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>
            <div class="card" style="position: relative">
                <div
                        style="position: absolute; top: 10px; right: 10px; z-index: 10"
                >
                    <svg
                            class="custom_favorite_click"
                            xmlns="http://www.w3.org/2000/svg"
                            height="24px"
                            viewBox="0 -960 960 960"
                            width="24px"
                            fill="#000000"
                    >
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"
                        />
                    </svg>
                </div>
                <img
                        src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                        class="card-img-top"
                        alt="..."
                />
                <a href="../productDetail/productDetail.jsp">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>

            <div class="card" style="position: relative">
                <div
                        style="position: absolute; top: 10px; right: 10px; z-index: 10"
                >
                    <svg
                            class="custom_favorite_click"
                            xmlns="http://www.w3.org/2000/svg"
                            height="24px"
                            viewBox="0 -960 960 960"
                            width="24px"
                            fill="#000000"
                    >
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"
                        />
                    </svg>
                </div>
                <img
                        src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                        class="card-img-top"
                        alt="..."
                />
                <a href="../productDetail/productDetail.jsp">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>
            <div class="card" style="position: relative">
                <div
                        style="position: absolute; top: 10px; right: 10px; z-index: 10"
                >
                    <svg
                            class="custom_favorite_click"
                            xmlns="http://www.w3.org/2000/svg"
                            height="24px"
                            viewBox="0 -960 960 960"
                            width="24px"
                            fill="#000000"
                    >
                        <path
                                d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"
                        />
                    </svg>
                </div>
                <img
                        src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                        class="card-img-top"
                        alt="..."
                />
                <a href="../productDetail/productDetail.jsp">
                    <div class="card-body text-start">
                        <h5 class="card-title text-start">
                            Thắt Lưng Hai Mặt LV Heritage 35MM
                        </h5>
                        <p class="card-text text-start">100.000 VNĐ</p>
                    </div>
                </a>
            </div>
        </div>
        <section class="container ps-0 mt-5 pe-4 mb-5">
            <div class="description-section">
                <h5>Emo Collection</h5>
                <p>𝐹/𝑊 24 𝐶𝑜𝑙𝑙𝑒𝑐𝑡𝑖𝑜𝑛</p>
                <p class="text-start fw-light">
                    Trong cuộc sống hiện đại, người phụ nữ không còn thu mình lại mà
                    dần lựa chọn cách bước ra Thế Giới với nhiều ước mơ và hoài bão
                    khác nhau. Và với Unique Feminist được NEM cho ra mắt không chỉ là
                    một bộ sưu tập, mà còn là cách thể hiện tinh thần người phụ nữ
                    thời đại mới – tự do, độc lập và đầy bản lĩnh. Mỗi thiết kế sẽ
                    giúp bạn bộc lộ cá tính riêng mà không cần phải nói quá nhiều.
                </p>
                <p class="text-start fw-light">
                    Xuyên suốt Unique Feminist gồm những thiết kế vest/ blazer đơn
                    giản nhưng tập trung khai thác tiểu tiết trên bề mặt tạo điểm nhấn
                    đặc biệt cho mỗi bộ trang phục. Bên cạnh gam màu trung tính, các
                    thiết kế còn gây ấn tượng với bảng màu như xanh cốm, xanh biển hay
                    nâu caramel cùng chi tiết nhấn nhá cầu vai đậm chất "menswear" hay
                    năng động qua kiểu dáng croptop. Tất cả đều thể hiện trọn vẹn tinh
                    thần "Feminist" mà NEM muốn truyền tải.
                </p>
            </div>
            <div class="text-center mt-4">
                <a
                        href="${pageContext.request.contextPath}/frontend/collectionPage/collectionSection/collectionSection.jsp"
                        class="btn btn-outline-dark see-more-btn w-100 fs-4"
                >
                    XEM THÊM
                </a>
            </div>
        </section>
    </div>
    <div class="col-6 mt-5">
        <img class="img-fluid" src="${pageContext.request.contextPath}/assets/images/collection5.png"/>
        <img
                class="img-fluid mt-5 w-100"
                style="height: 45%"
                src="${pageContext.request.contextPath}/assets/images/collection6.png"
        />
    </div>
</div>

<jsp:include page="/frontend/header_footer/footer.jsp"/>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Giỏ hàng</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/icons/favicon.svg" type="image/x-icon"/>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cartPage.css"/>
</head>

<body>
<jsp:include page="/frontend/header_footer/header.jsp"/>
<div id="dimmer2" class="dimmer2"></div>
<div class="breadcumb__container">
    <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="${pageContext.request.contextPath}/index.jsp">Trang chủ</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
        </ol>
    </nav>
</div>
<div class="custom_margin--container" style="margin-top: 250px">
    <div class="row">
        <div class="col-5 mb-5 pe-5" style="margin-left: 196.25px">
            <div class="row">
                <h1 class="ps-0">Giỏ hàng của bạn</h1>
                <h3 class="ps-0 fw-light fs-5">
                    Tổng [2 đơn hàng] 999.123.673 vnđ
                </h3>
            </div>
            <div class="row border border-dark mt-4 custom_remove">
                <div class="col-4 p-0">
                    <img
                            src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                            class="img-fluid p-0"
                    />
                </div>
                <div class="col-8 fw-light pb-0">
                    <div class="row">
                        <div class="flex-grow-1" style="flex-basis: 90%">
                            <div
                                    class="d-flex justify-content-between flex-column flex-grow-2"
                                    style="height: 100%"
                            >
                                <div class="d-flex justify-content-between flex-column">
                                    <div class="d-flex justify-content-between mt-3">
                                        <p class="custom_size--16">
                                            Thắt Lưng Hai Mặt LV Heritage 35MM
                                        </p>
                                        <p class="custom_size--16">9.123.765 vnđ</p>
                                    </div>
                                    <div class="d-flex justify-content-between mt-3">
                                        <p class="custom_size--16">SIZE : XL</p>
                                    </div>
                                </div>
                                <div class="d-flex">
                                    <select
                                            class="form-select w-25 p-3 border border-dark"
                                            aria-label="Select a number"
                                    >
                                        <option selected>0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                        <option value="32">32</option>
                                        <option value="33">33</option>
                                        <option value="34">34</option>
                                        <option value="35">35</option>
                                        <option value="36">36</option>
                                        <option value="37">37</option>
                                        <option value="38">38</option>
                                        <option value="39">39</option>
                                        <option value="40">40</option>
                                        <option value="41">41</option>
                                        <option value="42">42</option>
                                        <option value="43">43</option>
                                        <option value="44">44</option>
                                        <option value="45">45</option>
                                        <option value="46">46</option>
                                        <option value="47">47</option>
                                        <option value="48">48</option>
                                        <option value="49">49</option>
                                        <option value="50">50</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="flex-grow-1 ps-0 mt-3" style="flex-basis: 10%">
                            <svg
                                    class="remove_button"
                                    xmlns="http://www.w3.org/2000/svg"
                                    height="24px"
                                    viewBox="0 -960 960 960"
                                    width="24px"
                                    fill="#00000"
                            >
                                <path
                                        d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"
                                />
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row border border-dark mt-4 custom_remove">
                <div class="col-4 p-0">
                    <img
                            src="${pageContext.request.contextPath}/assets/images/victor_sample1.png"
                            class="img-fluid p-0"
                    />
                </div>
                <div class="col-8 fw-light pb-0">
                    <div class="row">
                        <div class="flex-grow-1" style="flex-basis: 90%">
                            <div
                                    class="d-flex justify-content-between flex-column flex-grow-2"
                                    style="height: 100%"
                            >
                                <div class="d-flex justify-content-between flex-column">
                                    <div class="d-flex justify-content-between mt-3">
                                        <p class="custom_size--16">
                                            Thắt Lưng Hai Mặt LV Heritage 35MM
                                        </p>
                                        <p class="custom_size--16">9.123.765 vnđ</p>
                                    </div>
                                    <div class="d-flex justify-content-between mt-3">
                                        <p class="custom_size--16">SIZE : XL</p>
                                    </div>
                                </div>
                                <div class="d-flex">
                                    <select
                                            class="form-select w-25 p-3 border border-dark"
                                            aria-label="Select a number"
                                    >
                                        <option selected>0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                        <option value="32">32</option>
                                        <option value="33">33</option>
                                        <option value="34">34</option>
                                        <option value="35">35</option>
                                        <option value="36">36</option>
                                        <option value="37">37</option>
                                        <option value="38">38</option>
                                        <option value="39">39</option>
                                        <option value="40">40</option>
                                        <option value="41">41</option>
                                        <option value="42">42</option>
                                        <option value="43">43</option>
                                        <option value="44">44</option>
                                        <option value="45">45</option>
                                        <option value="46">46</option>
                                        <option value="47">47</option>
                                        <option value="48">48</option>
                                        <option value="49">49</option>
                                        <option value="50">50</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="flex-grow-1 ps-0 mt-3" style="flex-basis: 10%">
                            <svg
                                    class="remove_button"
                                    xmlns="http://www.w3.org/2000/svg"
                                    height="24px"
                                    viewBox="0 -960 960 960"
                                    width="24px"
                                    fill="#00000"
                            >
                                <path
                                        d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"
                                />
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-3 mb-5 mt-4 ps-5">
            <div class="row">
                <a
                        href="${pageContext.request.contextPath}/frontend/cartPage/checkoutPage/checkoutPage.jsp"
                        class="btn btn-dark p-3 fs-5 custom_button"
                >Tiến hành thanh toán
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            height="24px"
                            viewBox="0 -960 960 960"
                            width="24px"
                            fill="#EFEFEF"
                    >
                        <path
                                d="M647-440H160v-80h487L423-744l57-56 320 320-320 320-57-56 224-224Z"
                        />
                    </svg
                    >
                </a>
                <div class="containe mt-5 ps-0">
                    <div class="border-bottom pb-2 mb-3">
                        <h5 class="fw-bold">Tóm tắt đơn hàng</h5>
                    </div>
                    <div class="d-flex justify-content-between mb-2">
                        <p class="mb-0">2 sản phẩm</p>
                        <p class="mb-0">1,360,000₫</p>
                    </div>
                    <div class="d-flex justify-content-between mb-2">
                        <p class="mb-0">Vận chuyển</p>
                        <p class="mb-0">70,000₫</p>
                    </div>
                    <div class="border-top pt-2">
                        <div class="d-flex justify-content-between fw-bold mb-2">
                            <p class="mb-0">Tổng cộng</p>
                            <p class="mb-0">1,430,000₫</p>
                        </div>
                        <p class="text-muted small mb-0">(bao gồm cả thuế)</p>
                    </div>
                    <div
                            class="input-group custom_input_group custom_input--btn mt-4"
                    >
                        <input
                                type="text"
                                class="form-control custom_input--btn-group__input rounded-pill-start fs-5"
                                placeholder="Nhập coupon"
                        />
                        <button
                                class="btn btn-dark input-group-text custom_button_design custom_input--btn-group__btn rounded-pill-end"
                        >
                            Áp dụng
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-14">
            <h2 class="my-5" style="margin-left: 190px">Gợi ý cho bạn</h2>
            <div
                    class="row mb-5"
                    id="list__product__row"
                    style="margin-left: 190px; margin-right: 190px"
            >
                <div class="list__product__element">
                    <div
                            class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 justify-content-between"
                    >
                        <div class="card p-0 me-2" style="position: relative">
                            <div
                                    style="
                      position: absolute;
                      top: 10px;
                      right: 10px;
                      z-index: 10;
                    "
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
                                    alt="..."
                                    class="card-img-top h-75"
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

                        <div class="card p-0 me-2" style="position: relative">
                            <div
                                    style="
                      position: absolute;
                      top: 10px;
                      right: 10px;
                      z-index: 10;
                    "
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
                                    alt="..."
                                    class="card-img-top h-75"
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

                        <div class="card p-0 me-2" style="position: relative">
                            <div
                                    style="
                      position: absolute;
                      top: 10px;
                      right: 10px;
                      z-index: 10;
                    "
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
                                    alt="..."
                                    class="card-img-top h-75"
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
                        <div class="card p-0 me-2" style="position: relative">
                            <div
                                    style="
                      position: absolute;
                      top: 10px;
                      right: 10px;
                      z-index: 10;
                    "
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
                                    alt="..."
                                    class="card-img-top h-75"
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
            </div>
        </div>
    </div>
</div>

<jsp:include page="/frontend/header_footer/footer.jsp"/>
</body>
</html>

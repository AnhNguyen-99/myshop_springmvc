<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer</title>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/page/img/fav.png">
    </head>
    <body>
        <!-- Start Header Area -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- End Header Area -->

            <!-- Start Banner Area -->
            <section class="banner-area organic-breadcrumb">
                <div class="container">
                    <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                        <div class="col-first">
                            <h1>Shopping Cart</h1>
                            <nav class="d-flex align-items-center">
                                <a href="${pageContext.request.contextPath}/home.htm">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="category.html">Cart</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Banner Area -->

        <div class="container">
            <div class="row">
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    <div style="height: 50px;"></div>
                    <ul class="infomation">
                        <li style="background-color: rgb(255,140,0);"><a href="${pageContext.request.contextPath}/inforaccount.htm">Thông tin</a></li>
                        <li><a href="${pageContext.request.contextPath}/listOrders.htm">Lịch sử mua hàng</a></li>
                        <li><a href="${pageContext.request.contextPath}/changeInfor.htm">Thay đổi thông tin</a></li>
                        <li><a href="${pageContext.request.contextPath}/updatePass.htm">Thay đổi mật khẩu</a></li>
                    </ul>
                </div>
                <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                    <div style="height: 50px;"></div>
                    <h3>Thay đổi mật khẩu</h3>
                    <form:form action="${pageContext.request.contextPath}/updatePass.htm" method="POST" modelAttribute="account">
                        <div class="form-group">
                            <form:input type="hidden" path="accountId"/>
                            <form:input type="hidden" path="accountName" />
                            <form:input type="hidden" path="moblie" />
                            <form:input type="hidden" path="accountMail"/>
                            <form:input type="hidden" path="address"/>
                            <label for="my-input3">Mật khẩu</label>
                            <form:password id="my-input3" class="form-control" path="accountPass" disabled="disabled" required="true"/>
                            <br>
                            <input type="submit" class="btn btn-primary mt-15" data-toggle="tooltip" value="Thay đổi">
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        <div>
            <br>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>

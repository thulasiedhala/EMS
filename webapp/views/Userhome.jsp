<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    if (session.getAttribute("User_email") == null) {
        response.sendRedirect("/signin");
        return; // Stop further execution after redirect
    }
%>

<jsp:include page="includes/header.jsp" />

<jsp:include page="includes/userNav.jsp" />

<style>
    .card:hover {
        transform: scale(1.05);
        box-shadow: 0 10px 20px rgba(0, 0, 0, .12), 0 4px 8px rgba(0, 0, 0, .06);
        transition: 0.3s ease-in-out;
        cursor: pointer;
    }
</style>

<!-- Page Content -->
<div id="content">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <button type="button" id="sidebarCollapse" class="btn btn-info">
                <i class="fas fa-align-left"></i>
                <span>Toggle Sidebar</span>
            </button>
            <div>
                <h3 class="text-info">USER DASHBOARD</h3>
            </div>
            <div>
                <p>Welcome 
                    <c:choose>
                        <c:when test="${sessionScope.User_gender eq 'male'}">Mr.</c:when>
                        <c:otherwise>Miss.</c:otherwise>
                    </c:choose>
                    <span class="font-weight-bold text-info">${sessionScope.User_firstname} ${sessionScope.User_lastname}</span>
                </p>
            </div>
        </div>
    </nav>

    <!-- Additional Stylesheets -->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/fonts/simple-line-icons/style.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/colors.min.css">

    <!-- Dashboard Cards -->
    <div class="grey-bg container-fluid">
        <section id="minimal-statistics">
            <div class="row">
                <div class="col-12 mt-3 mb-1">
                    <h4 class="text-uppercase">Minimal Statistics Cards</h4>
                    <p>Statistics on minimal cards.</p>
                </div>
            </div>
            <div class="row">
                <!-- Total Hotels Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="align-self-center">
                                        <i class="fas fa-concierge-bell warning fa-3x"></i>
                                    </div>
                                    <div class="media-body text-right">
                                        <h3 class="success">${user_hotel_count}</h3>
                                        <span>Total Hotels</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Total Events Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="align-self-center">
                                        <i class="fas fa-birthday-cake success fa-3x"></i>
                                    </div>
                                    <div class="media-body text-right">
                                        <h3 class="primary">${user_event_count}</h3>
                                        <span>Total Events</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Total Caterings Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="align-self-center">
                                        <i class="fas fa-french-fries danger fa-3x"></i>
                                    </div>
                                    <div class="media-body text-right">
                                        <h3 class="warning">${user_catering_count}</h3>
                                        <span>Total Caterings</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Total Vendors Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="danger">${user_vendor_count}</h3>
                                        <span>Total Vendors</span>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="far fa-user-hard-hat fa-3x" style="color: orange;"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- More Cards for Bookings -->
            <div class="row">
                <!-- Total Booking Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="success">${user_booking_count}</h3>
                                        <span>Total Booking</span>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-calendar-check info fa-3x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Paid Bookings Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="warning">${user_bookingpaid_count}</h3>
                                        <span>Paid Bookings</span>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fab fa-paypal secondary fa-3x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Unpaid Bookings Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="primary">${user_bookingunpaid_count}</h3>
                                        <span>UnPaid Bookings</span>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fab fa-amazon-pay primary fa-3x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Pending Bookings Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="primary">${user_bookingpending_count}</h3>
                                        <span>Pending Bookings</span>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fas fa-calendar-check success fa-3x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bookings Cancelled by Admin and User -->
            <div class="row">
                <!-- Bookings Cancelled by Admin -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="warning">${user_bookingcancelbyadmin_count}</h3>
                                        <span>Bookings Cancelled by Admin</span>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fal fa-calendar-check warning fa-3x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Bookings Cancelled by User -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="danger">${user_bookingcancelbyuser_count}</h3>
                                        <span>Bookings Cancelled by User</span>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="fad fa-calendar-check danger fa-3x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

</div>

<jsp:include page="includes/footer.jsp" />  

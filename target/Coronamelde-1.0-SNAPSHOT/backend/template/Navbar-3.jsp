<%@ page import="Helper.Parse" %>
<%@ page import="Helper.Notification" %><%--
  Created by IntelliJ IDEA.
  User: ccl
  Date: 3/23/2021
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Navbar -->
<nav class="navbar-custom">



    <ul class="list-unstyled topbar-nav float-right mb-0">


        <li class="dropdown">
            <a class="nav-link dropdown-toggle arrow-none waves-light waves-effect" data-toggle="dropdown" href="#" role="button"
               aria-haspopup="false" aria-expanded="false">
                <i class="mdi mdi-bell-outline nav-icon"></i>
                <span class="badge badge-danger badge-pill noti-icon-badge">
                    <%
                        Notification notification = new Notification();
                        out.println(notification.notificationbarHot(request.getAttribute("notificationCounter")));

                    %></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right dropdown-lg">
                <!-- item-->
                <h6 class="dropdown-item-text">
                    Notifications ( <%= notification.notificationbarHot(request.getAttribute("notificationCounter")) %> )
                </h6>
                <div class="slimscroll notification-list">
                    <!-- item-->

                    <%= notification.notificationbar(request.getAttribute("counterDeletedUser"))%>
                </div>
            </div>
        </li>

        <li class="hidden-sm">
            <a class="nav-link waves-effect waves-light" href="javascript:void(0);" id="btn-fullscreen">
                <i class="mdi mdi-fullscreen nav-icon"></i>
            </a>
        </li>

        <li class="dropdown">
            <a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
               aria-haspopup="false" aria-expanded="false">
                <img src="../../assets/images/users/user-1.jpg" alt="profile-user" class="rounded-circle" />
                <span class="ml-1 nav-user-name hidden-sm"><%= request.getAttribute("firmenname") %> <i class="mdi mdi-chevron-down"></i> </span>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="#"><i class="dripicons-user text-muted mr-2"></i> Profile</a>
                <a class="dropdown-item" href="#"><i class="dripicons-wallet text-muted mr-2"></i> My Wallet</a>
                <a class="dropdown-item" href="#"><i class="dripicons-gear text-muted mr-2"></i> Settings</a>
                <a class="dropdown-item" href="#"><i class="dripicons-lock text-muted mr-2"></i> Lock screen</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#"><i class="dripicons-exit text-muted mr-2"></i> Logout</a>
            </div>
        </li>
    </ul>

    <ul class="list-unstyled topbar-nav mb-0">

        <li>
            <button class="button-menu-mobile nav-link waves-effect waves-light">
                <i class="mdi mdi-menu nav-icon"></i>
            </button>
        </li>

        <li class="hidden-sm">
            <a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
               aria-haspopup="false" aria-expanded="false">
                <i class="mdi mdi-library-plus mr-2"></i>Tools <i class="mdi mdi-chevron-down"></i>
            </a>
            <div class="dropdown-menu">

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item">
                    Photoshop
                </a>
                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item">
                    Visual Studio
                </a>
                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item">
                    Sublime Text 3
                </a>
                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item">
                    Phpstorm
                </a>

            </div>
        </li>
        <li class="hidden-sm">
            <a class="nav-link waves-effect waves-light" href="../landing/index.html" target="_blank">
                <i class="mdi mdi-airplane mr-2"></i>Landing
            </a>
        </li>
    </ul>

</nav>
<!-- end navbar-->
</div>
<!-- Top Bar End -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movies Gestion</title>
<%@ include file="/include/css.jsp" %>
</head>
<body>
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <div id="main-wrapper">
    <%@ include file="/include/hearder.jsp" %>
    <%@ include file="/include/aside1.jsp" %>
        <div class="page-wrapper">
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">Dashboard</h4>
                        <div class="d-flex align-items-center">
                        </div>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex no-block justify-content-end align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Movies</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="card-group">
                    <!-- Card -->
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="m-r-10">
                                    <span class="btn btn-circle btn-lg bg-danger">
                                        <i class="ti-clipboard text-white"></i>
                                    </span>
                                </div>
                                <div>
                                    More View
                                </div>
                                <div class="ml-auto">
                                    <h2 class="m-b-0 font-light">23</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card -->
                    <!-- Card -->
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="m-r-10">
                                    <span class="btn btn-circle btn-lg btn-info">
                                        <i class="ti-wallet text-white"></i>
                                    </span>
                                </div>
                                <div>
                                    Total Movies
                                </div>
                                <div class="ml-auto">
                                    <h2 class="m-b-0 font-light">10</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card -->
                    <!-- Card -->
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="m-r-10">
                                    <span class="btn btn-circle btn-lg bg-success">
                                        <i class="ti-shopping-cart text-white"></i>
                                    </span>
                                </div>
                                <div>
                                    Country 
                                </div>
                                <div class="ml-auto">
                                    <h2 class="m-b-0 font-light">43</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card -->
                    <!-- Card -->
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="m-r-10">
                                    <span class="btn btn-circle btn-lg bg-warning">
                                        <i class="mdi mdi-currency-usd text-white"></i>
                                    </span>
                                </div>
                                <div>
                                    Famous Actors
                                </div>
                                <div class="ml-auto">
                                    <h2 class="m-b-0 font-light">63</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card -->
                    <!-- Column -->
                </div>
                <!-- Table -->
               <div class="row">
                    <div class="col-lg-12">
                        <div class="card bg-light">
                            <div class="card-body">
                                <div class="d-flex no-block align-items-center m-b-10">
                                    <h4 class="card-title">Movies List</h4>
                                </div>
                                 <form class="form-horizontal m-t-20" id="loginform" method="get" action="movies">
                                <div class="dt-buttons">
                                 <button class="dt-button buttons-csv buttons-html5 btn btn-info mr-1" tabindex="0" aria-controls="file_export" type="submit"><span>search</span></button> 
                                 </div>
                                <div id="file_export_filter" class="dataTables_filter"><label>Search:<input type="search" name="search" class="form-control form-control-sm" placeholder="" aria-controls="file_export"></label></div>
                                 <div class="form-group text-center">
                                   </form>   
                                <div class="table-responsive">
                                    <table id="file_export" class="table bg-white table-bordered nowrap display">
                                     <div class="col-xs-12 p-b-20">
	                                    </div>
                                        <thead>
                                            <tr> 
                                                <th>title</th>
                                                <th>language</th>
                                                <th>duration</th>
                                                <th>Author</th>
                                                <th>King</th>
                                                <th>MinAge</th>
                                                <th>Actors</th>
                                                 <th>Ville</th>
                                                <th>More</th>
                                                 <th>Update</th>
                                                 <th>Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <c:forEach items="${movies}" var="p">
                                            <tr>
                                                <td><span class="label label-danger"><c:out value="${p.title}"/></span></td>
                                                <td>
                                                    <span class="label label-success"><c:out value="${p.languages}"/></span>
                                                </td>
                                                <td><span class="label label-info"><c:out value="${p.duration.hour} : ${p.duration.min}"/></span></td>
                                                <td><span class="label label-danger"><c:out value="${p.author}"/></span></td>
                                                <td><span class="label label-info"><c:out value="${p.king}"/></span></td>
                                                <td><span class="label label-danger"><c:out value="${p.minAge}"/></span></td>
                                                <td><span class="label label-info"><c:out value="${p.actors[0].fisrtName}"/></span></td>
                                                <td><span class="label label-info"><c:out value="${p.adr.town}"/></span></td>
                                                <td>
                                                     <a href="more?id=${p.getId()}">More</a>
                                                </td>
                                                <td>
                                                     <a href="delete?id=${p.getId()}">Delete</a>
                                                </td>
                                                 <td>
                                                     <a href="update?id=${p.getId()}">Update</a>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             <%@ include file="/include/footer.jsp" %>
        </div>
    </div>
 </div>
 <%@ include file="/include/aside2.jsp" %>
 <div class="chat-windows"></div>
 <%@ include file="/include/js.jsp" %>
</body>
</html>
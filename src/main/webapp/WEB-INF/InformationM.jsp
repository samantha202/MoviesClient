<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>More informations</title>
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
                    <div class="col-12 align-self-center">
                        <h4 class="page-title">Movie Detail</h4>
                        <div class="d-flex align-items-center">
                        </div>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex no-block justify-content-end align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">View</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">informations</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
              <div class="row">
                    <!-- Column -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <center class="m-t-30"> <img src="<%= request.getContextPath() %>/assets/images/${movie.getId()}.jpg" class="" width="200"/>
                                    <h4 class="card-title m-t-10">${movie.title} </h4>
                                    <h6 class="card-subtitle"></h6>
                                </center>
                            </div>
                            <div>
                               <hr>
                            </div>
	                        <div class="card-body"> 
	                              <div> Language: <h6 class="card-subtitle">${movie.languages}</h6> 
	                              </div> 
	                                duration: <h6 class="card-subtitle">${movie.duration.hour} : ${movie.duration.min}</h6> 
	                                 Kind:
	                                <h6>${movie.king}</h6>
	                                 Description:
	                                <h6>${movie.description}</h6>
	                          <div>
	                                   <h5>Programs:</h5>
		                               <span>Starting Date and Ending Date:</span> <h6>${movie.programs.dateString1} --- ${movie.programs.dateString2}</h6>
		                               <span>Projection week:</span> 
		                               <h6>1- ${movie.programs.dayListS[0].daysOfweek} at ${movie.programs.dayListS[0].hour}H${movie.programs.dayListS[0].min}</h6>
		                                <h6>2- ${movie.programs.dayListS[1].daysOfweek} at ${movie.programs.dayListS[1].hour}H${movie.programs.dayListS[1].min}</h6>
		                                <h6>3- ${movie.programs.dayListS[2].daysOfweek} at ${movie.programs.dayListS[2].hour}H${movie.programs.dayListS[2].min}</h6>
		                             <div>
				                             Author:
				                             <h6>${movie.author}</h6>
				                              Adresse:
				                              <h6>${movie.adr.number} ${movie.adr.way} ${movie.adr.postalCode} ${movie.adr.town} ${movie.adr.country}</h6>
				                               Min age:
				                              <h6>${movie.minAge}</h6>
				                               Actors:
				                              <h6>${movie.actors[0].fisrtName} </h6>
					                           <form class="form-horizontal m-t-20" id="loginform">
					                                <div class="dt-buttons">
					                                     <a href="http://localhost:8080/MovieClient" class="button">Retour</a>
						                                 <div class="form-group text-center">
						                                 </div>
					                                </div>
			                                 
			                                   </form>
	                                 </div>
	                          </div>
	                       </div>
                         </div>
                     </div>
                  </div>
                </div>
           </div>
           <%@ include file="/include/aside2.jsp" %>
		   <div class="chat-windows"></div>
		   <%@ include file="/include/js.jsp" %>
</body>
</html>
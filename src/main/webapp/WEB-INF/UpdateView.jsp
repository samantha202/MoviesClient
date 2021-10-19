<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Update section</title>
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
	                        <h4 class="page-title">Movie Update</h4>
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
	                                    <li class="breadcrumb-item active" aria-current="page">Update</li>
	                                </ol>
	                            </nav>
	                        </div>
	                    </div>
                   </div>
            </div>
            <div class="row">
                    <div class="col-12">
                       <hr> 
                    </div>
                    <div class="card-body"> 
                         <center class="m-t-30"> <img src="<%= request.getContextPath() %>/assets/images/${movie.getId()}.jpg" class="" width="200"  />
                              <h4 class="card-title m-t-10">${movie.title} </h4>
                              <h6 class="card-subtitle"></h6>
                         </center>
                          <form method="POST" action="update?id=${movie.getId()}">
                                <div class="form-body">
                                    <div class="card-body">
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Title</label>
                                                    <input type="text" id="title"  name="title" class="form-control" placeholder="ex Titanic" value="${movie.title}">
                                                    <small class="form-control-feedback"> </small> </div>
                                             </div>
                                            <!--/span-->
                                             <div class="col-md-6">
                                                <div class="form-group has-danger">
                                                    <label class="control-label">Language</label>
                                                    <input type="text" id="language" name="language" class="form-control form-control-danger"  value="${movie.languages}">
                                                    <small class="form-control-feedback"> </small> </div>
                                             </div>
                                            <!--/span-->
                                           </div>
                                           <div class="row p-t-20">
	                                            <div class="col-md-6">
	                                                <div class="form-group">
	                                                    <label class="control-label">Author</label>
	                                                    <input type="text" id="author"  name="author" class="form-control"  value="${movie.author}">
	                                                    <small class="form-control-feedback"> </small> </div>
	                                            </div>
	                                            <!--/span-->
	                                            <div class="col-md-6">
	                                                <div class="form-group has-danger">
	                                                    <label class="control-label">Kind</label>
	                                                    <input type="text" id="kind" name="kind" class="form-control form-control-danger" value="${movie.king}">
	                                                    <small class="form-control-feedback"> </small> 
	                                                </div>
	                                            </div>
                                            <!--/span-->
                                          </div>
                                          <div class="row p-t-20">
	                                            <div class="col-md-6">
	                                                <div class="form-group">
	                                                    <label class="control-label">Min Age</label>
	                                                    <input type="text" id="minAge"  name="minAge" class="form-control" value="${movie.minAge}">
	                                                    <small class="form-control-feedback"> </small> </div>
	                                            </div>
	                                            <!--/span-->
	                                            <div class="col-md-6">
	                                                <div class="form-group has-danger">
	                                                    <label class="control-label">Duration</label>
	                                                     <input type="time" id="duration"  name="duration" class="form-control" value="${movie.duration.hour}:${movie.duration.hour}:${movie.duration.hour}">
	                                                    <small class="form-control-feedback"> </small> 
	                                                </div>
	                                            </div>
	                                            <!--/span-->
                                           </div>
                                         <div class="row p-t-20">
	                                            <div class="col-md-6">
	                                                <div class="form-group">
	                                                    <label class="control-label">Actors1</label>
	                                                    <input type="text" id="actors1"  name="actors1" class="form-control" value="${movie.actors[0].fisrtName} ">
	                                                    <small class="form-control-feedback"></small> 
	                                                </div>
	                                            </div>
	                                            <!--/span-->
	                                            <div class="col-md-6">
	                                                <div class="form-group has-danger">
	                                                    <label class="control-label">Actors2</label>
	                                                     <input type="text" id="actors2"  name="actors2" class="form-control" value="${movie.actors[1].fisrtName}">
	                                                    <small class="form-control-feedback"> </small> </div>
	                                            </div>
                                         </div>
                                    </div>
                                            <div class="col">
                                                <div class="form-group has-danger">
                                                    <label class="control-label">Description</label>
                                                     <textarea class="form-control" rows="3" cols="1" name="description">${movie.description}</textarea>
                                                </div> 
                                             </div>
		                                       <hr>
		                                    <div class="card-body">
		                                     <h4 class="card-title m-t-40">Address</h4>
		                                        <div class="row">
		                                            <div class="col-md-12 ">
		                                                <div class="form-group">
		                                                    <label>Number</label>
		                                                    <input type="text" class="form-control" name="numb" value="${movie.adr.number}">
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <div class="row">
		                                            <div class="col-md-6">
		                                                <div class="form-group">
		                                                    <label>Street</label>
		                                                    <input type="text" class="form-control" name="street" value="${movie.adr.way}">
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                            <div class="col-md-6">
		                                                <div class="form-group">
		                                                    <label>City</label>
		                                                    <input type="text" class="form-control" name="city" value="${movie.adr.town}">
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                        </div>
		                                        <!--/row-->
		                                        <div class="row">
		                                            <div class="col-md-6">
		                                                <div class="form-group">
		                                                    <label>Post Code</label>
		                                                    <input type="text" class="form-control" name="postCode" value="${movie.adr.postalCode}">
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                            <div class="col-md-6">
		                                                <div class="form-group">
		                                                    <label>Country</label>
		                                                    <input type="text" class="form-control" name="country" value="${movie.adr.country}">
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                         </div>
		                                       </div>
		                                  </div>
							                <div class="row">
							                    <div class="col-sm-12">
							                        <div class="card">
							                            <div class="card-body">
							                                <h4 class="card-title">Programs</h4>
							                                 <h5 class="card-subtitle"></h5>
							                                    <div class="form-group m-t-40 row">
							                                        <label for="example-text-input" class="col-2 col-form-label">Starting Date</label>
							                                        <div class="col-10">
							                                            <input class="form-control" type="date"  name="startingDate">
							                                        </div>
							                                    </div>
							                                    <div class="form-group row">
							                                        <label for="example-search-input" class="col-2 col-form-label">Ending Date</label>
							                                        <div class="col-10">
							                                            <input class="form-control" type="date" name="endingDate">
							                                        </div>
							                                    </div>
							                                      <div class="row p-t-20">
							                                           <div class="col-md-6">
							                                                <div class="form-group">
							                                                    <label class="control-label">Days 1</label>
							                                                     <select class="custom-select col-12" name="day1">
									                                                <option value="${movie.king}"></option>
									                                                <option value="Monday">Monday</option>
									                                                <option value="Tuesday">Tuesday</option>
									                                                <option value="Wednesday">Wednesday</option>
									                                                <option value="Thursday">Thursday</option>
									                                                <option value="Friday">Friday</option>
									                                                <option value="Saturday">Saturday</option>
									                                                <option value="Sunday">Sunday</option>
							                                                  </select>
							                                                 </div>
							                                            </div>
							                                            <!--/span-->
							                                            <div class="col-md-6">
							                                                <div class="form-group has-danger">
							                                                    <label class="control-label">Time</label>
							                                                     <input type="time" name="tim1" class="form-control" value="..">
							                                                    <small class="form-control-feedback"> </small> 
							                                                </div>
							                                            </div>
							                                            </div>
							                                           <div class="row p-t-20">
							                                            <div class="col-md-6">
							                                                <div class="form-group">
							                                                    <label class="control-label">Days 2</label>
							                                                     <select class="custom-select col-12" name="day2" value="..">
									                                                <option value="">Choose...</option>
									                                                <option value="Monday">Monday</option>
									                                                <option value="Tuesday">Tuesday</option>
									                                                <option value="Wednesday">Wednesday</option>
									                                                <option value="hursday">Thursday</option>
									                                                <option value="Friday">Friday</option>
									                                                <option value="Saturday">Saturday</option>
									                                                <option value="Sunday">Sunday</option>
							                                                  </select>
							                                                 </div>
							                                              </div>
							                                            <!--/span-->
							                                            <div class="col-md-6">
							                                                <div class="form-group has-danger">
							                                                    <label class="control-label">Time</label>
							                                                     <input type="time" name="tim2" class="form-control" value="..">
							                                                    <small class="form-control-feedback"> </small></div>
							                                            </div>
							                                            </div>
							                                             <div class="row p-t-20">
							                                              <div class="col-md-6">
							                                                <div class="form-group">
							                                                    <label class="control-label">Days 3</label>
							                                                     <select class="custom-select col-12" name="day3" value="..">
									                                                <option selected="">Choose...</option>
									                                                <option value="Monday">Monday</option>
									                                                <option value="Tuesday">Tuesday</option>
									                                                <option value="Wednesday">Wednesday</option>
									                                                <option value="Thursday">Thursday</option>
									                                                <option value="Friday">Friday</option>
									                                                <option value="Saturday">Saturday</option>
									                                                <option value="Sunday">Sunday</option>
							                                                  </select>
							                                                </div>
							                                            </div>
							                                            <!--/span-->
							                                            <div class="col-md-6">
							                                                <div class="form-group has-danger">
							                                                    <label class="control-label">Time</label>
							                                                     <input type="time" name="tim3" class="form-control" value="..">
							                                                    <small class="form-control-feedback"> </small> 
							                                                </div>
							                                            </div>
							                                            </div>
							                                        <div class="form-actions">
							                                            <button type="submit"  class="btn btn-info"> <i class="fa fa-check"></i> Save</button>
							                                            <button type="button" class="btn btn-dark">Cancel</button>
							                                       </div>
							                                    </div>
							                                </div>
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
 <%@ include file="/include/js.jsp" %>
</body>
</html>
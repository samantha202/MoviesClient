<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movies</title>
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
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
             <div class="page-breadcrumb">
                <div class="row">
                      <h3>Hello  ${user.firstName} ${user.lastName}</h3>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header bg-info">
                                <h4 class="m-b-0 text-white">Add Movie</h4>
                            </div>
                         <form method="POST" action="add">
                                <div class="card-body">
                                    <h4 class="card-title">Movie Informations</h4>
                                </div>
                                <hr>
                                <div class="form-body">
                                    <div class="card-body">
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Title</label>
                                                    <input type="text" id="title"  name="title" class="form-control" placeholder="ex Titanic">
                                                    <small class="form-control-feedback"> </small> </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group has-danger">
                                                    <label class="control-label">Language</label>
                                                    <input type="text" id="language" name="language" class="form-control form-control-danger" placeholder="ex french">
                                                    <small class="form-control-feedback"> </small> </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Author</label>
                                                    <input type="text" id="author"  name="author" class="form-control" placeholder=" ex Nicolas Dubois">
                                                    <small class="form-control-feedback"> </small> </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group has-danger">
                                                    <label class="control-label">Kind</label>
                                                    <input type="text" id="kind" name="kind" class="form-control form-control-danger" placeholder="ex Drame">
                                                    <small class="form-control-feedback"> </small> </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Min Age</label>
                                                    <input type="text" id="minAge"  name="minAge" class="form-control" placeholder="ex 18">
                                                    <small class="form-control-feedback"> </small> </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group has-danger">
                                                    <label class="control-label">Duration</label>
                                                     <input type="time" id="duration"  name="duration" class="form-control" placeholder="">
                                                    <small class="form-control-feedback"> </small> </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                         <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Actors1</label>
                                                    <input type="text" id="actors1"  name="actors1" class="form-control" placeholder="Alex kendrick">
                                                    <small class="form-control-feedback"> </small> </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group has-danger">
                                                    <label class="control-label">Actors2</label>
                                                     <input type="text" id="actors2"  name="actors2" class="form-control" placeholder="Tom stafford">
                                                    <small class="form-control-feedback"> </small> </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        </div>
                                        <div class="col">
                                                <div class="form-group has-danger">
                                                    <label class="control-label">Description</label>
                                                     <textarea class="form-control" rows="3" cols="1" name="description" ></textarea>
                                                </div> 
                                       
                                         </div>
                                         <hr>
	                                    <div class="card-body">
	                                     <h4 class="card-title m-t-40">Address</h4>
	                                        <div class="row">
	                                            <div class="col-md-12 ">
	                                                <div class="form-group">
	                                                    <label>Number</label>
	                                                    <input type="text" class="form-control" name="numb">
	                                                </div>
	                                            </div>
	                                        </div>
	                                        <div class="row">
	                                            <div class="col-md-6">
	                                                <div class="form-group">
	                                                    <label>Street</label>
	                                                    <input type="text" class="form-control" name="street">
	                                                </div>
	                                            </div>
	                                            <!--/span-->
	                                            <div class="col-md-6">
	                                                <div class="form-group">
	                                                    <label>City</label>
	                                                    <input type="text" class="form-control" name="city">
	                                                </div>
	                                            </div>
	                                            <!--/span-->
	                                        </div>
	                                        <!--/row-->
	                                        <div class="row">
	                                            <div class="col-md-6">
	                                                <div class="form-group">
	                                                    <label>Post Code</label>
	                                                    <input type="text" class="form-control" name="postCode">
	                                                </div>
	                                            </div>
	                                            <!--/span-->
	                                            <div class="col-md-6">
	                                                <div class="form-group">
	                                                    <label>Country</label>
	                                                    <input type="text" class="form-control" name="country">
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
								                                                <option value="">Choose...</option>
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
						                                                     <input type="time" name="tim1" class="form-control">
						                                                    <small class="form-control-feedback"> </small> </div>
						                                            </div>
						                                            </div>
						                                           <div class="row p-t-20">
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label class="control-label">Days 2</label>
						                                                     <select class="custom-select col-12" name="day2">
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
						                                                     <input type="time" name="tim2" class="form-control">
						                                                    <small class="form-control-feedback"> </small> </div>
						                                            </div>
						                                            </div>
						                                             <div class="row p-t-20">
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label class="control-label">Days 3</label>
						                                                     <select class="custom-select col-12" name="day3">
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
						                                                     <input type="time" name="tim3" class="form-control">
						                                                    <small class="form-control-feedback"> </small> </div>
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
                               
              <!-- footer -->
            <!-- ============================================================== -->
             <%@ include file="/include/footer.jsp" %>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
      </div>
			<%@ include file="/include/aside2.jsp" %>
			
			<div class="chat-windows"></div>
			
			<%@ include file="/include/js.jsp" %>
</body>
</html>
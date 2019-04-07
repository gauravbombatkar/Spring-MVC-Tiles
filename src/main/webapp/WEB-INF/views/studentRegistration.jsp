<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.error {
	color: red
}
</style>

<div class="main-panel">
	<div class="content-wrapper">
		<div class="row">
			<div class="col-12 grid-margin">
				<div class="card">
					<div class="card-body">
						<h6 class="card-title">Student Registeration</h6>
						<form:form class="form-sample" action="register"
							modalAttribute="studentForm" commandName="studentForm"
							method="post" enctype="multipart/form-data">
							<p class="card-description">Personal info</p>
							<form:hidden path="id" />
							<div class="row">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">First Name</label>
										<div class="col-sm-9">
											<form:input path="firstName" type="text" class="form-control" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Last Name</label>
										<div class="col-sm-9">
											<form:input path="lastName" type="text" class="form-control" />
											<form:errors path="lastName" cssClass="error"></form:errors>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Gender</label>
										<div class="col-sm-9">
											<form:select path="gender" class="form-control">
												<form:option value="Male">Male</form:option>
												<form:option value="Female">Female</form:option>
											</form:select>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Date of Birth</label>
										<div class="col-sm-9">
											<form:input path="dateOfBirth" class="form-control"
												placeholder="yyyy/dd/mm" />
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Address 1</label>
										<div class="col-sm-9">
											<form:input path="addressOne" type="text"
												class="form-control" />
											<form:errors path="addressOne" cssClass="error"></form:errors>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">State</label>
										<div class="col-sm-9">
											<form:input path="state" type="text" class="form-control" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Address 2</label>
										<div class="col-sm-9">
											<form:input path="addressTwo" type="text"
												class="form-control" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Postcode</label>
										<div class="col-sm-9">
											<form:input path="postcode" type="text" class="form-control" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">City</label>
										<div class="col-sm-9">
											<form:input path="city" type="text" class="form-control" />
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Country</label>
									<div class="col-sm-9">
										<form:select path="country" class="form-control">
											<form:option value="India">India</form:option>
											<form:option value="Italy">Italy</form:option>
											<form:option value="Russia">Russia</form:option>
											<form:option value="America">America</form:option>
										</form:select>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Select Course</label>
									<div class="col-sm-9">
										<form:select path="coursename" class="form-control">
										<form:option value="#">Select Course</form:option>
											<form:option value="MCA">MCA</form:option>
											<form:option value="MCA">MSc Computer Science</form:option>
											<form:option value="B.E">B.E</form:option>
											<form:option value="M.TECH">M.TECH</form:option>
										</form:select>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label"></label>
									<!-- File upload</label> <input
										type="file" name="filename">
									<div class="input-group col-xs-12"></div> -->
									<div class="file-field">
										<div class="btn btn-primary btn-sm float-left">
											<span>Choose file</span> <input type="file" name="filename">
										</div>
									</div>
								</div>
								<button type="submit" class="btn  btn-success mr-2 ">Submit</button>
								<button class="btn btn-light">Cancel</button>
								<button type="clear" class="btn  btn-btn-warning mr-2 ">Clear</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
 <div class="container-scroller">
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h3 class="card-title">Student Table</h3>
				<p class="card-description">
				</p>
				<div class="table-responsive">
					<!-- put new button: Add Customer -->

					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Image</th>
								<th>First name</th>
								<th>Last name</th>
								<th>Gender</th>
								<th>Course</th>
								<th>AddressOne</th>
								<th>AddressTwo</th>
								<th>State</th>
								<th>City</th>
								<th>Postcode</th>
								<th>Country</th>
								<th>DateOfBirth</th>

								<th>Action</th>
								<th>Action</th>
								<th>Action</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="stud" items="${studentlist}">
								<tr>
									<td>${stud.id}</td>
									<td><img
										src="${pageContext.request.contextPath}/resources/upload/${stud.filename}" /></td>
									<td>${stud.firstName}</td>
									<td>${stud.lastName}</td>
									<td>${stud.gender}</td>
									<td>${stud.coursename}</td>
									<td>${stud.addressOne}</td>
									<td>${stud.addressTwo}</td>
									<td>${stud.state}</td>
									<td>${stud.city}</td>
									<td>${stud.postcode}</td>
									<td>${stud.country}</td>
									<td>${stud.dateOfBirth}</td>

									<td><a href="deleteStudent?id=${stud.id}"
										onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a></td>
									<td><a href="viewStudentReg?id=${stud.id}"
										onclick="if (!(confirm('Are you sure you want to edit this customer?'))) return false">Edit</a></td>
									<td><a href="dataSend?id=${stud.id}"
										onclick="if (!(confirm('Are you sure you want to send email this customer?'))) return false">Send
											Email</a></td>
									<td><a href="downloadPDF?id=${stud.id}"
										onclick="if (!(confirm('Are you sure you want to download pdf this customer?'))) return false">Create
											PDF</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>   
</div> 

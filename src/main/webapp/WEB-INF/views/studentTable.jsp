<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
<!--
-->
</style>
<div class="container-scroller">
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Student MCA</h5>
				<p class="card-description"></p>
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
							<c:forEach var="stud" items="${studentCourseMcalist}">
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
					<br />
					<h5 class="card-title">Student MSc Computer Science</h5>
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
							<c:forEach var="stud" items="${studentCourseMsc}">
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
					<!--  -->
					<br />
					<h5 class="card-title">Student B.E</h5>
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
							<c:forEach var="stud" items="${studentCourseBelist}">
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
					<!--  -->
					<br />
					<h5 class="card-title">Student M.TECH</h5>
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
							<c:forEach var="stud" items="${studentCourseMtechlist}">
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


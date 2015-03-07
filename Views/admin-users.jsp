<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<jsp:include page="includes/admin/header.jsp" />
<link href="css/responsive-table.css" rel="stylesheet" type="text/css" >
<jsp:include page="includes/admin/nav.jsp" />

<%
	if (session.getAttribute("email") != null) {
%>

<sql:setDataSource var="ds" dataSource="jdbc/webshop" />

<sql:query var="results" dataSource="${ds}" sql="select * from users limit 20" />

<div id="page-wrap">

<div class="container">
	<h2>User Details</h2>
  
	  <div class="table-responsive">
			<table class="table table-hover">
				<thead>
				<tr>
					<th>ID</th>
					<th>Email</th>
					<th>Password</th>
					<th>Username</th>
					<th>Github profile</th>
					<th>Age</th>
					<th>Gender</th>
				</tr>
				</thead>
				<tbody>
		      <c:forEach var="user" items="${results.rows}">
		      	<tr>
		      		<td scope="row">${user.id}</td>
		      		<td>${user.email}</td>
		      		<td class="italic">${user.password}</td>
		      		<td>${user.username}</td>
		      		<td>${user.github}</td>
		      		<td>${user.age}</td>
		      		<td class="italic">${user.Gender}</td>
		      	</tr>
		      </c:forEach>
		      </tbody>
			</table>
		</div>
	</div>
</div>


<%}else{ %>
<jsp:include page="/NotLoged.jsp" />
<%}%>
<jsp:include page="includes/footer.jsp" />
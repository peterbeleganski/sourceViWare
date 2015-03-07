<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<jsp:include page="includes/admin/header.jsp" />
<jsp:include page="includes/admin/nav.jsp" />

<sql:setDataSource var="ds" dataSource="jdbc/webshop" />

<sql:query var="results" dataSource="${ds}" sql="select * from users" />

<div class="container">
<div class="content-headline">
		<h2>All Users Details</h2>
		<h3>Admin panel</h3>
	</div>
	
	<div class="table-responsive" data-example-id="hoverable-table">
    <table class="table table-hover">
      <thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Date of Birth</th>
			<th>Github profile</th>
			<th>Username</th>
			<th>Email Address</th>
		</tr>
		</thead>
      <tbody>
      <c:forEach var="user" items="${results.rows}">
      	<tr>
      		<th scope="row">${user.id}</th>
      		<td>${user.email}</td>
      		<td class="italic">${user.password}</td>
      		<td>${user.username}</td>
      		<td>${user.username}</td>
      	</tr>
      </c:forEach>
      </tbody>
		
    </table>
  </div>
</div>


<jsp:include page="includes/admin/footer.jsp" />
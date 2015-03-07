<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<jsp:include page="includes/admin/header.jsp" />
<jsp:include page="includes/admin/nav.jsp" />


<%
	if (session.getAttribute("email") != null) {
%>

<sql:setDataSource var="ds" dataSource="jdbc/webshop" />

<sql:query var="results" dataSource="${ds}" sql="select * from images ORDER BY id DESC" />

<div class="container">
<div class="content-headline">
		<h2>All courses Details</h2>
		<h3>Admin panel</h3>
	</div>
	
	<div class="table-responsive" data-example-id="hoverable-table">
    <table class="table table-hover">
      <thead>
        <tr>
          <th>ID</th>
          <th>IMG</th>
          <th>Title</th>
          <th>Instructor</th>
          <th>YouTube - link</th>
          <th>Information</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach var="course" items="${results.rows}">
      	<tr>
      		<th scope="row">${course.id}</th>
      		<td>${course.stem}</td>
      		<td>${course.attribution_name}</td>
      		<td>${course.instructor}</td>
      		<td>${course.attribution_url}</td>
      		<td>${course.image_information}</td>
      	</tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>

<%}else{ %>
<jsp:include page="/NotLoged.jsp" />
<%}%>


<jsp:include page="includes/admin/footer.jsp" />
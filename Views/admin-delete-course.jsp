<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<jsp:include page="includes/admin/header.jsp" />
<jsp:include page="includes/admin/nav.jsp" />


<%
	if (session.getAttribute("email") != null) {
%>
<sql:setDataSource var="ds" dataSource="jdbc/webshop" />

<sql:query var="results" dataSource="${ds}" sql="select * from images" />

<div class="container">
	<div class="content-headline">
		<h2>Delete Tutorial</h2>
		<h3>Admin panel</h3>
	</div>
<form action="Admin" method="POST">
	<input type="hidden" name="action" value="delete" />
	<label>Select ID:</label>
 	<select class="form-control"  name="course-id">
	  <c:forEach var="video" items="${results.rows}">
	  		<option value="${video.id}"> ID -> ${video.id} Name -> ${video.attribution_name} Instructor -> ${video.instructor}</option>
	  </c:forEach>
	</select>

    <button class="btn btn-success btn-lg submit-button" value="Add">Delete video</button>
  
	</form>
	<%if(request.getAttribute("status") =="ok") {%>
		<img src="http://www.shamusyoung.com/twentysidedtale/images/deleted.png" class="img-responsive" />
	<%}else if(request.getAttribute("status") =="error"){ %>
		<img src="http://media1.giphy.com/media/bi6RQ5x3tqoSI/giphy.gif" class="img-responsive status-img" />
	<%} %>
</div>

<%}else{ %>
<jsp:include page="/NotLoged.jsp" />
<%}%>

<jsp:include page="includes/admin/footer.jsp" />


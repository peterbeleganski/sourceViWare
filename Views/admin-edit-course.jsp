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
		<h2>Edit Tutorial</h2>
		<h3>Admin panel</h3>
	</div>
	
	<form action="Admin" method="POST">
	<input type="hidden" name="action" value="edit" />
	<label>Select ID:</label>
 	<select class="form-control"  name="course-id">
	  <c:forEach var="video" items="${results.rows}">
	  		<option value="${video.id}">${video.id}</option>
	  </c:forEach>
	</select>
  <div class="form-group">
    <label for="video-name">Video name</label>
    <input type="text" class="form-control" name="title" id="video-name" required placeholder="Enter video name...">
  </div>
  
  	<sql:query var="results" dataSource="${ds}" sql="select * from instructors" />
  	<label>Select Instructor:</label>
 	<select class="form-control"  name="instructor">
	  <c:forEach var="instructor" items="${results.rows}">
	  		<option value="${instructor.first_name} ${instructor.last_name}">${instructor.first_name} ${instructor.last_name}</option>
	  </c:forEach>
	</select>
		  
  	<label>Select image:</label>
 	<select class="form-control"  name="course-image">
	  <option value="android2.jpg">Android - image</option>
	  <option value="database.jpg">Database - image</option>
	  <option value="html.jpg">HTML AND CSS - image</option>
	  <option value="java2.jpg">Java - image</option>
	  <option value="servlet.jpg">Servlet AND JSP - image</option>
	  <option value="js1.jpg">JavaScript - image</option>
	  <option value="jquery.jpg">jQuert - image</option>
	</select>
	<div class="form-group">
    <label for="youtube-url">YouTube URL</label>
    <input type="text" class="form-control" name="url" id="youtube-url" required  placeholder="URL">
  </div>
	<label for="info-video">Video - description</label>
	<textarea class="form-control"rows="3" name="video-info" id="info-video" required placeholder="Add video description">
		
	</textarea>
 	
    <button class="btn btn-success btn-lg submit-button" value="Add">Add video</button>
  
	</form>
		<% if( request.getAttribute("status") != null) {%>
		<h2><%=request.getAttribute("status") %></h2>	
		<%} %>
		
		<%}else{ %>
			<jsp:include page="/NotLoged.jsp" />
		<%} %>
</div>








<jsp:include page="includes/admin/footer.jsp" />
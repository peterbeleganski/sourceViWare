<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<jsp:include page="includes/header.jsp" />
<jsp:include page="includes/nav.jsp" />


<%
	if (session.getAttribute("email") != null) {
%>
<sql:setDataSource var="ds" dataSource="jdbc/webshop" />

<sql:query var="results" dataSource="${ds}"
	sql="select * from images where id=?">
	<sql:param>${param.image}</sql:param>
</sql:query>
<c:set scope="page" var="imageID" value="${param.image}"></c:set>
<c:set scope="page" var="image" value="${results.rows[0]}"></c:set>
<c:set scope="page" var="imgname"
	value="${image.stem}.${image.image_extension}"></c:set>

<!--	<a href="<c:url value="/Sign?action=image&image=${image.id}" />"></a> -->
<section class="content-item grey" id="gallery-item">
	<div class="container">
		<div class="row">
			<div class="col-m-10">
				<iframe class="video" width="900" height="530"
					src="${image.attribution_url}" frameborder="0" allowfullscreen
					controls-1></iframe>
				<!-- <img src="${pageContext.request.contextPath}/image/${imgname}" class="img-responsive" /> -->
			</div>
			<div class="col-md-8 col-md-offset-2">
				<h2>${image.attribution_name}</h2>

				<div class="box">
					<h5>
						<i><c:out value="${image.image_information}"></c:out></i>
					</h5>
				</div>
				<div class="box">
					<h3>
						<i class="fa fa-users"></i> Instructor
					</h3>
					<h4>
						<c:out value="${image.instructor}"></c:out>
					</h4>
				</div>
			</div>
		</div>
		<div class="col-md-offset-2">
			<h3>Useful resources</h3>
		</div>

		<div class="col-md-8 box col-md-offset-2">
			<c:set var="currCourse" scope="page"
				value="${image.attribution_name}"></c:set>



			<sql:query var="results" dataSource="${ds}"
				sql="SELECT * FROM tutorials WHERE id=?">
				<sql:param>${imageID}</sql:param>
			</sql:query>


			<c:set scope="page" var="res" value="${results.rows}"></c:set>

			<ul class="list-unstyled">
				<c:forEach var="res" items="${results.rows}">

					<li><i class="fa fa-link"><a href="${res.link}"
							target="_blank"> -${res.name}</a> </i></li>

				</c:forEach>
			</ul>

		</div>
	</div>

	<%-- 		<sql:setDataSource var="ds" dataSource="jdbc/webshop" />
<sql:query var="results" dataSource="${ds}" sql="select * from users where email=?">
		<sql:param><%=session.getAttribute("email")%></sql:param>
</sql:query>
 <c:set scope="page" var="user" value="${results.rows[0]}"></c:set>
 
<div class="container">
	<p>${user.password}</p>
	<p>${user.username}</p>
</div> --%>

</section>
<%
	} else {
%>
<jsp:include page="/NotLoged.jsp" />
<%
	}
%>



<jsp:include page="includes/footer.jsp" />
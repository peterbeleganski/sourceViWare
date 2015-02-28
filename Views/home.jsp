<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<jsp:include page="includes/header.jsp" />
<jsp:include page="includes/nav.jsp" />


<sql:setDataSource var="ds" dataSource="jdbc/webshop" />

<sql:query var="results" dataSource="${ds}" sql="select * from images" />

<div class="jumbotron">
<div class="container">

	<div class="content-headline courses-heading">
		<h2>Videos</h2>
		<h3>Pick a Track and get started</h3>
	</div>
	<div class="row">
		<c:forEach var="image" items="${results.rows}">
			<div class="col-sm-3 course">

				<!--	<a href="<c:url value="/Sign?action=image&image=${image.id}" />"></a> -->

				<figure>
				<a href="<c:url value="/Sign?action=image&image=${image.id}" />">
					<img
					src="${pageContext.request.contextPath}/image/${image.stem}.${image.image_extension}"
					class="img-responsive"></a>
					<figcaption>
						<a href="<c:url value="/Sign?action=image&image=${image.id}" />">${image.attribution_name}</a>
					</figcaption>
				</figure>
			</div>
		</c:forEach>
	</div>
</div>
</div>
<jsp:include page="includes/footer.jsp" />
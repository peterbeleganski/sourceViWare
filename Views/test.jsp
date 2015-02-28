<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<jsp:include page="includes/header.jsp" />
<jsp:include page="includes/nav.jsp" />



<sql:setDataSource var="ds" dataSource="jdbc/webshop" />
<sql:query var="results" dataSource="${ds}" sql="select * from users where email=?">
		<sql:param><%=session.getAttribute("email")%></sql:param>
</sql:query>
 <c:set scope="page" var="user" value="${results.rows[0]}"></c:set>
 
<div class="container">
	<p>${user.password}</p>
	<p>${user.username}</p>
</div>

<jsp:include page="includes/footer.jsp" />
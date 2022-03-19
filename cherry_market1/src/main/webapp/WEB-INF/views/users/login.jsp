<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/login.jsp</title>
</head>
<body>
<div class="container">
<c:choose>
		<c:when test="${not empty sessionScope.id }">
			<script>
				alert("${param.id}님 로그인 되었습니다.");
				location.href="${pageContext.request.contextPath}/home.do";
			</script>
		</c:when>
		<c:otherwise>
			<script>
				alert("회원정보가 틀립니다.");
				location.href="${pageContext.request.contextPath }/users/loginform.do";
			</script>
		</c:otherwise>
</c:choose>
</div>	
</body>
</html>
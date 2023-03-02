<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>부서목록</h1>
	</header>
	<article>
		<table>
			<thead>
				<tr>
					<th>사번</th>
					<th>이름</th>
					<th>직종</th>
					<th>부서</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="k" items="${dlist}">
					<tr>
						<td>${k.employee_id}</td>
						<td>${k.first_name}</td>
						<td>${k.job_id}</td>
						<td>${k.department_id}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</article>
</body>
</html>
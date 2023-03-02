<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: 10px auto;
	width: 1000px;
	border-collapse: collapse;
	border-color: navy;
}

table, th, td {
	border: 1px solid black;
	text-align: center;
	padding: 10px;
}
h1{text-align: center;}
</style>
</head>
<body>
	<header>
		<h1>사원목록(${list.size()}명)</h1>
	</header>
	<article>
		<table>
			<thead>
				<tr>
					<th style="width: 250px">사번</th>
					<th style="width: 250px">이름</th>
					<th style="width: 250px">직종</th>
					<th style="width: 250px">부서</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="k" items="${list}">
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
		<c:choose>
			<c:when test="${idx==1}"><h1>사번 검색 결과 : ${dylist.size()}명</h1></c:when>		
			<c:when test="${idx==2}"><h1>이름 검색 결과 : ${dylist.size()}명</h1></c:when>		
			<c:when test="${idx==3}"><h1>직종 검색 결과 : ${dylist.size()}명</h1></c:when>		
			<c:when test="${idx==4}"><h1>부서 검색 결과 : ${dylist.size()}명</h1></c:when>		
		</c:choose>
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
				<c:forEach var="k" items="${dylist}">
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<h2>행 또는 열 합치기</h2>
	<table border = "1">
	<caption>기본 표</caption>
		<tr>
			<th> 제목 셀 </th>
			<td> 1행 2열 </td>
			<td> 1행 3열 </td>
			<td> 1행 4열 </td>
		</tr>
		<tr>
			<th> 제목 셀  </th>
			<td> 2행 2열 </td>
			<td> 2행 3열 </td>
			<td> 2행 4열 </td>
		</tr>
		<tr>
			<th> 제목 셀  </th>
			<td> 3행 2열 </td>
			<td> 3행 3열 </td>
			<td> 3행 4열 </td>
		</tr>
	</table>
	
	<h2>colspan을 이용한 (열)셀 합치기</h2>
	<!-- 
		<td colspan = "합칠 셀의 개수"> 내용 </td>
		<th colspan = "합칠 셀의 개수"> 내용 </th>
	 -->
	 <table border = "1">
	<caption>기본 표</caption>
		<tr>
			<th> 제목 셀 </th>
			<td> 1행 2열 </td>
			<td> 1행 3열 </td>
			<td> 1행 4열 </td>
		</tr>
		<tr>
			<th> 제목 셀  </th>
			<td> 2행 2열 </td>
			<td> 2행 3열 </td>
			<td> 2행 4열 </td>
		</tr>
		<tr>
			<th> 제목 셀  </th>
			<td colspan="3"> 3행 1열 </td>
			
		</tr>
	</table>
	
	<h2>rowspan을 이용한 (행)셀 합치기</h2>
	<!-- 
		<td rowspan = "합칠 셀의 개수"> 내용 </td>
		<th rowspan = "합칠 셀의 개수"> 내용 </th>
	 -->
	<table border = "1">
	<caption>기본 표</caption>
		<tr>
			<th> 제목 셀 </th>
			<td> 1행 2열 </td>
			<td> 1행 3열 </td>
			<td> 1행 4열 </td>
		</tr>
		<tr>
			<th rowspan="2"> 제목 셀  </th>
			<td> 2행 2열 </td>
			<td> 2행 3열 </td>
			<td> 2행 4열 </td>
		</tr>
		<tr>
			<td> 3행 2열 </td>
			<td> 3행 3열 </td>
			<td> 3행 4열 </td>
		</tr>
	</table>
	
	
</body>
</html>
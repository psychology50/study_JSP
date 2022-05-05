<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<h2>thead, tbody, tfoot 태그 - 표 구조 정의하기</h2>
	<!-- 위 3가지 태그는 table의 t와 제목 부분(head), 본문(body), 요약 부분(foot)가 합쳐진 말입니다. -->
	<!-- 기본 형태
		<thead>
			<tr> ... </tr>
		</thead>
		<tbody>
			<tr> ... </tr>
		</tbody>
		<tfoot>
			<tr> ... </tr>
		</tfoot>
	 -->
	
	<table border="1">
	<caption>제주특별자치도 학교현황(2015.4.1 기준)</caption>
	<thead>
		<tr>
			<th>구분</th>			
			<th>학교슈</th>			
			<th>학급수</th>			
			<th>학생수</th>			
			<th>교원수</th>			
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>구분</th>
			<td>117</td>
			<td>252</td>
			<td>5,547</td>
			<td>474</td>
		</tr>
		<tr>
	 		<th>고등학교</th>
	 		<td>117</td>
	 		<td>252</td>
	 		<td>5,547</td>
	 		<td>474</td>
	 	</tr>
	 	<tr>
	 		<th>특수학교</th>
	 		<td>117</td>
	 		<td>252</td>
	 		<td>5,547</td>
	 		<td>474</td>
	 	</tr>		
	</tbody>		
	<tfoot> <!-- 표의 요약 부분 -->
		<tr>
	 		<th>합계</th>
	 		<th>304</th>
	 		<th>3,437</th>
	 		<th>86,954</th>
	 		<th>6,111</th>
 		</tr>
	</tfoot>
	</table>
	
</body>
</html>
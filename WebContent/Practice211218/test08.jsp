<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>예제</title>
	<style>
		h2 {
			border-bottom:1px solid black;
		}
	</style>
</head>

<body>
	<h2>회원가입</h2>
	
	<table border="1">
		<thead>
			<tr>
				<td> *이름 </td>
				<td>
					<label for="id"></label>
					<input type="text" id="id" required>
				</td>
			</tr>	
		</thead>
		<tbody>
			<tr>
				<td> *아이디 </td>
				<td>
					<label for="id"></label>
					<input type="text" id="id" required>
					<input type="submit" value="중복확인">
				</td>
			</tr>
			<tr>
				<td> *비밀번호 </td>
				<td>
					<label for="pw"></label>
					<input type="password" id="pw" required>*영문대소문자/숫자/특수문자를 혼용하여 2종 10~16자 또는 3종류 8~16자		
				</td>
			</tr>
			<tr>
				<td> *비밀번호 확인 </td>
				<td>
					<label for="pw2"></label>
					<input type="password" id="pw2" required>	
				</td>
			</tr>
			<tr>
				<td> *생일/성별 </td>
				<td>
					<label class="year" for="year2"></label>
					<select id="year2"> 
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>
						<option value="2021">2021</option>
						<option selected>선택</option>
					</select>년
					<label class="month" for="month2"></label>
					<select id="month2"> 
						<option value="2016">1</option>
						<option value="2017">3</option>
						<option value="2018">5</option>
						<option value="2019">6</option>
						<option value="2020">7</option>
						<option value="2021">8</option>
						<option selected>선택</option>
					</select>월
					<select id="month2"> 
						<option value="2016">1</option>
						<option value="2017">3</option>
						<option value="2018">5</option>
						<option value="2019">6</option>
						<option value="2020">7</option>
						<option value="2021">8</option>
						<option selected>선택</option>
					</select>일
					<input type="radio" name="gender" value="man"> 남
					<input type="radio" name="gender" value="woman"> 여
				</td>
			</tr>
			<tr>
				<td> *우편번호 </td>
				<td>
					<label for="mail"></label>
					<input type="text" id="mail" style="width:50px" required>-
					<input type="text" id="mail" style="width:50px" required>
					<input type="submit" value="우편번호검색">
				</td>
			</tr>
			<tr>
				<td> *집주소 </td>
				<td>
					<label for="addr"></label>
					<input type="text" id="addr" required>
				</td>
			</tr>
			<tr>
				<td> *상세주소 </td>
				<td>
					<label for="addr2"></label>
					<input type="text" id="addr2" required>
				</td>
			</tr>
			<tr>
				<td> *연락처 </td>
				<td>
					<select id="phone"> 
						<option selected>선택</option>
					</select>
					<label for="phone2"></label>
					<input type="text" id="phone2" style="width:100px" required>-
					<input type="text" id="phone2" style="width:100px" required>
				</td>
			</tr>
			<tr>
				<td> *이메일 </td>
				<td>
					<label for="email"></label>
					<input type="text" id="email" style="width:80px;" required>@
					<select style="width:80px;" id="phone"> 
						<option selected>선택</option>
					</select>					
					<input type="submit" value="중복확인">
				</td>
			</tr>
			<tr>
				<td> *회사전화 </td>
				<td>
					<select id="com-phone">
						<option selected>선택</option>
					</select>-
					<label for="com-phone2"></label>
					<input type="text" id="com-phone2" style="width:100px" required>-
					<input type="text" id="com-phone2" style="width:100px" required>
				</td>
			</tr>
			<tr>
				<td> *회사주소 </td>
				
			</tr>
			<tr>
				<td> *휴대폰 </td>
				
			</tr>
			<tr>
				<td> *뉴스메일 </td>
				
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td> SMS안내(이벤트) </td>
				
			</tr>
		</tfoot>
	</table>
	
	
</body>
</html>
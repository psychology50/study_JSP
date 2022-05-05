<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* {
		margin: 0;
		padding: 0;
	}
	#birth-gender {
		
	}
	li {
		list-style-type: none;
		width: 130px;
		float: left;
	}
</style>
</head>
<body>
	<form method="post" action="registerPro.jsp">
		<table border="1">
			<tr>
				<td>*이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>*아이디</td>
				<td>
					<input type="text" name="id">
					<input type="button" value="중복확인">
				</td>
				
			</tr>
			<tr>
				<td>*비밀번호</td>
				<td>
					<input type="password" name="pw">
					*영문대소문자/숫자/특수문자를 혼용하여 2종류 10~16자 또는 3종류 8~16자
				</td>
			</tr>
			<tr>
				<td>*비밀번호 확인</td>
				<td><input type="password" name="pw2"></td>
			</tr>
			<tr id="birth-gender">
				<td>*생일/성별</td>
				<td>
					<select name="year">
						<option value="1991" selected>1991</option>
						<option value="1992">1992</option>
						<option value="1993">1993</option>
						<option value="1994">1994</option>
						<option value="1995">1995</option>
						<option value="1996">1996</option>
						<option value="1997">1997</option>
						<option value="1998">1998</option>
						<option value="1999">1999</option>
					</select>년
					<select name="month">
						<option value="1" selected>1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">10</option>
						<option value="12">12</option>
					</select>월
					<select name="day">
						<option value="1" selected>1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select>일
					<ul>
						<li>
							<input type="radio" name="gender" value="남자" checked> 남자		
						</li>
						<li>
							<input type="radio" name="gender" value="여자"> 여자
						</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td>*우편번호</td>
				<td>
					<input type="text" name="addr1">-
					<input type="text" name="addr2">
					<input type="sbutton" value="우편번호검색">
				</td>
			</tr>
			<tr>
				<td>*집주소</td>
				<td><input type="text" name="addr_home1"></td>
			</tr>	
			<tr>
				<td>*상세주소</td>
				<td><input type="text" name="addr_home2"></td>
			</tr>
			<tr>
				<td>*연락처</td>
				<td>
					<select name="phone1">
						<option disabled selected>선택</option>
						<option value="010">010</option>
						<option value="011">011</option>
					</select>
					<input type="text" name="phone2">-
					<input type="text" name="phone3">
				</td>
			</tr>
			<tr>
				<td>*이메일</td>
				<td>
					<input type="text" name="eMail1">@
					<select name="eMail2">
						<option value="@gmail.com" selected>@gmail.com</option>
						<option value="@naver.com">@naver.com</option>
					</select>
					<input type="button" value="중복확인">
				</td>
			</tr>
			<tr>
				<td>*회사전화</td>
				<td>
					<select name="office_phone1">
						<option value="053" selected>053</option>
						<option value="02">02</option>
					</select>-
					<input type="text" name="office_phone2">-
					<input type="text" name="office_phone3">
				</td>
			</tr>
			<tr>
				<td>*회사주소</td>
				<td>
					<input type="text" name="office_addr1">-
					<input type="text" name="office_addr2">
					<input type="button" value="우편번호검색"><br>
					<input type="text" name="office_addr2">
				</td>
			</tr>
			<tr>
				<td>*휴대폰</td>
				<td>
					<select name="userPhone1">
						<option disabled selected>선택</option>
						<option value="010">010</option>
						<option value="011">011</option>
					</select>-
					<input type="text" name="userPhone2">-
					<input type="text" name="userPhone3">
				</td>
			</tr>
			<tr>	
				<td>*뉴스메일</td>
				<td>
					<ul>
						<li><input type="radio" name="news" value="news_ok">받습니다</li>
						<li><input type="radio" name="news" value="news_no">받지 않습니다</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td>*SNS안내(이벤트)</td>
				<td>
					<ul>
						<li><input type="radio" name="sns" value="sns_ok">받습니다</li>
						<li><input type="radio" name="sns" value="sos_no">받지 않습니다</li>
					</ul>
				</td>
			</tr>
		</table>
		<input type="submit" value="회원가입">
		<input type="reset" value="다시쓰기">
	</form>
</body>
</html>
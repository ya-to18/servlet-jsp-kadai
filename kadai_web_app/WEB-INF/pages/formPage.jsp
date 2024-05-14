<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Objects" %>

<html>
	<head>
		<title>Servlet/JSPの基礎を学ぼう</title>
	</head>
	<body>
		<%
		String userName = (String) request.getAttribute("userName");
		String userEmail = (String) request.getAttribute("userEmail");
		
		userName = Objects.toString(userName, "");
		userEmail = Objects.toString(userEmail, "");
		%>
		<h2>お問い合わせ</h2>
		<form action="<%= request.getContextPath() %>/confirm" method="post">
			<table>
				<tr>
					<td>氏名</td>
					<td>
						<input type="text" name="user_name" value=<%= userName %>>
					</td>
				</tr>
				<tr>
					<td>メールアドレス</td>
					<td>
						<input type="text" name="user_email" value=<%= userEmail %>>
					</td>
				</tr>
				<tr>
					<td>住所</td>
					<td>
						<input type="text" name="user_address">
					</td>
				</tr>
				<tr>
					<td>電話番号</td>
					<td>
						<input type="text" name="user_tel">
					</td>
			</table>
				<input type="submit" value="送信">
		</form>
	</body>
</html>
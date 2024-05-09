<%@ page contentType="text/html; charset=UTF-8" %>

<html>
	<head>
		<title>Servletからのメッセージを表示しよう</title>
	</head>
	<body>
		<a href="<%= request.getContextPath() %>/servlet?name=侍太郎">名前「侍太郎」をServletに送信</a>
		
		<% String name = (String)request.getAttribute("name"); %>
		
		<%
		if(name != null){
		%>
			<h3>Servletからデータを受信しました：<%= name %>さん、こんにちは！</h3>
		<%
		}
		%>

	</body>
</html>
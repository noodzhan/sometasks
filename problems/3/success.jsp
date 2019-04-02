<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<title>登入成功</title>
<meta charset="utf-8" />

</head>

<body>
	<h2 align="center">欢迎
	<%= (String)session.getAttribute("sname") %> <br/>
	<h3>用户在线人数：
		<%= application.getAttribute("acount") %>
	</h3>
	</h2>
	
	<form method="post" action="logout.jsp">
		<input type="submit" value="下线" />
	</form>
	

</body>
</html>
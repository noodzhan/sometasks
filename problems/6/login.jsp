<%@ page contentType="text/html;charset=utf-8" import="java.util.*"%>
<%@ page import="java.sql.*"%>

<html>
<head><title>登入处理</title></head>

<body>
	
<%

	String name=request.getParameter("UserName");
	String pwd=request.getParameter("pwd");
	
	
	
	
	
	//连接数据库
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/web6";
	String user="root";
	String sqlpwd="zhan";
	Connection conn=DriverManager.getConnection(url,user,sqlpwd);
	Statement stmt=conn.createStatement();
	
	String sql="select * from user_table where ";
	sql+="name=";
	sql+="'"+name+"' and ";
	sql+="pwd=";
	sql+="'"+pwd+"'";
	
	
	//查询结果放在Map
	ResultSet re=stmt.executeQuery(sql);
	
	
	
	
	if(re.next()){
	
		
		
		int count=0;
		if(application.getAttribute("acount")==null){
			count=0;
		}else{
			count=((Integer)application.getAttribute("acount")).intValue();
		}
		count++;
		
		
		
		//保存回话 用户名
		session.setAttribute("sname",name);
		session.setAttribute("spwd",pwd);
		application.setAttribute("acount",count);
		
		
		//跳转到success.jsp界面
		response.sendRedirect("success.jsp?name="+name);
		
	}else{
		//跳转到fail的界面，并刷新到原登入界面
		out.print("<h3>用户名或密码输入错误，3s后返回");
		out.print("<a href=\"login.html\">登入页面</a></h3>");
		response.setHeader("Refresh","3;url=login.html");
	}
	
	


%>

</body





</html>

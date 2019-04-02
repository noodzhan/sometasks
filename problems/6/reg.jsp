<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>

<%
	//获取表单信息
	
	String name=request.getParameter("name");
	String passwd=request.getParameter("pwd");
	//解决乱码
	String describle=new String(request.getParameter("self").getBytes("ISO-8859-1"),"utf-8");
	String sex=request.getParameter("sex");
	
	//out.print("name:"+name+"</br>");
	//out.print("passwd:"+passwd+"</br>");
	//out.print("describle:"+describle+"</br>");
	//out.print("sex:"+sex+"</br>");

	
	//连接数据库
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/web6";
	String user="root";
	String pwd="zhan";
	Connection conn=DriverManager.getConnection(url,user,pwd);
	//out.print("连接成功"+"</br>");
	PreparedStatement stmt=conn.prepareStatement("insert into user_table(name,pwd,sex,describle)"
					+"values(?,?,?,?)");
	stmt.setString(1,name);
	stmt.setString(2,passwd);
	stmt.setString(3,sex);
	stmt.setString(4,describle);
	//默认数据库含有user_table表
	/*String sql ="insert into user_table (name,passwd,sex,describle) values( ";
	sql+="\""+name+"\",";
	sql+="\""+pwd+"\",";
	sql+="\""+sex+"\",";
	sql+="\""+describle+")";
	
	//out.print(sql+"</br>");
	*/
	stmt.executeUpdate();
	
	//跳转原登入界面
	out.print("<h3>用户注册成功，3s后返回登入界面");
	out.print("<a href=\"login.html\">登入页面</a></h3>");
	response.setHeader("Refresh","3;url=login.html");
	
	
	
	
	
	
%>
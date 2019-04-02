<%@ page contentType="text/html;charset=utf-8" import="java.util.*" %>

<html>
<head><title>登入处理</title></head>

<body>
	
<%

	String name=request.getParameter("UserName");
	String pwd=request.getParameter("pwd");
	
	
	//用户密码数据
	Map<String,String> data=new HashMap<String,String>();
	
	data.put("zhan","123456");
	data.put("liu","1");
	data.put("zhangsan","12");
	data.put("wanger","123");
	
	data.put("mazi","123456");
	data.put("web","12346");
	
	data.put("sun","123456");
	data.put("ze","123456");
	
	
	
	
	if(data.containsKey(name)&&data.get(name).equals(pwd)){
	
		
		
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

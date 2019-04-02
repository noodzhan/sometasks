<%@ page contentType="text/html;charset=utf-8" import = "com.beans.GetArea" %>
<html>
<head><title>求圆的面积</title></head>

<body>

	
	<%
		//获得radius
		Double radius=Double.parseDouble(request.getParameter("text1"));
		
		GetArea a=new GetArea(radius);
		
		out.print("圆的面积："+a.calculate());
		
		
	%>
	
	

</body>




</html>
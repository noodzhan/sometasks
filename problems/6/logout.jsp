<%@ page contentType="text/html;charset=utf-8"%>

<%

	out.print("进入logout.jsp"+"</br>");

	//application count--;
	int count = ((Integer)application.getAttribute("acount")).intValue();
	
	if(count>0){
		application.setAttribute("acount",count-1);
	
		//失效session
		session.invalidate();
		
		out.print("注销成功");
	}
	

%>

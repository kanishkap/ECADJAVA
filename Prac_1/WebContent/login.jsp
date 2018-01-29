<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
		
session=request.getSession(true);

		int t=(Integer)application.getAttribute("totalusers");
		PrintWriter pw =response.getWriter();
		List<Integer> ar= new ArrayList<Integer>();
		
		//pw.println(t);
		System.out.println(t);
		if(t<9)
		{
		
			for(int i=0;i<7;i++)
			{%>
			<img src="Images/0.jpg" width="100">
			<%} %>
			
			<img src="Images/<%=t%>.jpg" width="100">
		<%} 
		else
		{
			for(int i=0;i<6;i++)
			{%>
				<img src="Images/0.jpg" width="100">
			<%}
		while(t>=1)
		{
		int temp_var=t%10; 
		System.out.println("Here "+temp_var);
		ar.add(temp_var);
		t=t/10;
		}
		Collections.reverse(ar);
		}
		for(Integer i: ar)
		{%>
		<img src="Images/<%=i%>.jpg" width="100">
			
		<%} %>
		
		
		

</body>
</html>
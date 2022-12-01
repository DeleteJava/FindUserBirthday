<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="findBirth.*"%>

	<jsp:useBean id="user" class="findBirth.User"/>
	<jsp:setProperty property="*" name="user"/>
<%

	FindBirthHandler handler = (FindBirthHandler)session.getAttribute("handler");
	if(handler == null) {
		handler = new FindBirthHandler();
		handler.setDummy();
		session.setAttribute("handler", handler);
	}
	
	String name = user.getUserName();
	int date = handler.getUntilDate(user);

	request.setAttribute("name", name);
	request.setAttribute("date", date);
	
	
	request.getRequestDispatcher("result.jsp").forward(request, response);


%>
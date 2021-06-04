<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../header.html" %>

<%
	String name = request.getParameter("name");
	String company = request.getParameter("company");
	String mail = request.getParameter("mail");
	String inquiry = request.getParameter("inquiry");
	String newsLetter = request.getParameter("newsLetter");

	out.println("<p>以下の内容でよろしいですか？</p>");
	out.println("<p>" + name + "</p>");
	out.println("<p>" + company + "</p>");
	out.println("<p>" + mail + "</p>");
	out.println("<p>" + inquiry + "</p>");
	String[] newsLetters = request.getParameterValues("newsLetter");
	for(String nLetter : newsLetters){
		out.println("<p>" + nLetter + "</p>");
	}
	out.println("資料請求を希望しない");
		
%>
	
<%@include file="../footer.html" %>
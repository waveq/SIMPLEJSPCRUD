<%@page import="com.waveq.SimpleCRUD.domain.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="storage" class="com.waveq.SimpleCRUD.entity.Storage" scope="application" />
	<%
	
	
	out.println("Ilość osób wynosi: "+storage.getAllPersons().size());
	out.println(" <hr/> ");
  	for (Person p : storage.getAllPersons()) {
  	%>
  		<table>
  		<tr><td>ID:</td><td> <%= p.getId() %></td></tr>
		<tr><td>Imie:</td><td> <%= p.getName() %> </td></tr>
		<tr><td>Nazwisko:</td><td> <%= p.getLastName() %> </td></tr>
		<tr><td>Plec:</td><td> <%= p.getSex() %> </td></tr>
		<tr><td>Data urodzenia:</td><td> <%= p.getYob() %> </td></tr>
		</table>
		<hr/>
	<%
  	}
	%>
	<p><a href="add.jsp">Dodaj kolejną osobę</a></p>
	<p><a href="index.html">Wróć do menu głownego</a></p>
		
</body>
</html>
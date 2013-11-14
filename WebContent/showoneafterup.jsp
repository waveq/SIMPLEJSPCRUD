<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="person" class="com.waveq.SimpleCRUD.domain.Person" scope="session"/>
	<jsp:setProperty name="person" property="*"/> 
	<jsp:useBean id="storage" class="com.waveq.SimpleCRUD.entity.Storage" scope="application"/>
	
	<% storage.updatePerson(person); %>

	<table>
  		<tr><td>ID:</td><td>${person.id}</td></tr>
		<tr><td>Imie:</td><td>${person.name}</td></tr>
		<tr><td>Nazwisko:</td><td>${person.lastName}</td></tr>
		<tr><td>Plec:</td><td>${person.sex}</tr>
		<tr><td>Data urodzenia:</td><td>${person.yob} </td></tr>
	</table>
	
	<a href=index.html>Powrót</a>

</body>
</html>
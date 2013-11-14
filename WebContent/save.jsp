<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="com.waveq.SimpleCRUD.domain.Person" scope="session"/>
	<jsp:setProperty name="person" property="*"/> 
	<jsp:useBean id="storage" class="com.waveq.SimpleCRUD.entity.Storage" scope="application"/>
		
	<%storage.add(person); %>

	<table>
		<tr><td>Dodano osobe:</td>
		<tr><td>Imie:</td><td>${person.name}</td></tr>
		<tr><td>Nazwisko:</td><td>${person.lastName}</td></tr>
		<tr><td>Plec:</td><td>${person.sex}</td></tr>
		<tr><td>Data urodzenia:</td><td>${person.yob}</td></tr>
	</table>
	<a href=index.html>Powrót do strony głównej</a>

</body>
</html>
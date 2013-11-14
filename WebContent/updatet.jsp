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
	

	<% storage.loadPerson(person); %>
	
	
	<form method=post action="showoneafterup.jsp">
		<table>
			<tr><td>Imie:</td><td><input type=text name=name size=40 value="${storage.person.name}"></td></tr>
			<tr><td>Nazwisko:</td><td> <input type=text name=lastName size=40 value="${storage.person.lastName}"></td></tr>
			<tr><td>Plec:</td>
				<td>
					<input type="radio" name="sex" value="Facet" <%if(storage.getPerson().getSex().equals("Facet")) {%> checked <%} %>>Facet 
					<input type="radio" name="sex" value="Babeczka" <%if(storage.getPerson().getSex().equals("Babeczka")) {%> checked <%} %>>Babeczka 
				</td>
			</tr>
			<tr><td>Rok urodzenia:</td>
			<td><select name=yob>
			<%for(int i=1900;i<=2013;i++) {%>
			<option <% if(storage.getPerson().getYob() == i) { %> selected="selected" <% } %> value=<%=i %> ><%=i %></option>
			<%} %>
			</select>
			</td></tr>
			<tr><td></td><td><input type=submit value="Przeslij"> </td>
		</table>
		
		
		
	</form>


</body>
</html>
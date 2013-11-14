<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method=post action="save.jsp">
		<table>
			<tr><td>Imie:</td><td><input type=text name=name size=40></td></tr>
			<tr><td>Nazwisko:</td><td> <input type=text name=lastName size=40></td></tr>
			<tr><td>Plec:</td>
				<td>
					<input type="radio" name="sex" value="Facet">Facet 
					<input type="radio" name="sex" value="Babaeczka">Babeczka 
				</td>
			</tr>
			<tr><td>Rok urodzenia:</td>
			<td><select name=yob>
			<%for(int i=1900;i<=2013;i++) {%>
			<option value=<%=i %> ><%=i %></option>
			<%} %>
			</select>
			</td></tr>
			<tr><td></td><td><input type=submit value="Przeslij"> </td>
		</table>
		
	</form>



</body>
</html>
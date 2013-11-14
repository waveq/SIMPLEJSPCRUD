<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="storage" class="com.waveq.SimpleCRUD.entity.Storage" scope="application"/>
	<%storage.deleteAll(); %>
	
	<h3>Wyczyszczono bazę</h3>
	<a href=index.html>Powrót do strony głównej</a>

</body>
</html>
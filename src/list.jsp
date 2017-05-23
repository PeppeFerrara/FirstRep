<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestione Contatti</title>
</head>
<body>
	<div id="div">
		<table id="table" style="width:80%;  border: 1px solid black; padding: 15px;">
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>Cognome</th>
				<th>Telefono</th>
				<th>Email</th>
				<th>Aggiorna</th>
				<th>Cancella</th>
			</tr>
			<c:forEach items="${listContacts}" var="item">
			
				<tr style="text-align: center;">
					<td> ${item.id}</td>
					<td> ${item.nome}</td>
					<td> ${item.cognome}</td>
					<td> ${item.telefono}</td>
					<td> ${item.email}</td>
					
					<form action="update" method="post">
						<td><input type="submit" name="aggiorna" value="Aggiorna"></td>
					</form>
					<td><input type="submit" name="cancella" value="Cancella"></td>
				</tr>
			</c:forEach>
		</table>
		<form action="save" method="get">
			<input type="submit" value="+" name="aggiungi" style="float:right;">
		</form>
	</div>
</body>
</html>
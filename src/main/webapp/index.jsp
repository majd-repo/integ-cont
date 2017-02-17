<%@page import="com.esprit.calcul.CalculMetier"%>
<%
	int a = 0;
	int b = 0;
	int res = 0;
	String action = request.getParameter("action");
	if (action != null) {
		a = Integer.parseInt(request.getParameter("a"));
		b = Integer.parseInt(request.getParameter("b"));
		CalculMetier calculMetier = new CalculMetier();
		if (action.equals("Somme")) {
			res = calculMetier.somme(a, b);
		} else {
			res = calculMetier.produit(a, b);
		}
	}
%>
<html>
<head></head>
<body>
	<form action="index.jsp" method="post">
		<table>
			<tr>
				<td>A:</td>
				<td><input type="text" name="a" value="<%=a%>" /></td>
				<td>B:</td>
				<td><input type="text" name="b" value="<%=b%>" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="action" value="Somme" /></td>
				<td><input type="submit" name="action" value="Produit" /></td>
			</tr>
			<tr>
				<td>Resultat :</td>
				<td><%=res%></td>
			</tr>
		</table>
	</form>
</body>
</html>
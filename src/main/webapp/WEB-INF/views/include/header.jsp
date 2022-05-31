<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/menu.css">
<title>header</title>
</head>
<body>
	<table width="100%" cellspacing="0" border="0" cellpadding="0">
		<tr height="50" bgcolor="#000000">
			<td width="65%" class="menu01">&nbsp;</td>
			<td width="5%" class="menu01"><a href="/">HOME</a></td>
			<td width="5%" class="menu01">
				<%
					String sessionValid = (String) session.getAttribute("id");
					if(sessionValid == null) {
				%>				
					<a href="login">LOGIN</a>
				<%
					} else {
				%>
					<a href="logout">LOGOUT</a>
				<%
					}
				%>
				
			</td>
			<td width="5%" class="menu01">
				<%					
					if(sessionValid == null) {
				%>				
					<a href="join">JOIN</a>
				<%
					} else {
				%>
					<a href="infoModify">MODIFY</a>
				<%
					}
				%>	
				
			</td>
			<td width="6%" class="menu01"><a href="profile">PROFILE</a></td>
			<td width="7%" class="menu01"><a href="question">QUESTION</a></td>
			<td width="6%" class="menu01"><a href="contact">CONTACT</a></td>
		</tr>
		<tr height="40">
			<td>&nbsp;</td>
		</tr>
	</table>
</body>
</html>
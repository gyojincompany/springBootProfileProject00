<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<title>## Leegyojin Profile Web</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td align="center"><span class="title01">DEVELOPER GYOJIN'S PROFILE</span></td>
		</tr>
		<tr>
			<td align="center"><span class="title02">I'm Gyojin Lee, a developer who wants a development job. Please call me back.</span></td>
		</tr>
		<tr>
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
				<tr>
					<td bgcolor="#d5d5d5" align="center">
						<br><br>						
						<table border="0" cellspacing="0" cellpadding="10">
							<tr>
								<td class="board01">NO</td>
								<td class="board01">ID</td>
								<td class="board01" width="500">QUESTION</td>
								<td class="board01">NAME</td>
								<td class="board01">DATE</td>
							</tr>
							<c:forEach items="${qlist }" var="qdto">
							<tr>
								<td class="board02">${qdto.qnum }</td>
								<td class="board02">${qdto.qid }</td>
								<td class="board03">
								<a href="">
									<c:choose>
										<c:when test="${fn:length(qdto.qcontent) > 26}">
											<c:out value="${fn:substring(qdto.qcontent,0,25) }" /> ......
										</c:when> 
										<c:otherwise>
											<c:out value="${qdto.qcontent}" />
										</c:otherwise>
									</c:choose>
								</a>
								</td>
								<td class="board02">${qdto.qname }</td>
								<td class="board02">
									<c:out value="${fn:substring(qdto.qdate,0,16) }" /> 
								</td>
							</tr>
							</c:forEach>
							<tr>
								<td colspan="5" align="right">
									<input type="button" class="button01" value="질문하기" onclick="location.href='question'">
								</td>
							</tr>
						</table>	
						<br>			
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
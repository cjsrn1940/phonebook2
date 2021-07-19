<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 
<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.vo.PersonVo" %>
--%>

<%
	//request 안에 데이터사용
	//List<PersonVo> personList = (List<PersonVo>)request.getAttribute("pList");

	/*
	System.out.println("jsp==========================");
	System.out.println(personList);
	*/
	
	/*
	int age = (int)request.getAttribute("age");
	String name = (String)request.getAttribute("name");
	
	System.out.println(age + ", " + name);
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 리스트</h1>
	<p>입력한 정보 내역입니다.</p>
	
	<c:forEach items="${pList}" var="personVo">
		<table border="1">
			<tr>
				<td>이름</td>
				<td>${personVo.name}</td>
			</tr>
			<tr>
				<td>핸드폰</td>
				<td>${personVo.hp}</td>
			</tr>
			<tr>
				<td>회사</td>
				<td>${personVo.company}</td>
			</tr>
			<tr>
				<td><a href="/phonebook2/pbc?action=uform&id=${personVo.personId}">[수정폼]</a></td>
				<td><a href="/phonebook2/pbc?action=delete&id=${personVo.personId}">[삭제]</a> </td>
			</tr>
		</table> 
		<br>
	</c:forEach>
	
	<a href="/phonebook2/pbc?action=wform">추가번호 등록</a>

</body>
</html>
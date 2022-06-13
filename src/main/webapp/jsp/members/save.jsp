<%--
  Created by IntelliJ IDEA.
  User: dkqtk
  Date: 2022-06-13
  Time: 오후 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="hello.sevlet.domain.member.Member" %>
<%@ page import="hello.sevlet.domain.member.MemberRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //request, response 는 그냥 사용 가능함
    MemberRepository memberRepository = MemberRepository.getInstance();

    System.out.println("MemberSaveServlet.service");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    memberRepository.save(member);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
성공
<ul>
    <li>id = <%=member.getId()%></li>
    <li>id = <%=member.getUsername()%></li>
    <li>id = <%=member.getAge()%></li>
</ul>
<a href="/index.html">메인</a>
</body>
</html>

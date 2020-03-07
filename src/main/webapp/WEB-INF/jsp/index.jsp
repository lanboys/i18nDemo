<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%--<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>SpringMVC<fmt:message key="internationalisation"/></title>
</head>
<body>
Language:
<a href="?lang=zh_CN"><fmt:message key="language.cn"/></a> &nbsp;&nbsp;&nbsp;
<a href="?lang=en_US"><fmt:message key="language.en"/></a>
<h1>
    <fmt:message key="welcome"/>
</h1>
当前语言: ${pageContext.response.locale }
</body>
</html>
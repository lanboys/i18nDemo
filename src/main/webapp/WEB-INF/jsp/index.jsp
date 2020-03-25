<%@ page import="org.springframework.web.context.support.XmlWebApplicationContext" %>
<%@ page import="java.util.Locale" %>
<%@ page
        import="static org.springframework.web.servlet.DispatcherServlet.WEB_APPLICATION_CONTEXT_ATTRIBUTE" %>
<%@ page import="org.springframework.context.support.ReloadableResourceBundleMessageSource" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    Locale locale = pageContext.getResponse().getLocale();
    String bootstrapTable = Locale.US.equals(locale) ? "bootstrap-table-en-US.min.js" : "bootstrap-table-zh-CN.min.js";

    // 通过代码获取
    XmlWebApplicationContext attribute = (XmlWebApplicationContext) request.getAttribute(WEB_APPLICATION_CONTEXT_ATTRIBUTE);
    ReloadableResourceBundleMessageSource messageSource = (ReloadableResourceBundleMessageSource) attribute.getBean("messageSource");
    String introduce = messageSource.getMessage("introduce", null, locale);
    System.out.println("jsp_service_method(): " + introduce);
%>
<c:set var="bootstrapTableJs" value="<%=bootstrapTable%>"/>
<%--<c:set var="bootstrapTableJs" value="<%=bootstrapTable%>" scope="session" />--%>

<html>
<head>
    <title>SpringMVC<spring:message code="internationalisation"/></title>
</head>
<body>
Language:
<a href="?lang=zh_CN"><spring:message code="language.cn"/></a> &nbsp;&nbsp;&nbsp;
<a href="?lang=en_US"><spring:message code="language.en"/></a>
<h1>
    <spring:message code="welcome"/>
</h1>
当前语言: ${pageContext.response.locale }
</br>
bootstrapTableJs: ${bootstrapTableJs}
</br>
bootstrapTable: <%=bootstrapTable%>
</body>
</html>
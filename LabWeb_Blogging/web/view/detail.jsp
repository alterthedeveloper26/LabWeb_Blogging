<%-- 
    Document   : detail
    Created on : Sep 17, 2020, 10:13:15 PM
    Author     : ViruSs0209
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${ctx}/public/css/index.css" rel="stylesheet" type="text/css"/>
        <link href="${ctx}/public/css/home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="wrap-all">
            <%@include file="/view/shared/header.jsp" %>
            <main>
                <div class="page-content">
                    <div class="blog-display">
                        <div class="section">
                            <div class="wrapper">
                                <div class="icon">
                                    <img src="${ctx}/public/image/${blog.getType()}.png" />
                                </div>
                                <div class="item">
                                    <div class="header">
                                        <a href="#" class="title">${blog.getTitle()}</a>
                                        <div class="published">${blog.getPublished()}</div>
                                    </div>
                                    <div class="detail ${blog.getType().toLowerCase()}">
                                        <div class="image">
                                            <c:if test="${blog.getBanner() != null}">
                                                <img src="${ctx}/public/image/${blog.getBanner()}" />
                                            </c:if>
                                        </div>
                                        <div class="content">
                                            <c:if test="${blog.getType() != 'Quote'}">
                                                <p>${blog.getContent()}</p>
                                            </c:if>

                                            <c:if test="${blog.getType() == 'Quote'}">
                                                <blockquote>"${blog.getContent()}"</blockquote>
                                                <div class="author">
                                                    ${blog.getAuthor()} -
                                                </div>
                                            </c:if>
                                        </div>
                                        <div id="clear" style="clear: both;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="overview">
                            <a href="${ctx}/overview">Overview</a>
                        </div>           
                    </div>            
                    <%@include file="/view/shared/aside.jsp" %>
                </div>
                <hr/>
                <footer>
                    <p>We put the number surf here</p>
                    Views on detail: 
                    <c:forEach var="digit" items="${views}">
                        <p style="display: inline; border: 1px solid black; border-radius: 10px; padding: 5px; margin: 0.5px!important;
                           float: right;">${digit}</p>
                    </c:forEach>
                </footer>
            </main>          
        </div>
    </body>
</html>

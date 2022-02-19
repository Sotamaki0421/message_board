<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>メッセージ一覧</h2>
        <div class="gallery js-flickity" data-flickity-options='{ "wrapAround": true }'>
            <c:forEach var="letter" items="${letters}">
                <div class="gallery-cell">
                    <div class="note_wrap">
                        <div class="note">
                            <p><c:out value="${letter.content}" /></p>
                            <p align="right">
                                <c:out value="${letter.user}" />
                            </p>
                        </div>
                    </div>
                    <a href="${pageContext.request.contextPath}/show?id=${letter.id}">
                        <c:out value="${letter.id}" />
                    </a>
                    :<c:out value="${letter.user}"></c:out> &gt; <c:out value="${letter.content}" />
                </div>
            </c:forEach>
        </div>
        <%-- <p><a href="<c:url value="/new" />">新規メッセージの投稿</a></p> --%>
    </c:param>
</c:import>
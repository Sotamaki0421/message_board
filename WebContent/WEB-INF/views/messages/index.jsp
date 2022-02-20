<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <%-- <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if> --%>
        <div class="gallery js-flickity" data-flickity-options='{ "wrapAround": true }'>
            <div class="gallery-cell"><img src="<c:url value="img/Yose.png"/>" style="width: 100%;"></div>
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
                </div>
            </c:forEach>
        </div>
    </c:param>
</c:import>
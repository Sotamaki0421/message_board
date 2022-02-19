<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            <c:out value="${error}" /><br />
        </c:forEach>
    </div>
</c:if>

<label for="user">ユーザ</label><br />
<input type="text" name="user" value="${letter.user}" />
<br /><br />

<label for="content">メッセージ</label><br />
<%-- <input type="text" name="content" value="${letter.content}"> --%>
<textarea cols="40" rows="20" name="content"><c:out value="${letter.content}" /></textarea>
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>
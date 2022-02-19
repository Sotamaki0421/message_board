<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${letter != null}">
                <h2>id : ${letter.id} のメッセージ詳細ページ</h2>
                <%-- <table>
                    <tbody>
                        <tr>
                            <th>ユーザ</th>
                            <td><c:out value="${letter.user}" /></td>
                        </tr>
                        <tr>
                            <th>メッセージ</th>
                            <td><c:out value="${letter.content}" /></td>
                        </tr>
                    </tbody>
                </table> --%>
                <div class="note_wrap">
                    <div class="note">
                        <p><c:out value="${letter.content}" /></p>
                        <p align="right">
                            <c:out value="${letter.user}" />
                        </p>
                    </div>
                </div>
                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
                <p><a href="${pageContext.request.contextPath}/edit?id=${letter.id}">このメッセージを編集する</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>
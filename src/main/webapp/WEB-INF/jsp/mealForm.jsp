<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<jsp:include page="fragments/headTag.jsp"/>
<body>
<jsp:include page="fragments/bodyHeader.jsp"/>

<section>
    <h3><spring:message code="${meal.isNew() ? 'meal.add' : 'meal.edit'}"/></h3>
    <hr>
    <form method="post" action="meals">
        <input type="hidden" name="id" value="${meal.id}">
        <dl>
            <dt><spring:message><code>meal.dateTime</code></spring:message>:</dt>
            <dd><input type="datetime-local" value="${meal.dateTime}" name="dateTime" required></dd>
        </dl>
        <dl>
            <dt><spring:message><code>meal.description</code></spring:message>:</dt>
            <dd><input type="text" value="${meal.description}" size=40 name="description" required></dd>
        </dl>
        <dl>
            <dt><spring:message><code>meal.calories</code></spring:message>:</dt>
            <dd><input type="number" value="${meal.calories}" name="calories" required></dd>
        </dl>
        <button type="submit"><spring:message><code>common.save</code></spring:message></button>
        <button onclick="window.history.back()" type="button"><spring:message><code>common.cancel</code></spring:message></button>
    </form>
</section>
<jsp:include page="fragments/footer.jsp"/>
</body>
</html>

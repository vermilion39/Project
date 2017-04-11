<!DOCTYPE html>
<html>
    <head>
        <title>Customer Support</title>
    </head>
    <body>
        <c:url var="logoutUrl" value="/logout"/>
        <form action="${logoutUrl}" method="post">
            <input type="submit" value="Log out" />
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <br /><br />
        <a href="<c:url value="/ticket" />">Return to list tickets</a>
        <h2>Users</h2>
        <a href="<c:url value="/user/create" />">Create a User</a>
        <c:choose>
            <c:when test="${fn:length(ticketUsers) == 0}">
                <i>There are no users in the system.</i>
            </c:when>
            <c:otherwise>
                <h2> Start a new poll</h2>
                <a href="<c:url value="/poll/newPoll" />">New Poll</a><br /><br />
                <table>
                    <tr>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Roles</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${ticketUsers}" var="user">
                        <tr>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                            <td>
                                <c:forEach items="${user.roles}" var="role" varStatus="status">
                                    <c:if test="${!status.first}">, </c:if>
                                    ${role}
                                </c:forEach>
                            </td>
                            <td>[<a href="<c:url value="/user/delete/${user.username}" />">Delete</a>]</td>
                            <td>[<a href="<c:url value="/user/update/${user.username}" />">Update</a>]</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </body>
</html>
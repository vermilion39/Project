<!DOCTYPE html>
<html>
    <head>
        <title>Course Discussion Forum</title>
    </head>
    <body>
        <h2>Update a User</h2>
        <form:form method="POST" enctype="multipart/form-data"
                   modelAttribute="ticketUser">
            <%--<form:label path="username">Username</form:label><br/>
            <form:input type="text" path="username" required="" /><br/><br/>--%>
            <form:label path="password">Password</form:label><br/>
            <form:input type="text" path="password" required="" /><br/><br/>
            <form:label path="roles">Roles</form:label><br/>
            <form:checkbox path="roles" value="ROLE_USER" />ROLE_USER
            <form:checkbox path="roles" value="ROLE_ADMIN" />ROLE_ADMIN
            <br /><br />
            <input type="submit" value="Update User"/>
        </form:form>
    </body>
</html>

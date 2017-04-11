<!DOCTYPE html>
<html>
    <head>
        <title>Course Discussion Forum</title>
    </head>
    <body>
        <h2>Create a Poll</h2>
        <form:form method="POST" enctype="multipart/form-data"
                   modelAttribute="Poll">
            <form:label path="title">Title</form:label><br/>
            <form:textarea path="title" rows="5" cols="30" /><br/><br/>
            <form:label path="optionA">Option A</form:label><br/>
            <form:input type="text" path="optionA" /><br/>
            <form:label path="optionB">Option B</form:label><br/>
            <form:input type="text" path="optionB" /><br/>
            <form:label path="optionC">Option C</form:label><br/>
            <form:input type="text" path="optionC" /><br/>
            <form:label path="optionD">Option D</form:label><br/>
            <form:input type="text" path="optionD" /><br/><br/><br/>
            <input type="submit" value="Start a new poll"/>
        </form:form>
    </body>
</html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<body>
<h2>Hi,psina, enter you info, plz</h2>

<br>
<br>

<%--@elvariable id="employee" type=""--%>
<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <br>
    <br>

    Surname<form:input path="surname"/>
    <br>
    <br>

    Salary<form:input path="salary"/>
    <br>
    <br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
    <%--<form:option value="Information Technology" label="IT"/>--%>
    <%--<form:option value="Human Resources" label="HR"/>--%>
    <%--<form:option value="Sales" label="Sales"/>--%>
</form:select>
    <br><br>
    Which car do you want?
    <form:radiobuttons path="carBrand" items = "${employee.carBrands}"/>
<%--    BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    14 <form:radiobutton path="carBrand" value="2114"/>--%>
<%--    DAEWOO <form:radiobutton path="carBrand" value="DAEWOO"/>--%>
<br><br>
    Foreign language(s)

    <form:checkboxes path="languages" items="${employee.languagesList}"/>
<%--    EN <form:checkbox path="languages" value="English"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutch"/>--%>
<%--    FR <form:checkbox path="languages" value="French"/>--%>

    <br><br>
    <input type="submit" value="OK"/>
</form:form>

<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name ="employeeName"--%>
<%--           placeholder="Enter your name, youpta"/>--%>
<%--    <input type="submit"/>--%>
<%--</form>--%>
</body>
</html>
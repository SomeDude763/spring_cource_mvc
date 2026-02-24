<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html>
<body>
<h2>Welcome,youba</h2>

<br>
<br>
<br>
<br>

<%--Your new Atmospherical name : ${param.employeeName}--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary:${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car : ${employee.carBrand}
<br>
Phone number: ${employee.phoneNumber}
<br>
Email: ${employee.email}
<br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
    <li>
        ${lang}
    </li>
    </c:forEach>
</ul>
</body>
</html>
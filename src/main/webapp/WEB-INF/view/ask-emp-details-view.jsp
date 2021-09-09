<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: Roza
  Date: 08.09.2021
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<h2>Dear Employee, Please enter your details</h2>
<br><br>
<form:form action = "showDetails" modelAttribute="employee">
    Name <form:input path = "name"/>
    <form:errors path="name"/>       <%--  for validation--%>
    <br><br>
    Surname <form:input path = "surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path = "salary"/>
    <form:errors path="salary"/>
    <br><br>
  Department <form:select path ="department">
<%--    <form:option value="Information Technology" label ="IT"/>--%>
<%--    <form:option value="Human Resources" label ="HR"/>--%>
<%--    <form:option value="Sales" label = "Sales"/>--%>

    <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>
    Which car do you want?
<%--    BMW<form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    Audi<form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    Mercedes-Benz<form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>
   <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
   <br><br>
    Foreign language(s)
<%--    EN<form:checkbox path="languages" value="English"/>--%>
<%--    DE<form:checkbox path="languages" value="Deutch"/>--%>
<%--    FR<form:checkbox path="languages" value="French"/>--%>
<form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>


    <input type ="submit" value="OK">
</form:form>

</body>
</html>

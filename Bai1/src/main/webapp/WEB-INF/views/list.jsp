<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 30px;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #f9f9f9;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px 15px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #ffffff;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Top row: search and add */
        .top-bar {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 15px;
        }

        .top-bar input[type="text"] {
            padding: 5px 10px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .top-bar button, .top-bar a {
            padding: 6px 12px;
            margin-left: 5px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            color: white;
            background-color: #007bff;
        }

        .top-bar button {
            background-color: #6c757d;
        }

        .top-bar a:hover, .top-bar button:hover {
            opacity: 0.85;
        }

        .action-buttons form {
            display: inline;
        }

        .delete-link {
            background: none;
            border: none;
            color: #007bff;
            padding: 0;
            font: inherit;
            cursor: pointer;
            text-decoration: none;
        }

        .delete-link:hover {
            text-decoration: underline;
        }

    </style>

</head>
<body>
<h2>EMPLOYEE LIST</h2>
<div class="top-bar">
    <input type="text" placeholder="Search"/>
    <button>Search</button>
    <a href="/employees/add">Add Employee</a>
</div>
<table border="1">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Gender</th>
        <th>Date of birth</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${employees}" var="emp">
        <tr>
            <td>${emp.firstName}</td>
            <td>${emp.lastName}</td>
            <td>${emp.gender.toString()}</td>
            <td>${emp.dob}</td>
            <td>${emp.email}</td>
            <td>${emp.phone}</td>
            <td class="action-buttons">
                <a href="/employees/update/${emp.id}">Update</a> |
                <form:form method="post" action="/employees/delete/${emp.id}" >
                    <button type="submit" class="delete-link">Delete</button>
                </form:form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

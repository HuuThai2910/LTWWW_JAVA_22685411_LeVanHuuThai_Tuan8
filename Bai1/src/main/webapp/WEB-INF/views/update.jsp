<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            padding: 40px;
        }
        .form-container {
            width: 500px;
            border: 1px solid #ccc;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            font-size: 28px;
        }
        label {
            display: inline-block;
            width: 120px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 8px;
            margin: 6px 0 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .gender-container {
            margin-bottom: 16px;
        }
        .gender-container label {
            width: auto;
            margin-right: 10px;
        }
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }
        button {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            cursor: pointer;
        }
        .back-btn {
            background-color: #555;
            color: white;
        }
        .register-btn {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>REGISTRATION <br> EMPLOYEE</h1>
    <form:form action="" method="post" modelAttribute="employee">
        <label>First Name</label>
        <form:input type="text" path="firstName" placeholder="First Name" />

        <label>Last Name</label>
        <form:input type="text" path="lastName" placeholder="Last Name" />

        <label>Email</label>
        <form:input type="email" path="email" placeholder="Email" />

        <label>Date of Birth</label>
        <form:input type="date" path="dob"  />

        <label>Phone number</label>
        <form:input type="text" path="phone" placeholder="Phone number" />

        <div class="gender-container">
            <label>Gender</label>
            <form:radiobutton  path="gender" value="MALE" /> Male
            <form:radiobutton  path="gender" value="FEMALE" /> Female
        </div>

        <div class="button-container">
            <button type="button" class="back-btn" onclick="history.back()">Back</button>
            <button type="submit" class="register-btn">Register</button>
        </div>
    </form:form>
</div>
</body>
</html>

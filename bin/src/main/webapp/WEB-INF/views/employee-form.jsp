<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>

    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: #f2f4f7;
            padding: 50px;
        }

        .form-container {
            width: 420px;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.15);
            margin: auto;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            display: block;
            margin-bottom: 6px;
        }

        .input-box {
            width: 100%;
            padding: 11px;
            border-radius: 6px;
            border: 1px solid #ccc;
            margin-bottom: 18px;
            font-size: 14px;
        }

        .salary-wrapper {
            display: flex;
            align-items: center;
            
        }

        .rupee {
            background: #eee;
            padding: 8.4px 14px;
            border: 1px solid #ccc;
            border-right: none;
            border-radius: 6px 0 0 6px;
            font-weight: bold;
             margin-top: -18px;
        }

        .salary-input {
            flex: 1;
            border-radius: 0 6px 6px 0;
            border-left: none;
        }

        .btn-save {
            width: 100%;
            padding: 13px;
            background: #27ae60;
            color: white;
            font-size: 15px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-save:hover {
            background: #219150;
        }

        .note {
            font-size: 12px;
            color: #666;
            margin-top: 6px;
        }
    </style>
</head>

<body>

<div class="form-container">

    <h2>Employee Form</h2>

    <form action="<c:url value='/employee/save' />" method="post">

        <input type="hidden" name="id" value="${employee.id}" />

        <label>Name</label>
        <input type="text" name="name"
               class="input-box"
               value="${employee.name}"
               required />

        <label>Department</label>
        <input type="text" name="department"
               class="input-box"
               value="${employee.department}"
               required />

        <label>Salary</label>
        <div class="salary-wrapper">
            <div class="rupee">₹</div>
            <input type="text"
                   name="salary"
                   class="input-box salary-input"
                   value="${employee.salary}"
                   oninput="this.value=this.value.replace(/[^0-9]/g,'')"
                   required />
        </div>
        <div class="note">Only numbers allowed</div>

        <input type="submit" value="Save Employee" class="btn-save" />

    </form>

</div>

</body>
</html>

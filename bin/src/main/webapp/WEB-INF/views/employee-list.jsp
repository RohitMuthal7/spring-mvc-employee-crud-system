<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            padding: 30px;
        }

        h2 {
            margin-bottom: 20px;
        }

        table {
            width: 95%;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 6px 14px rgba(0,0,0,0.12);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 16px 22px;
            border-bottom: 1px solid #e0e0e0;
            vertical-align: middle;
        }

        th {
            background: #2f3640;
            color: white;
            font-size: 14px;
            letter-spacing: 0.5px;
            text-align: left;
        }

        tr:hover {
            background: #f5f6f7;
        }

        /* Column sizes */
        .col-name { width: 26%; }
        .col-dept { width: 20%; }
        .col-status { width: 14%; }
        .col-salary { 
            width: 18%;
            text-align: right;
            font-weight: bold;
            padding-right: 40px;
        }
        .col-actions { width: 22%; }

        /* Buttons */
        .btn {
            padding: 8px 18px;
            border: none;
            border-radius: 22px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn-add {
            background: #27ae60;
            color: white;
            margin-bottom: 18px;
        }

        .btn-edit {
            background: #3a3a3a;
            color: white;
        }

        .btn-delete {
            background: #b71c1c;
            color: white;
            margin-left: 10px;
        }

        /* Status badges */
        .status {
            padding: 6px 14px;
            border-radius: 14px;
            font-size: 12px;
            font-weight: bold;
            display: inline-block;
        }

        .active {
            background: #e8f5e9;
            color: #2e7d32;
        }

        .inactive {
            background: #fdecea;
            color: #c62828;
        }

        a { text-decoration: none; }
    </style>
</head>

<body>

<h2>Employee List</h2>

<a href="${pageContext.request.contextPath}/employee/add">
    <button class="btn btn-add">+ Add Employee</button>
</a>

<table>
    <tr>
        <th class="col-name">Name</th>
        <th class="col-dept">Department</th>
        <th class="col-status">Status</th>
        <th class="col-salary">Salary</th>
        <th class="col-actions">Actions</th>
    </tr>

    <c:forEach var="emp" items="${employees}">
        <tr>
            <td class="col-name">${emp.name}</td>
            <td class="col-dept">${emp.department}</td>

            <!-- Static UI Status -->
            <td class="col-status">
                <span class="status active">Active</span>
            </td>

            <td class="col-salary">
                &#8377; ${emp.salary}
            </td>

            <td class="col-actions">
                <a href="${pageContext.request.contextPath}/employee/edit?id=${emp.id}">
                    <button class="btn btn-edit">Edit</button>
                </a>

                <a href="${pageContext.request.contextPath}/employee/delete?id=${emp.id}">
                    <button class="btn btn-delete">Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>

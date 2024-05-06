<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">

    <title>Create Location</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            margin: 0;
            padding: 0;
        }

        form {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 400px;
            margin: 20px auto;
        }

        .flex {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        label {
            width: 100px;
            margin-right: 10px;
        }

        input[type="text"],
        input[type="radio"] {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            flex: 1;
        }

        input[type="submit"] {
            padding: 8px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .msg {
            margin-top: 10px;
            color: green;
        }

        a {
            display: block;
            text-align: center;
            text-decoration: none;
            color: #007bff;
            margin-top: 10px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<form method="post" action="updateLoc">
    <div class="flex">
        <label for="id">Id</label> <input type="text" name="id"
                                          value="${location.id}" readonly/>
    </div>

    <div class="flex">
        <label for="code">Code</label> <input type="text" name="code"
                                              value="${location.code}"/>
    </div>

    <div class="flex">
        <label for="name">Name</label> <input type="text" name="name"
                                              value="${location.name}"/>
    </div>

    <div class="flex">
        <label for="urban">Type</label>
        <input type="radio" id="urban" name="type" value="Urban" ${location.type == "Urban" ? "checked" : "" } />
        <label for="urban">Urban</label>
        <input type="radio" id="rural" name="type" value="Rural" ${location.type == "Rural" ? "checked" : "" } />
        <label for="rural">Rural</label>
    </div>

    <input type="submit" value="Save">
</form>
<div class="msg">${msg }</div>
<a href="displayLocations">View All</a>

</body>

</html>

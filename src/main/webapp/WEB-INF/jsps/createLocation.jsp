<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Create Location</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .form-group {
            margin-bottom: 10px;
        }

        label {
            margin-right: 10px;
        }

        input[type="text"],
        input[type="radio"] {
            padding: 5px;
            margin-left: 5px;
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

        a {
            display: block;
            margin-top: 10px;
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<form method="post" action="saveLoc">
    <div class="form-group">
        <label for="id">Id:</label>
        <input type="text" id="id" placeholder="Id" name="id" required/>
    </div>

    <div class="form-group">
        <label for="code">Code:</label>
        <input type="text" id="code" placeholder="City" name="code" required/>
    </div>

    <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" id="name" placeholder="Name" name="name" required/>
    </div>

    <div class="form-group">
        <label>Type:</label>
        <input type="radio" id="urban" name="type" value="Urban" required/>
        <label for="urban">Urban</label>
        <input type="radio" id="rural" name="type" value="Rural" required/>
        <label for="rural">Rural</label>
    </div>

    <input type="submit" value="save">
</form>
${msg }
<a href="displayLocations">View All</a>

</body>

</html>

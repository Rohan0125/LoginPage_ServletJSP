<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    
    h1{
    	margin-top: 50px;
    	text-align: center;
    }

    .form-container {
    	text-align: center;
        width: 300px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 19px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .form-tab {
        display: flex;
        flex-direction: column;
        margin-bottom: 15px;
    }

    .form-tab label {
        margin-bottom: 5px;
    }

    .form-tab input[type="text"],
    .form-tab input[type="password"] {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    .submit-btn {
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

    .submit-btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
	<h1>User Login</h1>
    <div class="form-container">
        <form id="loginForm" action="Login" method="Post">
            <div class="form-tab">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-tab">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>
	<p style="color:red; text-align:center;"><%= request.getAttribute("error")==null? "":request.getAttribute("error") %></p>
</body>

</html>

</html>
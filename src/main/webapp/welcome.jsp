<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome Page with Waving Colors Animation</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }

    header {
        background-color: #007bff;
        color: #fff;
        padding: 10px;
        text-align: center;
    }

    nav {
        background-color: #333;
        color: #fff;
        padding: 10px;
        text-align: center;
    }

    nav a {
        color: #fff;
        text-decoration: none;
        margin: 0 10px;
    }

    nav a:hover {
        text-decoration: underline;
    }

    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    .container h1 {
        color: #007bff;
        font-size: 3em;
        animation: wave 2s ease-in-out infinite;
    }

    @keyframes wave {
        0% {
            transform: translateX(0) rotate(0deg);
            color: #007bff;
        }
        25% {
            transform: translateX(5px) rotate(-5deg);
            color: #ff6347;
        }
        50% {
            transform: translateX(-5px) rotate(5deg);
            color: #ffc107;
        }
        75% {
            transform: translateX(5px) rotate(-5deg);
            color: #28a745;
        }
        100% {
            transform: translateX(0) rotate(0deg);
            color: #007bff;
        }
    }

    .container p {
        margin-bottom: 20px;
    }

    .btn {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 3px;
        text-decoration: none;
        cursor: pointer;
    }

    .btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		if(session.getAttribute("uname")==null){
			response.sendRedirect("login.jsp");
		}
	%>
    <header>
        <h1>Welcome to My Website</h1>
    </header>
    <nav>
        <a href="#about">About</a>
        <a href="#services">Services</a>
        <a href="#contact">Contact</a>
    </nav>
    <div class="container">
        <h1>${uname}</h1>
        <p>Thank you for visiting my website. Explore our services and get in touch with us.</p>
        <a href="videos.jsp" class="btn">Go to videos</a>
    </div>
</body>
</html>

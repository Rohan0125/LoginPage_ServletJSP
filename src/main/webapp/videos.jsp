<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>YouTube Video Collection</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #007bff;
        color: #fff;
        padding: 10px;
        text-align: center;
    }

    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
    }

    .video-container {
        margin-bottom: 20px;
    }

    .video-container iframe {
        width: 100%;
        height: 400px;
    }

    .video-title {
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 10px;
    }
    .logout-btn {
    
    position: fixed;
    bottom: 20px;
    right: 20px;
    background-color: red;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    z-index: 999; /* Ensures the button appears on top of other content */
}

.logout-btn:hover {
    background-color: #0056b3;
}
    
</style>
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("uname")==null){
			response.sendRedirect("login.jsp");
		}
	%>
    <header>
        <h1>YouTube Video Collection</h1>
    </header>
    <div class="container">
        <div class="video-container">
            <!-- Embed Code for Video 1 -->
            <div class="video-title">Video Title 1</div>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/OuBUUkQfBYM?si=Lu5icgFsImeLF4A_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        </div>
        <div class="video-container">
            <!-- Embed Code for Video 2 -->
            <div class="video-title">Video Title 2</div>
            <iframe src="EMBED_CODE_HERE" frameborder="0" allowfullscreen></iframe>
        </div>
        <!-- Add more video containers as needed -->
    </div>
    
    <form action="Logout" method="get">
    	<input type="submit" placeholder="logout" value="logout" class="logout-btn">logout</input>
    </form>
</body>
</html>

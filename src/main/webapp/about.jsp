<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #000;
        color: #fff;
    }

    header {
        background-color: #000;
        color: #fff;
        padding: 10px;
        text-align: center;
    }

    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #000;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
    }

    .container h2 {
        color: #fff;
        text-align: center;
        margin-bottom: 20px;
    }

    .lorem-ipsum {
        line-height: 1.6;
    }

    .highlight {
        background-color: #333;
        padding: 5px 10px;
        border-radius: 3px;
    }

    .highlight-info {
        color: #1e90ff;
        font-weight: bold;
    }
</style>
</head>
<body>
    <header>
        <h1>About Us</h1>
    </header>
    <div class="container">
        <h2>Our Story</h2>
        <div class="lorem-ipsum">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu purus auctor, efficitur metus sed, posuere est. Phasellus auctor neque vitae sem faucibus, vel aliquet elit rhoncus. Proin congue orci ac nulla consectetur, a tincidunt sapien ultricies. In hac habitasse platea dictumst. Sed euismod ultricies leo, nec euismod odio luctus at. Integer interdum rutrum nisi non consequat. Vivamus nec lobortis purus. Ut sodales turpis vitae velit scelerisque suscipit. Donec auctor sit amet orci vel sagittis. Fusce et ligula vitae leo tempor commodo.</p>
            <p>Nullam auctor mi et orci ultricies, non varius magna consectetur. Integer nec urna sit amet justo consequat venenatis. Aliquam quis lobortis leo. In rutrum ante vel elit bibendum, sed bibendum ligula volutpat. Mauris consequat orci et scelerisque faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus eu velit at augue lobortis cursus in vel quam. Cras tempus mi vel ex ultrices tempus. Ut in ligula non eros consequat malesuada at vel sem. Nam id accumsan libero. Nulla facilisi. Phasellus vel placerat ex, at bibendum sem.</p>
        </div>
        <p class="highlight">For more information, contact us at <span class="highlight-info">info@example.com</span></p>
    </div>
</body>
</html>

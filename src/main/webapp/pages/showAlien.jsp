<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alien Details</title>
<style>
    body {
        font-family: 'Orbitron', sans-serif;
        background-color: #0b0c10; /* Dark space background */
        color: #c5f015; /* Neon green text */
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        padding: 20px;
        height: 100vh;
    }

    h1 {
        color: #39ff14;
        text-shadow: 0 0 10px #39ff14, 0 0 20px #39ff14;
        margin-bottom: 20px;
    }

    .alien-details {
        background-color: #1f2833;
        padding: 25px;
        border-radius: 15px;
        box-shadow: 0 0 20px #39ff14;
        width: 350px;
        text-align: center;
    }

    .alien-details p {
        font-size: 18px;
        margin: 12px 0;
        text-shadow: 0 0 5px #39ff14;
    }

    .alien-details span {
        font-weight: bold;
        color: #39ff14;
    }

    .back-button {
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #39ff14;
        color: #0b0c10;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        text-decoration: none;
        font-weight: bold;
        box-shadow: 0 0 15px #39ff14;
        transition: 0.3s;
    }

    .back-button:hover {
        box-shadow: 0 0 25px #39ff14;
        transform: scale(1.05);
    }
</style>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap" rel="stylesheet">
</head>
<body>

<h1>Alien Details</h1>

<div class="alien-details">
    <p>Hello <span>${alien.aname}</span> 👽</p>
    <p>ID: <span>${alien.id}</span></p>
    <p>Alien ID: <span>${alien.aid}</span></p>
    <p>Language: <span>${alien.lang}</span></p>
</div>

<a href="/" class="back-button">Back to Home</a>

</body>
</html>

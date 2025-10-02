<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
    String successMessage = request.getParameter("success");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alien Management</title>
<style>
    body {
        font-family: 'Orbitron', sans-serif;
        background-color: #0b0c10; /* Dark space */
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

    form {
        background-color: #1f2833;
        padding: 20px;
        margin-bottom: 30px;
        border-radius: 15px;
        box-shadow: 0 0 20px #39ff14;
        width: 320px;
    }

    label {
        display: block;
        margin-top: 10px;
        font-weight: bold;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border-radius: 5px;
        border: 1px solid #39ff14;
        background-color: #0b0c10;
        color: #c5f015;
    }

    input[type="submit"] {
        margin-top: 15px;
        padding: 10px 15px;
        background-color: #39ff14;
        color: #0b0c10;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
        text-transform: uppercase;
        box-shadow: 0 0 10px #39ff14;
    }

    input[type="submit"]:hover {
        box-shadow: 0 0 20px #39ff14;
        transform: scale(1.05);
    }

    /* Alien-themed notification */
    .notification {
        position: fixed;
        top: 20px;
        right: 20px;
        background-color: #39ff14;
        color: #0b0c10;
        padding: 15px 25px;
        border-radius: 10px;
        font-weight: bold;
        box-shadow: 0 0 25px #39ff14;
        display: flex;
        align-items: center;
        justify-content: space-between;
        min-width: 250px;
        z-index: 1000;
    }

    .notification .close-btn {
        cursor: pointer;
        font-weight: bold;
        margin-left: 15px;
        color: #0b0c10;
        background: transparent;
        border: none;
        font-size: 18px;
        line-height: 1;
    }

    .notification.hidden {
        display: none;
    }

</style>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap" rel="stylesheet">
</head>
<body>

<h1>Alien Management System</h1>

<% if (successMessage != null) { %>
    <div id="alienNotification" class="notification">
        Alien added successfully! 👽
        <button class="close-btn" onclick="closeNotification()">✖</button>
    </div>
<% } %>

<form action="addAlien" method="POST">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id" placeholder="Enter ID">

    <label for="aid">Alien ID:</label>
    <input type="text" id="aid" name="aid" placeholder="Enter Alien ID">

    <label for="aname">Alien Name:</label>
    <input type="text" id="aname" name="aname" placeholder="Enter Alien Name">

    <label for="lang">Alien Language:</label>
    <input type="text" id="lang" name="lang" placeholder="Enter Alien Language">

    <input type="submit" value="Add Alien">
</form>

<form action="getAlien" method="GET">
    <label for="getId">Search Alien by ID:</label>
    <input type="text" id="getId" name="id" placeholder="Enter ID">
    <input type="submit" value="Get Alien">
</form>

<script>
    const notification = document.getElementById('alienNotification');

    function closeNotification() {
        if(notification) {
            notification.classList.add('hidden');
        }
    }

    // Close notification on Escape key
    document.addEventListener('keydown', function(e) {
        if (e.key === "Escape") {
            closeNotification();
        }
    });
</script>

</body>
</html>

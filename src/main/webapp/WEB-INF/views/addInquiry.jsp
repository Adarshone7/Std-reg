<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
         background: linear-gradient(to right, #74ebd5, #acb6e5);
        margin: 0;
        padding: 0;
    }

    /* Main container to hold menu and content */
    .main-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
        height: 100vh;
        width: 100%;
    }

    /* Add Inquiry Form Container */
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 400px;
        text-align: center;
        margin-top: 60px; /* Space between menu and form */
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
    }

    .form-group {
        margin-bottom: 15px;
        text-align: left;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        color: #555;
    }

    .form-group input {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background-color: #063970;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #063970;
         transform: scale(1.05);
    }

    .msg {
        color: #d9534f;
        margin-bottom: 15px;
    }
</style>
</head>
<body>

<!-- Main Container -->
<div class="main-container">

    <!-- Include Menu Bar (Will be shown first) -->
    <div class="menu-container">
        <%@ include file="menu.jsp" %>
    </div>

    <!-- Add Inquiry Form -->
    <div class="container">
        <h2>Add Details Here</h2>
        
        <%
        if(request.getAttribute("msg") != null) {
            out.println("<p class='msg'>" + request.getAttribute("msg") + "</p>");
        }
        %>

        <form action="addInquiryController" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required/>
            </div>
            <div class="form-group">
                <label for="rollno">Roll Number</label>
                <input type="text" id="rollno" name="rollno" required/>
            </div>
            <div class="form-group">
                <label for="mobileno">Mobile Number</label>
                <input type="text" id="mobileno" name="mobileno" required/>
            </div>
            <div class="form-group">
                <label for="branch">Branch</label>
                <input type="text" id="branch" name="branch" required/>
            </div>
            <div class="form-group">
                <label for="year">Year</label>
                <input type="text" id="year" name="year" required/>
            </div>
            
            <input type="submit" value="Add"/>
        </form>
    </div>
</div>

</body>
</html>

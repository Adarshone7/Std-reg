<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Bar</title>
    <style>
        /* Reset default margin and padding */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #063970;
            padding: 15px 20px;
            width : 100%;
        }

        /* Logo Styling */
        .logo {
            font-size: 22px;
            color: white;
            font-weight: bold;
        }

        /* Navigation List */
        .nav-links {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        /* Navigation Items */
        .nav-links li {
            margin: 0 15px;
        }

        /* Navigation Links */
        .nav-links li a {
            text-decoration: none;
            color: white;
            font-size: 16px;
            padding: 10px 15px;
            transition: 0.3s;
            border-radius: 5px;
        }

        /* Hover Effect */
        .nav-links li a:hover {
            background-color: #575757;
        }

        /* Logout Button */
        .logout-btn {
            background-color: #d9534f;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .logout-btn:hover {
            background-color: #c9302c;
        }

        /* Responsive Navbar */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                align-items: center;
            }

            .nav-links {
                flex-direction: column;
                text-align: center;
            }

            .nav-links li {
                margin: 10px 0;
            }

            .logout-btn {
                margin-top: 10px;
            }
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <div class="logo"></div>
        <ul class="nav-links">
            <li><a href="addInquiryController">Add Inquiry</a></li>
            <li><a href="listInquiriesController">View Inquiries</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">About</a></li>
        </ul>
        <form action="logOut" method="post">
            <button type="submit" class="logout-btn">Log Out</button>
        </form>
    </nav>

</body>
</html>

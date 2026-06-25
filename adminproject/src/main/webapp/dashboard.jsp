<%
if(session.getAttribute("name") == null){
    response.sendRedirect("index.html");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/dash.css">
</head>
<body>

	<div class="sidebar">

    <img src="images/profile.jpg"
     alt="Profile"
     class="profile-pic">

    <h2>
        <%= session.getAttribute("name") %>
    </h2>

    <p>
        <%= session.getAttribute("email") %>
    </p>
	<a href="<%= request.getContextPath() %>/logout" class="logout-Btn">
	<i class="fa-solid fa-right-from-bracket"></i>Logout
	</a>
</div>
    <div class="header">
        <h1>Student Dashboard</h1>
    </div>
    <div>
        <button id="addStudentBtn" class="add-btn">
             <i class="fa-solid fa-plus"></i> Add Student
        </button>
    <div class="cards">
        <div class="card">
            <h3>Total Students</h3>
            <p>50</p>
        </div>
        <div class="card">
            <h3>Problem's Solved</h3>
            <p>260</p>
        </div>
        <div class="card">
            <h3>Top Student</h3>
            <p>Roshini</p>
        </div>
    </div>
    <div class="top3">
        <div class="winner first">
    <i class="fa-solid fa-medal"></i>Roshini
</div>

<div class="winner second">
    <i class="fa-solid fa-medal"></i>Lavanyaa
</div>

<div class="winner third">
    <i class="fa-solid fa-medal"></i>lalith
</div>
    </div>
    <div class="search-box">
    <span class="search-icon">
        <i class="fa-solid fa-magnifying-glass"></i>
    </span>
    <input type="text" id="searchinput" placeholder="Search Student">
</div>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Rank</th>
                    <th>Name</th>
                    <th>Batch</th>
                    <th>Easy</th>
                    <th>Medium</th>
                    <th>Hard</th>
                    <th>Present Days</th>
                    <th></th>
                    <th>Total Solved</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                     
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="modal" id="studentmodal">
        <div class="modal-content">
            <span class="close-btn" id="closeModal">
                &times;
            </span>
            <h2>Register  Student</h2>
            <input type="text" placeholder="Student Name">
            <input type="text" placeholder="E-mail">
            <input type="text" placeholder="Leetcode">
            <input type="text" placeholder="Batch">
            <input type="password" placeholder="Password">
            <button class="register-btn">
                Register
            </button>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="dash.js"></script>
</body>
</html>
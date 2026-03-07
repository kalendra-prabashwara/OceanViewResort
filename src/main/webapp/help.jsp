<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>System Help | Ocean View Resort</title>
    <link rel="stylesheet" type="text/css" href="css/global.css">
    <link rel="stylesheet" type="text/css" href="css/help.css">
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="navbar-container">
            <a class="navbar-brand" href="dashboard">Ocean View Resort</a>
            
            <button class="navbar-toggle" onclick="toggleMenu()">☰</button>
            
            <ul class="navbar-menu" id="navbarMenu">
                <li class="nav-item">
                    <a class="nav-link" href="dashboard"> Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="help.jsp"> Help</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link logout" href="login.jsp"> Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <header class="page-header">
        <h1>System Help Guide</h1>
    </header>

    <div class="container">
        <div class="help-content">
            
            <section class="help-section">
                <h3><span class="step-num">1</span> Login</h3>
                <p>Enter your username and password to access the system. Contact your administrator if you need login credentials.</p>
            </section>

            <section class="help-section">
                <h3><span class="step-num">2</span> Add Reservation</h3>
                <p>Fill in guest details including reservation number, guest name, contact number, room type, check-in and check-out dates.</p>
            </section>

            <section class="help-section">
                <h3><span class="step-num">3</span> Search Reservation</h3>
                <p>Enter the reservation number to view booking details.</p>
            </section>

            <section class="help-section">
                <h3><span class="step-num">4</span> Calculate Bill</h3>
                <p>Enter the reservation number to calculate the total stay cost.</p>
            </section>

            <section class="help-section">
                <h3><span class="step-num">5</span> Reservation Report</h3>
                <p>View all reservations stored in the system.</p>
            </section>

        </div>
    </div>

    <script>
        function toggleMenu() {
            document.getElementById('navbarMenu').classList.toggle('active');
        }
    </script>

</body>
</html>
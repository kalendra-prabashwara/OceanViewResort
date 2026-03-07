<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Ocean View Resort</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>

    <div class="login-container">
        
        <div class="login-header">
            <h1>Ocean View Resort</h1>
            <p>Staff Login</p>
        </div>

        <div class="login-card">
            
            <form action="login" method="post">
                
                <div class="form-group">
                    <label class="form-label">Username</label>
                    <input type="text" name="username" class="form-input" placeholder="Enter username" required>
                </div>

                <div class="form-group">
                    <label class="form-label">Password</label>
                    <input type="password" name="password" class="form-input" placeholder="Enter password" required>
                </div>

                <button type="submit" class="btn-login">Login</button>

            </form>

            <c:if test="${not empty error}">
                <p class="error-msg">${error}</p>
            </c:if>
            
            <% if(request.getAttribute("error") != null) { %>
                <p class="error-msg">${error}</p>
            <% } %>

        </div>

    </div>

</body>
</html>
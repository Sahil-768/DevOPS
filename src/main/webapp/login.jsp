<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login - DevOps Shop</title>

    <link rel="stylesheet" href="css/style.css">

</head>

<body class="login-body">


<div class="login-container">

    <div class="login-card">

        <div class="login-logo">
            DevOps<span>Shop</span>
        </div>

        <h1>Welcome Back</h1>

        <p class="login-subtitle">
            Sign in to continue shopping
        </p>


        <form action="login" method="post">

            <div class="input-group">

                <label for="username">
                    Username
                </label>

                <input
                        type="text"
                        id="username"
                        name="username"
                        placeholder="Enter username"
                        required>

            </div>


            <div class="input-group">

                <label for="password">
                    Password
                </label>

                <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Enter password"
                        required>

            </div>


            <button
                    type="submit"
                    id="loginButton"
                    class="login-btn">

                Sign In

            </button>

        </form>



        <a href="index.jsp" class="back-home">
            <-- Back to Home
        </a>

    </div>

</div>


</body>

</html>
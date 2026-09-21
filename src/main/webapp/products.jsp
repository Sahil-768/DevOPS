<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    HttpSession currentSession = request.getSession(false);

    if (currentSession == null ||
        currentSession.getAttribute("username") == null) {

        response.sendRedirect("login.jsp");
        return;
    }

    String username =
            (String) currentSession.getAttribute("username");
%>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Products - DevOps Shop</title>

    <link rel="stylesheet" href="css/style.css">

</head>

<body>


<nav class="navbar">

    <div class="logo">
        DevOps<span>Shop</span>
    </div>

    <div class="nav-links">

        <a href="index.jsp">
            Home
        </a>

        <a href="logout.jsp" class="logout-link">
            Logout
        </a>

    </div>

</nav>


<section class="products-section">

    <div class="products-header">

        <p class="tag">
            DEVOPSSHOP STORE
        </p>

        <h1>
            Welcome,<span><%= username%></span>
        </h1>

        <p>
            Choose something you like from our collection.
        </p>

    </div>


    <div class="product-grid">


        <!-- Laptop -->

        <div class="product-card">

            <div class="product-image laptop">
                <img src="https://images.unsplash.com/photo-1541807084-5c52b6b3adef?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="https://plus.unsplash.com/premium_photo-1670963025020-c6b206fbafc7?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D">
            </div>

            <div class="product-info">

                <h2>Laptop</h2>

                <p>
                    Powerful laptop suitable for coding,
                    development and everyday work.
                </p>

                <div class="product-bottom">

                    <span class="price">
                        Rs 60,000
                    </span>

                    <button>
                        Buy Now
                    </button>

                </div>

            </div>

        </div>


        <!-- Mobile -->

        <div class="product-card">

            <div class="product-image mobile">
            <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="https://images.unsplash.com/photo-1569144157596-10825eecdde2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D">


            </div>

            <div class="product-info">

                <h2>Mobile</h2>

                <p>
                    Modern smartphone with excellent
                    performance and battery life.
                </p>

                <div class="product-bottom">

                    <span class="price">
                        Rs 25,000
                    </span>

                    <button>
                        Buy Now
                    </button>

                </div>

            </div>

        </div>


        <!-- Headphones -->

        <div class="product-card">

            <div class="product-image headphones">
                <img src="https://images.unsplash.com/photo-1545127398-14699f92334b?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aGVhZHBob25lfGVufDB8fDB8fHww" alt="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhZHBob25lfGVufDB8fDB8fHww">

            </div>

            <div class="product-info">

                <h2>Headphones</h2>

                <p>
                    Enjoy immersive sound with comfortable
                    wireless headphones.
                </p>

                <div class="product-bottom">

                    <span class="price">
                        Rs 3,000
                    </span>

                    <button>
                        Buy Now
                    </button>

                </div>

            </div>

        </div>


    </div>

</section>


<footer>

    <p>
        C 2026 DevOps Shop | Welcome <%= username %>
    </p>

</footer>


</body>

</html>
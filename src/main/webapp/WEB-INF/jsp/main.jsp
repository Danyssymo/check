<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Camping Gear Website | CodingNepal</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <style>
        .homepage {
            height: 100vh;
            width: 100%;
            position: relative;
            background: url("home-bg.jpg") center 65%;
            background-size: cover;
        }
    </style>
</head>
<body>
<header>
    <nav class="navbar">
        <c:if test ="${sessionScope.user.role eq 'USER'}">
            <h2 class="logo"><a href="#">USER</a></h2>
        </c:if>
        <c:if test ="${sessionScope.user.role eq 'ADMIN'}">
            <h2 class="logo"><a href="#">ADMIN</a></h2>
        </c:if>
        <input type="checkbox" id="menu-toggler">
        <label for="menu-toggler" id="hamburger-btn">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="24px" height="24px">
                <path d="M0 0h24v24H0z" fill="none"/>
                <path d="M3 18h18v-2H3v2zm0-5h18V11H3v2zm0-7v2h18V6H3z"/>
            </svg>
        </label>
        <ul class="all-links">
            <li><a href="#home">Home</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#portfolio">News</a></li>
            <li><a href="#about">About Us</a></li>
            <li><a href="#contact">Contact Us</a></li>
        </ul>
        <a href="MyController?command=do_logout" class="all-links logout">Logout</a>
    </nav>
</header>

<section class="homepage" id="home">
    <div class="content">
        <div class="text">
            <h1>Welcome <c:out value="${sessionScope.user.username }"/></h1>
            <p>
                I'm glad to see you on my page. I hope you will find it interesting and comfortable here</p>
        </div>
        <a href="#services">Our Services</a>
    </div>
</section>

<section class="services" id="services">
    <h2>Our Services</h2>
    <p>Explore our wide range of camping gear services.</p>
    <ul class="cards">
        <li class="card">
            <img src="images/tents.jpg" alt="img">
            <h3>Tents</h3>
            <p>Experience comfort and protection with our high-quality camping tents.</p>
        </li>
        <li class="card">
            <img src="images/bags.jpg" alt="img">
            <h3>Sleeping Bags</h3>
            <p>Stay cozy and warm during your camping trips with our premium sleeping bags.</p>
        </li>
        <li class="card">
            <img src="images/stoves.jpg" alt="img">
            <h3>Camp Stoves</h3>
            <p>Cook delicious meals in the great outdoors with our reliable camp stoves.</p>
        </li>
        <li class="card">
            <img src="images/backpacks.jpg" alt="img">
            <h3>Backpacks</h3>
            <p>Carry your essentials comfortably with our durable and functional camping backpacks.</p>
        </li>
        <li class="card">
            <img src="images/chair.jpg" alt="img">
            <h3>Camp Chairs</h3>
            <p>Relax and unwind in style with our comfortable and portable camping chairs.</p>
        </li>
        <li class="card">
            <img src="images/light.jpg" alt="img">
            <h3>Camp Lights</h3>
            <p>Illuminate your campsite with our reliable and energy-efficient camping lights.</p>
        </li>
    </ul>
</section>

<section class="portfolio" id="portfolio">
    <h2>Our News</h2>
    <p>Take a look at some of our memorable camping adventures.</p>
    <ul class="cards">
<%--                <li class="card">--%>
<%--                  <img src="images/camping-4.jpg" alt="img">--%>
<%--                  <h3>Forest Exploration</h3>--%>
<%--                  <p>Discover the wonders of lush forests and immerse yourself in nature's beauty.</p>--%>
<%--                </li>--%>
        <c:forEach var="news" items="${requestScope.myNews}">
            <li class="card">
                <img src="${news.imgPath}" alt="img">
                <h3>${news.title}</h3>
                <p>${news.content}</p>
            </li>
        </c:forEach>
    </ul>
</section>

<section class="about" id="about">
    <h2>About Us</h2>
    <p>Discover our story in providing camping services.</p>
    <div class="row company-info">
        <h3>Our Story</h3>
        <p>Experience the excellence of our camping gear and services, where we have been offering high-quality camping
            essentials and gear for outdoor enthusiasts for over a decade. Our commitment to quality and customer
            satisfaction ensures that every adventurer can rely on us for their camping needs.</p>
    </div>
    <div class="row mission-vision">
        <h3>Our Mission</h3>
        <p>At Camping Gear Experts, our mission is to equip outdoor enthusiasts with top-notch camping gear and
            essentials that enhance their outdoor experiences. We strive to provide reliable, durable, and innovative
            products that contribute to memorable adventures and lasting memories.</p>
        <h3>Our Vision</h3>
        <p>Our vision is to become the go-to destination for camping enthusiasts, known for our extensive selection of
            premium camping gear and exceptional customer service. We aspire to inspire and enable people to embrace the
            beauty of nature and create unforgettable camping experiences.</p>
    </div>
    <div class="row team">
        <h3>Our Team</h3>
        <ul>
            <li>John Doe - Founder and CEO</li>
            <li>Jane Smith - Gear Specialist</li>
            <li>Mark Johnson - Customer Representative</li>
            <li>Sarah Brown - Operations Manager</li>
        </ul>
    </div>
</section>

<section class="contact" id="contact">
    <h2>Contact Us</h2>
    <p>Reach out to us for any inquiries or feedback.</p>
    <div class="row">
        <div class="col information">
            <div class="contact-details">
                <p><i class="fas fa-map-marker-alt"></i> 123 Campsite Avenue, Wilderness, CA 98765</p>
                <p><i class="fas fa-envelope"></i> info@campinggearexperts.com</p>
                <p><i class="fas fa-phone"></i> (123) 456-7890</p>
                <p><i class="fas fa-clock"></i> Monday - Friday: 9:00 AM - 5:00 PM</p>
                <p><i class="fas fa-clock"></i> Saturday: 10:00 AM - 3:00 PM</p>
                <p><i class="fas fa-clock"></i> Sunday: Closed</p>
                <p><i class="fas fa-globe"></i> www.codingenpalweb.com</p>
            </div>
        </div>
        <div class="col form">
            <form>
                <input type="text" placeholder="Name*" required>
                <input type="email" placeholder="Email*" required>
                <textarea placeholder="Message*" required></textarea>
                <button id="submit" type="submit">Send Message</button>
            </form>
        </div>
    </div>
</section>

<footer>
    <div>
        <span>Copyright © 2023 All Rights Reserved</span>
        <span class="link">
            <a href="#">Home</a>
            <a href="#contact">Contact</a>
        </span>
    </div>
</footer>

</body>
</html>

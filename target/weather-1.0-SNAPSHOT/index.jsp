<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Weather Information System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            text-align: center;
            margin: 0;
            padding: 20px;
        }
        .weather-card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            width: 300px;
            margin: 50px auto;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
        }
        h1 {
            color: #2c3e50;
        }
        button {
            background: #3498db;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background: #2980b9;
        }
        img.weather-icon {
            width: 100px;
            height: 100px;
            margin: 10px 0;
        }
    </style>
</head>
<body>

<div class="weather-card">
    <h1>Weather Information</h1>

    <!-- Weather Search Form -->
    <form action="weather" method="get">
        <label for="city">Choose a city:</label>
        <select name="city" id="city">
            <option value="New York">New York</option>
            <option value="London">London</option>
            <option value="Tokyo">Tokyo</option>
            <option value="Paris">Paris</option>
            <option value="Sydney">Sydney</option>
            <option value="Berlin">Berlin</option>
            <option value="Hamburg">Hamburg</option>
            <option value="Istanbul">Istanbul</option>
        </select>
        <br><br>
        <button type="submit">Check Weather</button>
    </form>

    <hr>

    <!-- Display Results -->
    <p><b>Location:</b> ${location}</p>
    <p><b>Temperature:</b> ${temperature}</p>
    <p><b>Condition:</b> ${condition}</p>

    <!-- Weather Icon -->
    <c:if test="${not empty icon}">
        <img class="weather-icon" src="${icon}" alt="${condition}">
    </c:if>
</div>

</body>
</html>

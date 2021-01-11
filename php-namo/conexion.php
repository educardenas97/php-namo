 <?php
    $servername = "fdb28.awardspace.net";
    $username = "3699855_todo";
    $password = "DatP/5q/5Z0pb/yZ";
    $dbname = "3699855_todo";
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
?> 
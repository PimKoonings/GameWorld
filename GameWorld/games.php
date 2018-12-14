
<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "gameworld";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

if (isset($_GET['categoryid']))
{
    $categoryid = $_GET['categoryid'];

}

if(isset($_GET['categoryid']))
{
    $sql = "SELECT * FROM games WHERE categoryid  = '$categoryid' ";
}else
{
    $sql = "SELECT * FROM games";
}

$result = $conn->query($sql);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Games</title>
</head>
<body>
    <?php include('header.php'); 

    if(isset($_GET['categoryid'])) {

                
        if($categoryid == 1)
        {
            echo "<h1 class='ps4Title'> ps4 </h1>";
        }

        if($categoryid == 2)
        {
            echo "<h1 class='pcTitle'> pc </h1>";
        }

        if($categoryid == 3)
        {
            echo "<h1 class='xboxTitle'> xbox </h1>";
        }


    }else {
        echo "<h1 class='allgamesTitle'> All games </h1>";
    }

    
    ?>


    <?php
    if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {



    ?>

        <div class=product-item>
            <img class = "product-image" src="../GameWorld/images/<?php echo $row['gameImage']; ?>">
            <p class="img__description"><?php echo $row['gameDescription']; ?></p>
            <div class="product-title"><?php echo $row['gameTitle']; ?></div>
            <div class="product-price">€<?php echo $row['gamePrice']; ?></div>
            <div class="product-order"><a>Buy</a></div>
        </div>


    <?php
        
    }
    } else {
        echo "0 results";
    }
    $conn->close();

    ?> 
    
    <footer id="footer">
            Roc Ter AA
        </footer>
</body>
</html>


















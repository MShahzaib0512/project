<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
// Rest of your PHP code
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Food Search Results</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="icon" href="/path-to-your-favicon.ico" type="image/x-icon">
</head>
<body>
    <div class="container mt-4">
        <h1 class="mb-4">Food Search Results</h1>

<div class="row">
            <?php
            // Include your database connection script here
            include("db_conection.php");

            $search = isset($_POST['search']) ? $conn->real_escape_string($_POST['search']) : '';
            $foodTables = array("chinese_food", "french_food", "italian_food", "japanese_food", "korean_food", "traditional_food");

            $resultsFound = false;

            foreach ($foodTables as $foodTable) {
                $query = "SELECT name, price, image FROM $foodTable WHERE name LIKE '%$search%' OR price LIKE '%$search%' OR image LIKE '%$search%'";
                $result = $conn->query($query);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
            ?>
            <div class="col-md-3">
                <div class="card" style="width: 18rem;">
                  <img class="card-img-top" style="height: 200px;" src="images/<?php echo $row["image"]; ?>" alt="Image">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $row["name"]; ?></h5>
                        <p class="card-text"><?php echo $row["price"]; ?></p>
                        <!-- Add logic for Order Now button link -->
                        <a href="order_now.php" class="btn btn-primary">Order Now</a>
                    </div>
                </div>
            </div>
            <?php
                        $resultsFound = true;
                    }
                }
            }

            if (!$resultsFound) {
                echo "<p>No results found.</p>";
            }

            // Close the database connection
            $conn->close();
            ?>
        </div>
    </div>

</body>
</html>

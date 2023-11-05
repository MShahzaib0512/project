<?php
// Include the database connection file (db_conection.php)
include("db_conection.php");

// Check if the form is submitted
if(isset($_POST['submit'])) {
    // Retrieve data from the form
    print_r($_POST);
    $name = $_POST['name'];
    $price = $_POST['price'];
 // Handle image upload
    if(isset($_FILES['image']['name'])) {
    $image = $_FILES['image']['name'];
    $tempname = $_FILES['image']['tmp_name'];
    $folder = "images/";
    $target_file = $folder . basename($_FILES['image']['name']);

    // Rest of your code for handling image upload and database insertion
}

    // Insert data into the database
    $insert_query = "INSERT INTO italian_food (name, price, image) VALUES ('$name', '$price', '$image')";

    if ($conn->query($insert_query) === TRUE) {
         if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file) && $conn->query($insert_query) === TRUE) {
        echo "New record created successfully";
    }
    } else {
        echo "Error: " . $insert_query . "<br>" . $conn->error;
    }

    // Close the database connection
    $conn->close();
}
?>

<!DOCTYPE html>
<html>
<title>Insert Italian Food Record</title>
<head>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        form {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            width: 400px;
            margin: 0 auto;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        textarea,
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    </head>

<body>
    <h2>Insert Italian Food Record</h2>
    <form action="" method="post" enctype="multipart/form-data">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="price">Price:</label>
        <input type="text" id="price" name="price" required>

        <label for="image">Image URL:</label>
        <input type="file" id="image" name="image" required>

        <input type="submit" name="submit" value="Submit">
    </form>
</body>
</html>

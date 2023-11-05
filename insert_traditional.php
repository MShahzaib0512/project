<?php
// Include the database connection file (db_conection.php)
include("db_conection.php");

// Check if the form is submitted
if(isset($_POST['submit'])) {
    // Retrieve data from the form
    $name = $_POST['name'];
    $price = $_POST['price'];
// Handle image upload
    if(isset($_FILES['image']['name'])) {
    $image = $_FILES['image']['name'];
    $tempname = $_FILES['image']['tmp_name'];
    $folder = "images/";
    $target_file = $folder . basename($_FILES['image']['name']);

    // Check file type
    $allowed_types = array("image/jpeg", "image/png", "image/gif");
    if (in_array($_FILES["image"]["type"], $allowed_types)) {
        // Check if file upload is successful
        if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
            // Use prepared statements to prevent SQL injection
            $insert_query = $conn->prepare("INSERT INTO traditional_food (name, price, image) VALUES (?, ?, ?)");
            $insert_query->bind_param("sss", $name, $price, $image);

            // Execute the prepared statement
            if ($insert_query->execute()) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $insert_query->error;
            }

            // Close the prepared statement
            $insert_query->close();
        } else {
            echo "Error uploading file.";
        }
    } else {
        echo "Invalid file type. Only JPEG, PNG, and GIF files are allowed.";
    }
}

    // Close the database connection
    $conn->close();
}
?>

<!DOCTYPE html>
<html>
<title>Insert Traditional Food Record</title>
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
    <h2>Insert Traditional Food Record</h2>
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
